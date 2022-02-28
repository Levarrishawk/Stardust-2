retreat_curator = Creature:new {
	objectName = "@mob/creature_names:prefect_talmont",
	customName = "Curator-General Olivia Markad",
	socialGroup = "townsperson",
	faction = "",
	level = 10,
	chanceHit = 0.28,
	damageMin = 90,
	damageMax = 110,
	baseXp = 356,
	baseHAM = 810,
	baseHAMmax = 990,
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED + CONVERSABLE + INTERESTING,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_rebel_general_human_female_01.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "retreat_curator",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(retreat_curator, "retreat_curator")
