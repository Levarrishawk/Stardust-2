/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef BUFFATTRIBUTE_H_
#define BUFFATTRIBUTE_H_

#include "engine/engine.h"

class BuffAttribute {
public:
	enum {
		HEALTH,
		STRENGTH,
		CONSTITUTION,
		ACTION,
		QUICKNESS,
		STAMINA,
		MIND,
		FOCUS,
		WILLPOWER,
		POISON,
		DISEASE,
		UNKNOWN
	};

	//TODO: This entire class needs to be removed. Posion and Disease are not attributes.
	//THEY ARE SKILLMODS
	static const uint8 ARRAYSIZE = 11;

	static bool isHAM(uint8 attribute) {
		return (attribute == HEALTH || attribute == ACTION || attribute == MIND);
	}

	static bool isProtection(uint8 attribute) {
		return (attribute == POISON || attribute == DISEASE);
	}

	static String getProtectionString(uint8 attribute) {
		String name = "";

		switch(attribute) {
		case POISON:
			name = "resistance_poison";
			break;
		case DISEASE:
			name = "resistance_disease";
			break;
		default:
			name = "unknown";
			break;
		}

		return name;
	}

	static String getAbsorptionString(uint8 attribute) {
		String name = "";

		switch(attribute) {
		case POISON:
			name = "absorption_poison";
			break;
		case DISEASE:
			name = "absorption_disease";
			break;
		default:
			name = "unknown";
			break;
		}

		return name;
	}

	static uint8 getAttribute(String attribute) {
		attribute = attribute.toLowerCase();

		if (attribute == "health")
			return HEALTH;
		else if (attribute == "action")
			return ACTION;
		else if (attribute == "mind")
			return ACTION;
		else if (attribute == "strength")
			return HEALTH;
		else if (attribute == "constitution")
			return HEALTH;
		else if (attribute == "quickness")
			return ACTION;
		else if (attribute == "stamina")
			return ACTION;
		else if (attribute == "focus")
			return ACTION;
		else if (attribute == "willpower")
			return ACTION;
		else if (attribute == "poison")
			return POISON;
		else if (attribute == "disease")
			return DISEASE;
		else
			return UNKNOWN;

	}

	static String getName(const uint8 attribute, bool initialCap = false) {
		String name = "";

		switch (attribute) {
		case HEALTH:
			name ="health";
			break;
		case ACTION:
			name = "action";
			break;
		case MIND:
			name = "action";
			break;
		case STRENGTH:
			name = "health";
			break;
		case CONSTITUTION:
			name = "health";
			break;
		case QUICKNESS:
			name = "action";
			break;
		case STAMINA:
			name = "action";
			break;
		case FOCUS:
			name = "action";
			break;
		case WILLPOWER:
			name = "action";
			break;
		case POISON:
			name = "poison";
			break;
		case DISEASE:
			name = "disease";
			break;
		default:
			name = "unknown";
			break;
		}

		if (initialCap)
			name[0] = toupper(name[0]);

		return name;
	}
};


#endif /* BUFFATTRIBUTE_H_ */
