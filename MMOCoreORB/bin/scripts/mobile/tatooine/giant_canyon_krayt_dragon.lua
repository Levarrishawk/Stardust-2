giant_canyon_krayt_dragon = Creature:new {
	objectName = "@mob/creature_names:giant_canyon_krayt_dragon",
	socialGroup = "krayt",
	faction = "",
	mobType = MOB_CARNIVORE,
	level = 300,
	chanceHit = 30.0,
	damageMin = 645,
	damageMax = 1680,
	baseXp = 28549,
	baseHAM = 285000,
	baseHAMmax = 371000,
	armor = 1,
	resists = {60,60,60,60,60,60,60,60,35},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 870,
	boneType = "bone_mammal",
	boneAmount = 805,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/canyon_krayt_dragon.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	scale = 1.2;

	lootGroups = {
		{
	        groups = {
				{group = "krayt_tissue_rare", chance = 4500000},
				{group = "krayt_dragon_common", chance = 2000000},
				{group = "krayt_pearls", chance = 3500000},
			},
			lootChance = 9000000
		},
		{
	        groups = {
				{group = "krayt_tissue_rare", chance = 4500000},
				{group = "krayt_dragon_common", chance = 2000000},
				{group = "krayt_pearls", chance = 3500000},
			},
			lootChance = 5000000
		},
		{
	        groups = {
				{group = "krayt_tissue_rare", chance = 4500000},
				{group = "krayt_dragon_common", chance = 2000000},
				{group = "krayt_pearls", chance = 3500000},
			},
			lootChance = 2500000
		},
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"creatureareaattack","stateAccuracyBonus=50"}, {"creatureareaknockdown","stateAccuracyBonus=50"} },
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(giant_canyon_krayt_dragon, "giant_canyon_krayt_dragon")
