

object_weapon_melee_2h_sword_crafted_saber_sword_lightsaber_two_handed_anakin = object_weapon_melee_2h_sword_crafted_saber_shared_sword_lightsaber_two_handed_anakin:new {

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
				"object/creature/player/zabrak_male.iff",
				"object/creature/player/zabrak_female.iff" },

	-- RANGEDATTACK, MELEEATTACK, FORCEATTACK, TRAPATTACK, GRENADEATTACK, HEAVYACIDBEAMATTACK,
	-- HEAVYLIGHTNINGBEAMATTACK, HEAVYPARTICLEBEAMATTACK, HEAVYROCKETLAUNCHERATTACK, HEAVYLAUNCHERATTACK
	attackType = MELEEATTACK,

	-- ENERGY, KINETIC, ELECTRICITY, STUN, BLAST, HEAT, COLD, ACID, FORCE, LIGHTSABER
	damageType = LIGHTSABER,

	-- NONE, LIGHT, MEDIUM, HEAVY
	armorPiercing = LIGHT,

	-- combat_rangedspecialize_bactarifle, combat_rangedspecialize_rifle, combat_rangedspecialize_pistol, combat_rangedspecialize_heavy, combat_rangedspecialize_carbine
	-- combat_meleespecialize_unarmed, combat_meleespecialize_twohand, combat_meleespecialize_polearm, combat_meleespecialize_onehand, combat_general,
	-- jedi_general, combat_meleespecialize_polearmlightsaber, combat_meleespecialize_onehandlightsaber
	xpType = "jedi_general",

	-- See http://www.ocdsoft.com/files/certifications.xls
	certificationsRequired = { "cert_twohandlightsaber_gen4" },
	-- See http://www.ocdsoft.com/files/accuracy.xls
	creatureAccuracyModifiers = { "twohandlightsaber_accuracy" },

	-- See http://www.ocdsoft.com/files/defense.xls
	defenderDefenseModifiers = { "melee_defense" },

	-- Leave as "dodge" for now, may have additions later
	defenderSecondaryDefenseModifiers = { "saber_block" },

	-- See http://www.ocdsoft.com/files/speed.xls
	speedModifiers = { "twohandlightsaber_speed" },

	-- Leave blank for now
	damageModifiers = { },


	-- The values below are the default values.  To be used for blue frog objects primarily
	healthAttackCost = 95,
	actionAttackCost = 50,
	mindAttackCost = 45,
	forceCost = 47,

	pointBlankRange = 0,
	pointBlankAccuracy = 20,

	idealRange = 3,
	idealAccuracy = 15,

	maxRange = 5,
	maxRangeAccuracy = 5,
	
	minDamage = 185,
	maxDamage = 265,

	attackSpeed = 4.8,

	woundsRatio = 37,

	defenderToughnessModifiers = { "lightsaber_toughness" },
	
	customizationVariables = {"/private/index_color_blade", 4, true},
	
	noTrade = 1,
	
	childObjects = {
		{templateFile = "object/tangible/inventory/lightsaber_inventory_4.iff", x = 0, z = 0, y = 0, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = 4}
	},

	numberExperimentalProperties = {1, 1, 2, 2, 2, 2, 2, 1, 1, 1},
  experimentalProperties = {"XX", "XX", "CD", "OQ", "CD", "OQ", "CD", "OQ", "SR", "UT", "CD", "OQ", "OQ", "OQ", "OQ"},
  experimentalWeights = {1, 1, 1, 2, 1, 2, 1, 1, 1, 1, 1, 2, 1, 1, 1},
  experimentalGroupTitles = {"null", "null", "expDamage", "expDamage", "expDamage", "expDamage", "expEffeciency", "expEffeciency", "expEffeciency", "expEffeciency"},
  experimentalSubGroupTitles = {"null", "null", "mindamage", "maxdamage", "attackspeed", "woundchance", "forcecost", "attackhealthcost", "attackactioncost", "attackmindcost"},
  experimentalMin = {0, 0, 240, 330, 3.0, 25, 12, 0, 300, 0},
  experimentalMax = {0, 0, 260, 370, 3.0, 50, 12, 0, 300, 0},
  experimentalPrecision = {0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
  experimentalCombineType = {0, 0, 1, 1, 1, 1, 1, 1, 1, 1},
}

ObjectTemplates:addTemplate(object_weapon_melee_2h_sword_crafted_saber_sword_lightsaber_two_handed_anakin, "object/weapon/melee/2h_sword/crafted_saber/sword_lightsaber_two_handed_anakin.iff")
