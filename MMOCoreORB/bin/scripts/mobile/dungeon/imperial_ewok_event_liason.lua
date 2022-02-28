imperial_ewok_event_liason = Creature:new {
	objectName = "@mob/creature_names:prefect_talmont",
	customName = "an Imperial Genocide Coordinator",
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
	conversationTemplate = "imperial_genocide_coordinator",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(imperial_ewok_event_liason, "imperial_ewok_event_liason")
