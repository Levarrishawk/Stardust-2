varactyl_stalker = Creature:new {
	customName = "a Varactyl Stalker",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 40,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 1200,
	baseHAM = 75000,
	baseHAMmax = 82000,
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
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/varactyl.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(varactyl_stalker, "varactyl_stalker")
