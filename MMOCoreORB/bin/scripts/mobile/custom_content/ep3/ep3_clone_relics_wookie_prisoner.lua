ep3_clone_relics_wookie_prisoner = Creature:new {
	customName = "Wookiee Prisoner",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "wookiee",
	faction = "",
	level = 45,
	chanceHit = 0.45,
	damageMin = 750,
	damageMax = 900,
	baseXp = 4500,
	baseHAM = 20000,
	baseHAMmax = 30000,
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
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
				"object/mobile/ep3/ep3_clone_relics_wookie_prisoner_01.iff",
				"object/mobile/ep3/ep3_clone_relics_wookie_prisoner_02.iff",
				"object/mobile/ep3/ep3_clone_relics_wookie_prisoner_03.iff",
				"object/mobile/ep3/ep3_clone_relics_wookie_prisoner_04.iff"
				},
	lootGroups = {},
	weapons = {},
	conversationTemplate = ""
	--attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_clone_relics_wookie_prisoner, "ep3_clone_relics_wookie_prisoner")
