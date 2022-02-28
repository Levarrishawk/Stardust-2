fake_imperial_officer = Creature:new {
	objectName = "@mob/creature_names:prefect_talmont",
	customName = "a Poorly Dressed Imperial Officer",
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

	templates = {"object/mobile/dressed_imperial_officer_m.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "fake_imperial_officer",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(fake_imperial_officer, "fake_imperial_officer")
