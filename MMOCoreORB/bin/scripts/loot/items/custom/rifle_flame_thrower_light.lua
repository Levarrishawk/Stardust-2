rifle_flame_thrower_light = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Light Flame Thrower",
	directObjectTemplate = "object/weapon/ranged/rifle/rifle_flame_thrower_light.iff",
	craftingValues = {
		{"mindamage",265,415,0},
		{"maxdamage",420,750,0},
		{"attackspeed",5.0,3.0,1},
		{"woundchance",16.0,30.0,0},
		{"hitpoints",750,1500,0},
		{"zerorangemod",20,40,0},
		{"maxrangemod",-15,45,0},
		{"midrange",50,50,0},
		{"midrangemod",10,20,0},
		{"maxrange",64,64,0},
		{"attackhealthcost",20,10,0},
		{"attackactioncost",20,10,0},
		{"attackmindcost",20,10,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 750,
	junkDealerTypeNeeded = JUNKARMS,
	junkMinValue = 20,
	junkMaxValue = 60

}

addLootItemTemplate("rifle_flame_thrower_light", rifle_flame_thrower_light)
