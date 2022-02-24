object_tangible_wearables_armored_clothing_ithorian_ith_jacket_s01_armored = object_tangible_wearables_armored_clothing_ithorian_shared_ith_jacket_s01_armored:new {
	templateType = ARMOROBJECT,
	
	playerRaces = { "object/creature/player/ithorian_male.iff",
        "object/creature/player/ithorian_female.iff",
        "object/mobile/vendor/ithorian_female.iff",
        "object/mobile/vendor/ithorian_male.iff" },

	vulnerability = HEAT + LIGHTSABER,  


  -- These are default Blue Frog stats
  healthEncumbrance = 0,
  actionEncumbrance = 0,
  mindEncumbrance = 0,

  maxCondition = 30000,

  -- LIGHT, MEDIUM, HEAVY
  rating = LIGHT,

  kinetic = 70,
  energy = 70,
  electricity = 70,
  stun = 70,
  blast = 0,
  heat = 70,
  cold = 70,
  acid = 70,
  lightSaber = 70,

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

ObjectTemplates:addTemplate(object_tangible_wearables_armored_clothing_ithorian_ith_jacket_s01_armored, "object/tangible/wearables/armored_clothing/ithorian/ith_jacket_s01_armored.iff")
