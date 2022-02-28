kashyyyk_matriarch_bantha = Creature:new {
	customName = "a Matriarch Kashyyyk Bantha",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 45,
	chanceHit = 0.4,
	damageMin = 295,
	damageMax = 425,
	baseXp = 1500,
	baseHAM = 11300,
	baseHAMmax = 11800,
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

	templates = {"object/mobile/kashyyyk_bantha.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(kashyyyk_matriarch_bantha, "kashyyyk_matriarch_bantha")
