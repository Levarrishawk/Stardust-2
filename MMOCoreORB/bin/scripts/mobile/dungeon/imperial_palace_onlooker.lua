imperial_palace_onlooker = Creature:new {
	objectName = "@mob/creature_names:prefect_talmont",
	customName = "an Imperial Palace Liason Officer",
	socialGroup = "imperial",
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

	templates = {"object/mobile/dressed_imperial_officer_m.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "imperial_palace_onlooker",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(imperial_palace_onlooker, "imperial_palace_onlooker")
