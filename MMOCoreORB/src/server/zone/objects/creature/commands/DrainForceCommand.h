/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef DRAINFORCECOMMAND_H_
#define DRAINFORCECOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "ForcePowersQueueCommand.h"
#include "CombatQueueCommand.h"

class DrainForceCommand : public CombatQueueCommand {

protected:
	String skillName = "drainforce";		// Skill Name
	String skillNameDisplay = "Drain Force";		// Skill Display Name for output message
	int cooldown = 12;

public:

	DrainForceCommand(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (creature->hasAttackDelay() || !creature->checkPostureChangeDelay())
			return GENERALERROR;

		if (isWearingArmor(creature)) {
			return NOJEDIARMOR;
		}

		// Fail if target is not a player...

		ManagedReference<SceneObject*> object = server->getZoneServer()->getObject(target);

		if (object == nullptr || !object->isPlayerCreature())
			return INVALIDTARGET;

		CreatureObject* targetCreature = cast<CreatureObject*>( object.get());

		if (targetCreature == nullptr || targetCreature->isDead() || (targetCreature->isIncapacitated() && !targetCreature->isFeigningDeath()) || !targetCreature->isAttackableBy(creature))
			return INVALIDTARGET;

		if(!checkDistance(creature, targetCreature, range))
			return TOOFAR;

		if (!CollisionManager::checkLineOfSight(creature, targetCreature)) {
			creature->sendSystemMessage("@combat_effects:cansee_fail");//You cannot see your target.
			return GENERALERROR;
		}

		Locker clocker(targetCreature, creature);

		ManagedReference<PlayerObject*> targetGhost = targetCreature->getPlayerObject();
		ManagedReference<PlayerObject*> playerGhost = creature->getPlayerObject();

		if (targetGhost == nullptr || playerGhost == nullptr)
			return GENERALERROR;

		if (!creature->checkCooldownRecovery(skillName)){
				const Time* timeRemaining = creature->getCooldownTime(skillName);
				creature->playMusicMessage("sound/ui_negative.snd");
				creature->sendSystemMessage("You can not " + skillNameDisplay + " for another " +  getCooldownString(timeRemaining->miliDifference() * -1));
				return GENERALERROR;
		}

		CombatManager* manager = CombatManager::instance();

		int res = doCombatAction(creature, target);

		if (res == SUCCESS){

				if (manager->startCombat(creature, targetCreature, false)) { //lockDefender = false because already locked above.
				int forceSpace = playerGhost->getForcePowerMax() - playerGhost->getForcePower();
				if (forceSpace <= 0) //Cannot Force Drain if attacker can't hold any more Force.
					return GENERALERROR;

				//int maxDrain = minDamage; //Value set in command lua.

				if (playerGhost->getForcePower() < forceCost){
						creature->sendSystemMessage("@jedi_spam:no_force_power");
						return GENERALERROR;
				}

				int drain = System::random(maxDamage);

				if (drain < 100){
					drain = 100;
				}


				int targetForce = targetGhost->getForcePower();
				if (targetForce <= 0) {
					creature->sendSystemMessage("@jedi_spam:target_no_force"); //That target does not have any Force Power.
					return GENERALERROR;
				}

				int forceDrain = targetForce >= drain ? drain : targetForce; //Drain whatever Force the target has, up to max.
				if (forceDrain > forceSpace)
					forceDrain = forceSpace; //Drain only what attacker can hold in their own Force pool.

				playerGhost->setForcePower(playerGhost->getForcePower() + (forceDrain - forceCost));
				targetGhost->setForcePower(targetGhost->getForcePower() - forceDrain);

				uint32 animCRC = getAnimationString().hashCode();
				creature->doCombatAnimation(targetCreature, animCRC, 0x1, 0xFF);
				manager->broadcastCombatSpam(creature, targetCreature, NULL, forceDrain, "cbt_spam", combatSpam, 1);

				VisibilityManager::instance()->increaseVisibility(creature, visMod);

				creature->updateCooldownTimer(skillName, cooldown * 1000);

				return res;
			}
		}
		return GENERALERROR;

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

	float getCommandDuration(CreatureObject* object, const UnicodeString& arguments) const {
		return defaultTime * 1.5;
	}

};

#endif //DRAINFORCECOMMAND_H_
