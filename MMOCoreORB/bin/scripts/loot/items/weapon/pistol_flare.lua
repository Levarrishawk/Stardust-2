pistol_flare = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/pistol/pistol_flare.iff",
	craftingValues = {
		{"mindamage",45,216,0},
		{"maxdamage",248,270,0},
    {"attackspeed",2,2,1},
		{"woundchance",10,20,0},
		{"hitpoints",750,1500,0},
		{"attackhealthcost",0,0,0},
    {"attackactioncost",300,300,0},
    {"attackmindcost",0,0,0},
		{"zerorangemod",-5,10,0},
		{"maxrangemod",-80,-80,0},
		{"midrange",20,20,0},
		{"midrangemod",-2,18,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 800,
	junkDealerTypeNeeded = JUNKARMS,
	junkMinValue = 20,
	junkMaxValue = 40

}

addLootItemTemplate("pistol_flare", pistol_flare)
