beast_mastery_ring = {
 -- Band
    minimumLevel = 0,
    maximumLevel = -1,
    customObjectName = "Failed Experiment Control Ring",
    directObjectTemplate = "object/tangible/wearables/ring/ring_s01.iff",
    craftingValues = {},
    	skillMods = 
	{
		{"keep_creature",5},
		{"stored_pets",5},
		{"tame_aggro",5},
		{"tame_non_aggro",5},
		{"tame_bonus",5},
		{"foraging",5},
		{"creature_hit_bonus",5},
	},
    customizationStringNames = {},
    customizationValues = {},
    junkDealerTypeNeeded = JUNKCLOTHESANDJEWELLERY,
    junkMinValue = 45000,
    junkMaxValue = 90000
}

addLootItemTemplate("beast_mastery_ring", beast_mastery_ring)
