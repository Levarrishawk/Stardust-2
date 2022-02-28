hermione_bagwa = Creature:new {
	objectName = "@npc_name:bartender",
	customName = "Hermione Bagwa",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 4,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 62,
	baseHAM = 113,
	baseHAMmax = 138,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED + CONVERSABLE + INTERESTING,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_commoner_naboo_human_female_05.iff",
					},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "dex_diner",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(hermione_bagwa, "hermione_bagwa")
