/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FORCEINTIMIDATE1COMMAND_H_
#define FORCEINTIMIDATE1COMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "ForcePowersQueueCommand.h"
#include "server/zone/objects/creature/events/ForceIntimidateTask.h"

class ForceIntimidate1Command : public ForcePowersQueueCommand {

protected:
	String skillName = "forceintimidate1";		// Skill Name
	String skillNameDisplay = "Force Intimidate";		// Skill Display Name for output message
	int delay = 36; 								//  30 second cool down timer after root expires

public:

	ForceIntimidate1Command(const String& name, ZoneProcessServer* server)
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

		CreatureObject *tarCreo = targetObject->asCreatureObject();

		ManagedReference<SceneObject*> object = server->getZoneServer()->getObject(target);
		CreatureObject* targetCreature = dynamic_cast<CreatureObject*>(object.get());

		Locker clocker(targetCreature, creature);

		ManagedReference<PlayerObject*> player = creature->getPlayerObject();
		PlayerObject* targetPlayerObject = targetCreature->getPlayerObject();

		int res = doCombatAction(creature, target);

		if(res == SUCCESS) {
			CreatureAttackData data = CreatureAttackData("", this, target);
			Reference<SortedVector<ManagedReference<TangibleObject*> >* > targets = CombatManager::instance()->getAreaTargets(creature, creature->getWeapon(), tarCreo, data);
			if(targets->size() != 0) {
				ForceIntimidateTask *task = new ForceIntimidateTask(tarCreo, targets, this);
				task->schedule(100);
			}

			if (!creature->checkCooldownRecovery(skillName)){
														const Time* timeRemaining = creature->getCooldownTime(skillName);
														creature->playMusicMessage("sound/ui_negative.snd");
														creature->sendSystemMessage("Your target can not be snared with " + skillNameDisplay + " for another " +  getCooldownString(timeRemaining->miliDifference() * -1));
										}

										else if (targetCreature != nullptr) {
											Locker clocker(targetCreature, creature);

											ManagedReference<Buff*> buff = new Buff(targetCreature, getNameCRC(), 6, BuffType::OTHER);

											Locker locker(buff);
											if (targetCreature->hasBuff(STRING_HASHCODE("burstrun")) || targetCreature->hasBuff(STRING_HASHCODE("retreat")) || targetCreature->hasBuff(BuffCRC::JEDI_FORCE_RUN_1) || targetCreature->hasBuff(BuffCRC::JEDI_FORCE_RUN_2) || targetCreature->hasBuff(BuffCRC::JEDI_FORCE_RUN_3)) {
												targetCreature->removeBuff(STRING_HASHCODE("burstrun"));
												targetCreature->removeBuff(STRING_HASHCODE("retreat"));
												targetCreature->removeBuff(BuffCRC::JEDI_FORCE_RUN_1);
												targetCreature->removeBuff(BuffCRC::JEDI_FORCE_RUN_2);
												targetCreature->removeBuff(BuffCRC::JEDI_FORCE_RUN_3);
											}

											buff->setSpeedMultiplierMod(0.30f);
											buff->setAccelerationMultiplierMod(0.30f);
											targetCreature->setSnaredState(12);
											targetCreature->playEffect("clienteffect/commando_position_secured.cef", "");
											StringBuffer targetRootMessage;

											targetRootMessage << "You have been snared!";
											targetCreature->sendSystemMessage(targetRootMessage.toString());

											targetCreature->addBuff(buff);
											creature->updateCooldownTimer(skillName, delay * 1000);

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

#endif //FORCEINTIMIDATE1COMMAND_H_
