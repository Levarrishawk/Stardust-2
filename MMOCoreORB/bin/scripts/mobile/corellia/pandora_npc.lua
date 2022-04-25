pandora = Creature:new {
	objectName = "@mob/creature_names:commoner",
	customName = "Pandora",
	socialGroup = "townsperson",
	pvpFaction = "townsperson",
	faction = "townsperson",
	level = 1,
	chanceHit = 0.25,
	damageMin = 1890,
	damageMax = 2300,
	baseXp = 113,
	baseHAM = 343004,
	baseHAMmax = 645000,
	armor = 0,
	resists = {90,90,80,80,40,40,40,-1,-1},
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
	optionsBitmask = AIENABLED + CONVERSABLE + INTERESTING,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_criminal_pirate_human_female_01.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "pandora_template",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(pandora, "pandora")
