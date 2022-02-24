/*

 Author: Skyyyr
 Date: 24JAN2016
 
 */


#ifndef setNormalTask_H_
#define setNormalTask_H_

#include "engine/engine.h"
#include "server/zone/managers/objectcontroller/ObjectController.h"
#include "server/zone/packets/chat/ChatSystemMessage.h"
#include "server/chat/StringIdChatParameter.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "templates/params/creature/CreatureAttribute.h"

class setNormalTask: public Task {
	ManagedReference<CreatureObject*> player;
	String moodString;

public:
	setNormalTask(CreatureObject* pl) {
		player = pl;
	}

	void setMoodString(const String& ms) {
		moodString = ms;
	}

	String getMoodString() {
		return moodString;
	}

	void run() {
		Locker playerLocker(player);

		try {
			Reference<setNormalTask*> snormalTask = player->getPendingTask("resetspeed").castTo<setNormalTask*>();

			player->setSpeedMultiplierBase(1.0f, true);
			player->playEffect("clienteffect/commando_position_secured.cef", "");
			//player->removeStateBuff(CreatureState::IMMOBILIZED);

		} catch (Exception& e) {
			player->error("unreported exception caught in ForceRunTask::activate");
		}
	}

};

#endif /* setNormalTask_H_ */
