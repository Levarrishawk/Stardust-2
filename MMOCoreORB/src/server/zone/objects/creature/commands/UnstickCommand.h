/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef UNSTICKCOMMAND_H_
#define UNSTICKCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"

class UnstickCommand : public QueueCommand {
public:

	UnstickCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		CreatureObject* player = cast<CreatureObject*>(creature);
		Zone* zone = player->getZone();

		if(zone == NULL){
			return GENERALERROR;
		}

		if (!player->checkCooldownRecovery("used_unstick")) {
			player->sendSystemMessage("You need to wait before using that command again.");
			return 0;
		}

		player->initializePosition(player->getPositionX() + 10, player->getPositionZ() + 10, player->getPositionY() + 10);

		zone->transferObject(player, 1, true);

		player->setPosture(CreaturePosture::UPRIGHT);
		player->addCooldown("used_unstick", 600000);
		player->sendSystemMessage("You have been teleported to a safe spot. Do not move while the server recalibrates your position.");

	return SUCCESS;
	}
};

#endif //UNSTICKCOMMAND_H_
