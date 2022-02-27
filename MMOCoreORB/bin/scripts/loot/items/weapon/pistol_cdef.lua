--Automatically generated by SWGEmu Spawn Tool v0.12 loot editor.

pistol_cdef = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/pistol/pistol_cdef.iff",
	craftingValues = {
		{"mindamage",12,126,0},
		{"maxdamage",27,156,0},
    {"attackspeed",2,2,1},
		{"woundchance",2,4,0},
		{"hitpoints",750,750,0},
		{"attackhealthcost",0,0,0},
    {"attackactioncost",300,300,0},
    {"attackmindcost",0,0,0},
		{"roundsused",5,20,0},
		{"zerorangemod",0,0,0},
		{"maxrangemod",-80,-80,0},
		{"midrange",15,15,0},
		{"midrangemod",35,65,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 800,
	junkDealerTypeNeeded = JUNKARMS,
	junkMinValue = 20,
	junkMaxValue = 40

}

addLootItemTemplate("pistol_cdef", pistol_cdef)
