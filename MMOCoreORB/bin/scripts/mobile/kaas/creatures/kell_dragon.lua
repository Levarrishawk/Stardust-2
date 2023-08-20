kell_dragon = Creature:new {
	objectName = "",
	customName = "a Kell Dragon",
	socialGroup = "krayt",
	mobType = MOB_CARNIVORE,
	faction = "",
	level = 290,
	chanceHit = 27.25,
	damageMin = 1520,
	damageMax = 1950,
	baseXp = 26356,
	baseHAM = 120000,
	baseHAMmax = 138000,
	armor = 2,
  resists = {160,160,160,160,120,160,160,160,-1},
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
				{group = "krayt_tissue_rare", chance = 500000},
        {group = "krayt_dragon_common", chance = 4000000},
        {group = "krayt_pearls", chance = 500000}			
			},
			lootChance = 5000000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(kell_dragon, "kell_dragon")
