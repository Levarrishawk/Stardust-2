object_tangible_wearables_armor_stormtrooper_armor_stormtrooper_helmet = object_tangible_wearables_armor_stormtrooper_shared_armor_stormtrooper_helmet:new {
	templateType = ARMOROBJECT,

	faction = "Imperial",

	playerRaces = { "object/creature/player/human_male.iff",
				"object/creature/player/human_female.iff",
				"object/creature/player/zabrak_male.iff",
				"object/creature/player/zabrak_female.iff",
				"object/mobile/vendor/human_female.iff",
				"object/mobile/vendor/human_male.iff",
				"object/mobile/vendor/zabrak_female.iff",
				"object/mobile/vendor/zabrak_male.iff" },
	
	-- Damage types in WeaponObject
	vulnerability = LIGHTSABER + COLD,

  specialResists = BLAST,

	-- These are default Blue Frog stats
	healthEncumbrance = 0,
	actionEncumbrance = 0,
	mindEncumbrance = 0,

	-- LIGHT, MEDIUM, HEAVY
	rating = LIGHT,
	
	maxCondition = 30000,
	
	kinetic = 60,
  energy = 60,
  electricity = 60,
  stun = 60,
  blast = 60,
  heat = 60,
  cold = 60,
  acid = 60,
  lightSaber = 0,
  
  numberExperimentalProperties = {1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 2, 1},
  experimentalProperties = {"XX", "XX", "XX", "XX", "OQ", "SR", "OQ", "UT", "MA", "OQ", "MA", "OQ", "XX", "XX", "XX", "XX", "OQ", "SR", "XX"},
  experimentalWeights = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  experimentalGroupTitles = {"null", "null", "null", "exp_durability", "exp_quality", "exp_resistance", "null", "null", "null", "null", "null", "exp_resistance", "null"},
  experimentalSubGroupTitles = {"null", "null", "sockets", "hit_points", "armor_effectiveness", "armor_integrity", "armor_health_encumbrance", "armor_action_encumbrance", "armor_mind_encumbrance", "armor_rating", "armor_special_type", "armor_special_effectiveness", "armor_special_integrity"},
  experimentalMin = {0, 0, 0, 1000, 1, 30000, 0, 0, 0, 1, 0, 0, 0},
  experimentalMax = {0, 0, 0, 1000, 30, 50000, 0, 0, 0, 1, 0, 0, 0},
  experimentalPrecision = {0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0},
  experimentalCombineType = {0, 0, 4, 1, 1, 1, 1, 1, 1, 4, 4, 4, 1},
}

ObjectTemplates:addTemplate(object_tangible_wearables_armor_stormtrooper_armor_stormtrooper_helmet, "object/tangible/wearables/armor/stormtrooper/armor_stormtrooper_helmet.iff")
