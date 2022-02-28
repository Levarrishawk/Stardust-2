dressed_sayormi_witch = Creature:new {
	customName = "a sayormi witch",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 40,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 62,
	baseHAM = 113,
	baseHAMmax = 118,
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

	templates = {
				"object/mobile/dressed_sayormi_witch_01.iff",
				"object/mobile/dressed_sayormi_witch_02.iff",
				"object/mobile/dressed_sayormi_witch_03.iff",
				"object/mobile/dressed_sayormi_witch_04.iff",
				"object/mobile/dressed_sayormi_witch_05.iff",
				"object/mobile/dressed_sayormi_witch_06.iff",
				"object/mobile/dressed_sayormi_witch_07.iff"
				},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(dressed_sayormi_witch, "dressed_sayormi_witch")
