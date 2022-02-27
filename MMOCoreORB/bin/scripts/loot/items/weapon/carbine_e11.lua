--Automatically generated by SWGEmu Spawn Tool v0.12 loot editor.

carbine_e11 = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/carbine/carbine_e11.iff",
	craftingValues = {
		{"mindamage",21,42,0},
		{"maxdamage",47,109,0},
    {"attackspeed",3,3,1},
		{"woundchance",7,13,0},
		{"roundsused",15,45,0},
		{"hitpoints",750,1500,0},
		{"zerorangemod",-40,-40,0},
		{"maxrangemod",-80,-80,0},
		{"midrange",30,30,0},
		{"midrangemod",-5,5,0},
		{"attackhealthcost",0,0,0},
    {"attackactioncost",300,300,0},
    {"attackmindcost",0,0,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 800,
	junkDealerTypeNeeded = JUNKARMS,
	junkMinValue = 25,
	junkMaxValue = 45

}

addLootItemTemplate("carbine_e11", carbine_e11)
