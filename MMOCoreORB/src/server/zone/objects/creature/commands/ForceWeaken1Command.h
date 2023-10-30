/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FORCEWEAKEN1COMMAND_H_
#define FORCEWEAKEN1COMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "ForcePowersQueueCommand.h"

class ForceWeaken1Command : public ForcePowersQueueCommand {
protected:
	String skillName = "forceweaken1";
	int delay = 60;	
public:

	ForceWeaken1Command(const String& name, ZoneProcessServer* server)
		: ForcePowersQueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (isWearingArmor(creature)) {
			return NOJEDIARMOR;
		}

		ManagedReference<SceneObject*> targetObject = server->getZoneServer()->getObject(target);

		if (targetObject == nullptr || !targetObject->isCreatureObject()) {
			return INVALIDTARGET;
		}

		ManagedReference<CreatureObject*> creatureTarget = targetObject.castTo<CreatureObject*>();
		
		if (creatureTarget == nullptr){
			return INVALIDTARGET;
		}
		
		if (creatureTarget->hasBuff(BuffCRC::JEDI_FORCEWEAKEN2)) {
			creature->sendSystemMessage("Target has already been weakened by a more powerful force.");
			return GENERALERROR;
		}
		
		if (!creature->checkCooldownRecovery(skillName)){
					const Time* timeRemaining = creature->getCooldownTime(skillName);
					creature->sendSystemMessage("You must wait " + getCooldownString(timeRemaining->miliDifference() * -1) + " before attempting to weaken your target again.");
					return GENERALERROR;
					}

		int res = doCombatAction(creature, target);
		
		
		if (res == SUCCESS) {
			
				if (creatureTarget != nullptr) {
				Locker clocker(creatureTarget, creature);
				
				ManagedReference<Buff*> buff = nullptr;

				if (creature->isPlayerCreature())
					buff = new Buff(creatureTarget, BuffCRC::JEDI_FORCEWEAKEN1, 30, BuffType::JEDI);
				else
					buff = new Buff(creatureTarget, BuffCRC::JEDI_FORCEWEAKEN1, 15, BuffType::JEDI);


				if (buff == nullptr)
					return GENERALERROR;
								
				Locker locker(buff);
				int hamStrength =  -1 * creatureTarget->getMaxHAM(CreatureAttribute::HEALTH) * .1;
				buff->setAttributeModifier(CreatureAttribute::HEALTH, hamStrength);
				hamStrength =  -1 * creatureTarget->getMaxHAM(CreatureAttribute::ACTION) * .1;
				buff->setAttributeModifier(CreatureAttribute::ACTION, hamStrength);

				buff->setSkillModifier("weaken_delay", 5);

				creatureTarget->addBuff(buff);
				creature->updateCooldownTimer(skillName, delay * 1000);

				CombatManager::instance()->broadcastCombatSpam(creature, creatureTarget, NULL, 0, "cbt_spam", combatSpam + "_hit", 1);
				
			}

		}

		return res;
	}

		String getCooldownString(uint32 delta) const {

								int seconds = delta / 1000;

								int hours = seconds / 3600;
								seconds -= hours * 3600;

								int minutes = seconds / 60;
								seconds -= minutes * 60;

								StringBuffer buffer;

								if (hours > 0)
									buffer << hours << "h ";

								if (minutes > 0)
									buffer << minutes << "m ";

								if (seconds > 0)
									buffer << seconds << "s";

								return buffer.toString();
							}
};

#endif //FORCEWEAKEN1COMMAND_H_
