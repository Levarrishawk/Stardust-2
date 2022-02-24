object_weapon_ranged_grenade_grenade_cortosis = object_weapon_ranged_grenade_shared_grenade_cortosis:new {

	objectMenuComponent = "ThrowGrenadeMenuComponent",

	playerRaces = { "object/creature/player/bothan_male.iff",
			"object/creature/player/bothan_female.iff",
			"object/creature/player/human_male.iff",
			"object/creature/player/human_female.iff",
			"object/creature/player/ithorian_male.iff",
			"object/creature/player/ithorian_female.iff",
			"object/creature/player/moncal_male.iff",
			"object/creature/player/moncal_female.iff",
			"object/creature/player/rodian_male.iff",
			"object/creature/player/rodian_female.iff",
			"object/creature/player/sullustan_male.iff",
			"object/creature/player/sullustan_female.iff",
			"object/creature/player/trandoshan_male.iff",
			"object/creature/player/trandoshan_female.iff",
			"object/creature/player/twilek_male.iff",
			"object/creature/player/twilek_female.iff",
			"object/creature/player/wookiee_male.iff",
			"object/creature/player/wookiee_female.iff",
			"object/creature/player/zabrak_male.iff","object/creature/player/chiss_male.iff",
			"object/creature/player/zabrak_female.iff","object/creature/player/chiss_female.iff"},

	-- RANGEDATTACK, MELEEATTACK, FORCEATTACK, TRAPATTACK, GRENADEATTACK, HEAVYACIDBEAMATTACK,
	-- HEAVYLIGHTNINGBEAMATTACK, HEAVYPARTICLEBEAMATTACK, HEAVYROCKETLAUNCHERATTACK, HEAVYLAUNCHERATTACK
	attackType = GRENADEATTACK,

	-- ENERGY, KINETIC, ELECTRICITY, STUN, BLAST, HEAT, COLD, ACID, LIGHTSABER
	damageType = KINETIC,

	-- NONE, LIGHT, MEDIUM, HEAVY
	armorPiercing = LIGHT,

	-- combat_rangedspecialize_bactarifle, combat_rangedspecialize_rifle, combat_rangedspecialize_pistol, combat_rangedspecialize_heavy, combat_rangedspecialize_carbine
	-- combat_meleespecialize_unarmed, combat_meleespecialize_twohand, combat_meleespecialize_polearm, combat_meleespecialize_onehand, combat_general,
	-- combat_meleespecialize_twohandlightsaber, combat_meleespecialize_polearmlightsaber, combat_meleespecialize_onehandlightsaber
	xpType = "combat_general",

	-- See http://www.ocdsoft.com/files/certifications.xls
	certificationsRequired = { "cert_grenade_cortosis" },

	-- See http://www.ocdsoft.com/files/accuracy.xls
	creatureAccuracyModifiers = { "thrown_accuracy" },

	-- See http://www.ocdsoft.com/files/defense.xls
	defenderDefenseModifiers = { "ranged_defense" },

	-- See http://www.ocdsoft.com/files/speed.xls
	speedModifiers = { "thrown_speed" },

	-- Leave blank for now
	damageModifiers = { },

	useCount = 5,

	combatSpam = "throw_cortosis",

	healthAttackCost = 20,
	actionAttackCost = 60,
	mindAttackCost = 15,

	pointBlankRange = 0,
	pointBlankAccuracy = 50,

	idealRange = 20,
	idealAccuracy = 95,

	maxRange = 64,
	maxRangeAccuracy = 50,

	minDamage = 90,
	maxDamage = 450,
	
	attackSpeed = 1.5,

	woundsRatio = 20,
	animationType = "imperial_detonator",

	numberExperimentalProperties = {1, 1, 2, 2, 2, 2, 1, 2, 2, 2, 2, 1, 2, 2, 2},
	experimentalProperties = {"XX", "XX", "OQ", "SR", "OQ", "SR", "OQ", "SR", "OQ", "SR", "XX", "OQ", "SR", "OQ", "SR", "OQ", "SR", "OQ", "SR", "XX", "OQ", "SR", "OQ", "SR", "OQ", "SR"},
	experimentalWeights = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	experimentalGroupTitles = {"null", "null", "expDamage", "expDamage", "expDamage", "expDamage", "null", "expRange", "expRange", "expRange", "expRange", "null", "expEffeciency", "expEffeciency", "expEffeciency"},
	experimentalSubGroupTitles = {"null", "null", "mindamage", "maxdamage", "attackspeed", "woundchance", "hitpoints", "zerorangemod", "maxrangemod", "midrangemod", "midrange", "maxrange", "attackhealthcost", "attackactioncost", "attackmindcost"},
	experimentalMin = {0, 0, 190, 320, 3, 7, 1000, -14, -45, 0, 10, 64, 0, 300, 0},
	experimentalMax = {0, 0, 270, 650, 3, 13, 1000, 16, -15, 30, 30, 64, 0, 300, 0},
	experimentalPrecision = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	experimentalCombineType = {0, 0, 1, 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, 1, 1},
}

ObjectTemplates:addTemplate(object_weapon_ranged_grenade_grenade_cortosis, "object/weapon/ranged/grenade/grenade_cortosis.iff")
