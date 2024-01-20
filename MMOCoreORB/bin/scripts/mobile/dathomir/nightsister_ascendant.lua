nightsister_ascendant = Creature:new {
	customName = "a Nightsister Ascendant",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 25.0,
	damageMin = 1225,
	damageMax = 1925,
	baseXp = 25000,
	baseHAM = 134000,
	baseHAMmax = 170000,
	armor = 1,
	resists = {165,145,165,45,65,45,65,45,165},
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
	scale = 1.1,

	templates = {"object/mobile/dressed_dathomir_nightsister_protector.iff"},
	lootGroups = {
	},
	
	primaryWeapon = "light_jedi_weapons",
	secondaryWeapon = "light_jedi_weapons",
	conversationTemplate = "",
	
	primaryAttacks = merge(lightsabermaster,forcepowermaster),
	secondaryAttacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(nightsister_ascendant, "nightsister_ascendant")
