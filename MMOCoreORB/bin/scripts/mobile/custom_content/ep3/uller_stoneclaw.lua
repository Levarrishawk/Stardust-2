uller_stoneclaw = Creature:new {
	customName = "an Uller Stoneclaw",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 60,
	chanceHit = 0.24,
	damageMin = 375,
	damageMax = 500,
	baseXp = 5700,
	baseHAM = 120000,
	baseHAMmax = 125000,
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

	templates = {"object/mobile/uller.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""},
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(uller_stoneclaw, "uller_stoneclaw")
