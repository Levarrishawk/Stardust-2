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

		if (creature != nullptr)
			creature->error("used /unstick " + arguments.toString());

		CreatureObject* player = cast<CreatureObject*>(creature);

		if (!player->checkCooldownRecovery("used_unstick")) {
			player->sendSystemMessage("Please wait before using that command again.");
			return 0;
		} else {

		player->addCooldown("used_unstick", 600000);
		return SUCCESS;
		}
		
	}

};

#endif //UNSTICKCOMMAND_H_

		/*
string/en/cmd_err.stf	7	unstick_in_progress	Unstick in progress
string/en/cmd_err.stf	8	unstick_request_complete	Unstick complete
string/en/cmd_err.stf	9	unstick_request_cancelled	Unstick request was cancelled
		 */
