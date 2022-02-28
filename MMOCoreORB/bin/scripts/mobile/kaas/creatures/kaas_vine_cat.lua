vine_cat = Creature:new {
	objectName = "",
	customName = "a Vine Cat",	
	socialGroup = "death_watch",
	pvpFaction = "death_watch",
	faction = "",
	level = 138,
	chanceHit = 0.95,
	damageMin = 620,
	damageMax = 750,
	baseXp = 19336,
	baseHAM = 40000,
	baseHAMmax = 55000,
	armor = 1,
	resists = {30,10,30,-1,-1,0,0,0,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "bone_mammal",
	boneAmount = 950,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/greater_sludge_panther.iff"},
	lootGroups = {
		{
			groups = {
				{group = "pistols", chance = 750000},
				{group = "heavy_weapons", chance = 500000},
				{group = "rifles", chance = 750000},
				{group = "carbines", chance = 500000},
			},
			lootChance = 3000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding",""},
		{"creatureareacombo",""}
	}
}

CreatureTemplates:addCreatureTemplate(vine_cat, "vine_cat")
