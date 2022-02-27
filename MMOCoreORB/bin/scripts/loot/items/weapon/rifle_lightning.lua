rifle_lightning = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/rifle/rifle_lightning.iff",
	craftingValues = {
		{"mindamage",22,390,0},
		{"maxdamage",286,710,0},
    {"attackspeed",4,4,1},
		{"woundchance",8.0,16.0,0},
		{"hitpoints",750,1500,0},
		{"zerorangemod",-10,20,0},
		{"maxrangemod",-65,-35,0},
		{"midrange",30,30,0},
		{"midrangemod",-5,15,0},
		{"maxrange",64,64,0},
		{"attackhealthcost",0,0,0},
    {"attackactioncost",300,300,0},
    {"attackmindcost",0,0,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 625,
	junkDealerTypeNeeded = JUNKARMS,
	junkMinValue = 20,
	junkMaxValue = 60

}

addLootItemTemplate("rifle_lightning", rifle_lightning)
