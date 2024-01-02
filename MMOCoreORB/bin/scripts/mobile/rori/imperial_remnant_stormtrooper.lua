imperial_remnant_stormtrooper = Creature:new {
	customName = "an Imperial Remnant Stormtrooper",
	socialGroup = "mercenary",
	faction = "",
	level = 150,
	chanceHit = 25.0,
	damageMin = 425,
	damageMax = 600,
	baseXp = 5000,
	baseHAM = 35000,
	baseHAMmax = 55000,
	armor = 1,
	resists = {55,55,55,55,55,55,55,55,25},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.0,

	templates = {"object/mobile/dressed_stormtrooper_m.iff"},
	lootGroups = {
	},
	
	primaryWeapon = "stormtrooper_rifle",
	secondaryWeapon = "stormtrooper_polearm",
	conversationTemplate = "",
	
	primaryAttacks = merge(marksmanmaster,riflemanmaster),
	secondaryAttacks = merge(brawlermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(imperial_remnant_stormtrooper, "imperial_remnant_stormtrooper")
