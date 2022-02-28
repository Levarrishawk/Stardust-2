varactyl = Creature:new {
	customName = "Varactyl",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 50,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 3500,
	baseHAM = 12500,
	baseHAMmax = 18500,
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
				{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(varactyl, "varactyl")
