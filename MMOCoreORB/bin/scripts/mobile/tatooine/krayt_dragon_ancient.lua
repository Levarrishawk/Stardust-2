krayt_dragon_ancient = Creature:new {
	objectName = "@mob/creature_names:krayt_dragon_ancient",
	socialGroup = "krayt",
	faction = "",
	mobType = MOB_CARNIVORE,
	level = 336,
	chanceHit = 30.0,
	damageMin = 645,
	damageMax = 1900,
	baseXp = 28549,
	baseHAM = 340000,
	baseHAMmax = 450000,
	armor = 1,
	resists = {75,75,75,75,75,75,75,75,35},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 950,
	boneType = "bone_mammal",
	boneAmount = 905,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 2.0,

	templates = {"object/mobile/krayt_dragon_hue.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
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
			lootChance = 7000000
		},
		{
	        groups = {
				{group = "krayt_tissue_rare", chance = 4500000},
				{group = "krayt_dragon_common", chance = 2000000},
				{group = "krayt_pearls", chance = 3500000},
			},
			lootChance = 5000000
		},
		
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"creatureareacombo","stateAccuracyBonus=100"}, {"creatureareaknockdown","stateAccuracyBonus=100"} },
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(krayt_dragon_ancient, "krayt_dragon_ancient")
