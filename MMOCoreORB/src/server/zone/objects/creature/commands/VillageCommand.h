/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef VILLAGECOMMAND_H_
#define VILLAGECOMMAND_H_

#include "server/zone/managers/director/DirectorManager.h"
#include "server/zone/managers/jedi/JediManager.h"

class VillageCommand : public QueueCommand {
public:

	VillageCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature)) {
			return INVALIDSTATE;
		}

		if (!checkInvalidLocomotions(creature)) {
			return INVALIDLOCOMOTION;
		}

		if (JediManager::instance()->getJediProgressionType() != JediManager::VILLAGEJEDIPROGRESSION) {
			return GENERALERROR;
		}

		if (!creature->checkCooldownRecovery("villageCommand")) {
			const Time* cooldownTime = creature->getCooldownTime("villageCommand");
			if (cooldownTime != nullptr) {
				float timeLeft = round(fabs(cooldownTime->miliDifference() / 1000.f));
				creature->sendSystemMessage("You can use the village command again in " + String::valueOf(timeLeft) + " second" + ((timeLeft == 1.0f) ? "." : "s."));
				return GENERALERROR;
			}
			else {
				creature->sendSystemMessage("You can only use the village command once every 10 seconds.");
				return GENERALERROR;
			}
		}

		Lua* lua = DirectorManager::instance()->getLuaInstance();

		Reference<LuaFunction*> luaVillageCmd = lua->createFunction("VillageSui", "showMainPage", 0);
		*luaVillageCmd << creature;

		luaVillageCmd->callFunction();

		return SUCCESS;
	}
};

#endif //VILLAGECOMMAND_H_