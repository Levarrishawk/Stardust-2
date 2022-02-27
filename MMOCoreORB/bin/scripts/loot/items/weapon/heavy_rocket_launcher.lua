heavy_rocket_launcher = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/heavy/heavy_rocket_launcher.iff",
	craftingValues = {
		{"mindamage",87,990,0},
		{"maxdamage",178,1295,0},
		{"attackspeed",1,1,1},
		{"woundchance",17,31,0},
		{"hitpoints",1000,1000,0},
		{"zerorangemod",-120,-90,0},
		{"maxrange",64,64,0},
		{"maxrangemod",-45,-15,0},
		{"midrange",48,48,0},
		{"midrangemod",20,60,0},
		{"attackhealthcost",0,0,0},
    {"attackactioncost",300,300,0},
    {"attackmindcost",0,0,0},
	},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 625,
	junkDealerTypeNeeded = JUNKARMS,
	junkMinValue = 30,
	junkMaxValue = 55
}

addLootItemTemplate("heavy_rocket_launcher", heavy_rocket_launcher)
