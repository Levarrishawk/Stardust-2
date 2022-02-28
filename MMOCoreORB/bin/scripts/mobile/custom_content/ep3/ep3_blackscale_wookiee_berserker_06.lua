ep3_blackscale_wookiee_berserker_06 = Creature:new {
	customName = "Wookiee Berserker",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "wookiee",
	faction = "",
	level = 105,
	chanceHit = 1.05,
	damageMin = 1150,
	damageMax = 1470,
	baseXp = 7500,
	baseHAM = 80000,
	baseHAMmax = 90000,
	armor = 1,
	resists = {60,60,60,60,60,60,60,60,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_blackscale_wookiee_berserker_06.iff"},
	lootGroups = {},
	weapons = {"unarmed_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster,commandomaster,bountyhuntermaster,carbineermaster,riflemanmaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(ep3_blackscale_wookiee_berserker_06, "ep3_blackscale_wookiee_berserker_06")
