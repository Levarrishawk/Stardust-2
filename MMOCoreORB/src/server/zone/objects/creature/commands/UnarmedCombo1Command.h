/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef UNARMEDCOMBO1COMMAND_H_
#define UNARMEDCOMBO1COMMAND_H_

#include "CombatQueueCommand.h"

class UnarmedCombo1Command : public CombatQueueCommand {
public:

	UnarmedCombo1Command(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		return doCombatAction(creature, target);
	}

};

#endif //UNARMEDCOMBO1COMMAND_H_
