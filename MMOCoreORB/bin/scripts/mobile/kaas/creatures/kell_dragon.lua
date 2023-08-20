kell_dragon = Creature:new {
	objectName = "",
	customName = "a Kell Dragon",
	socialGroup = "krayt",
	mobType = MOB_CARNIVORE,
	faction = "",
	level = 336,
	chanceHit = 27.25,
	damageMin = 520,
	damageMax = 1950,
	baseXp = 26356,
	baseHAM = 120000,
	baseHAMmax = 392000,
	armor = 1,
  resists = {75,75,75,75,75,75,75,75,20},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 750,
	boneType = "bone_mammal",
	boneAmount = 675,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/canyon_krayt_dragon.iff"},
	scale = 0.45;
	lootGroups = {
		{
	        groups = {
				{group = "krayt_tissue_rare", chance = 2500000},
        {group = "krayt_dragon_common", chance = 1500000},
        {group = "krayt_pearls", chance = 1000000}			
			},
			lootChance = 5000000
		},
	},
	primaryWeapon = "unarmed",
  secondaryWeapon = "none",
  conversationTemplate = "",
  
  -- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
  -- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
  primaryAttacks = { {"creatureareaattack","stateAccuracyBonus=50"}, {"stunattack","stateAccuracyBonus=50"} },
  secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(kell_dragon, "kell_dragon")
