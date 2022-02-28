fdark_jedi_knight = Creature:new {
	customName = "Dark Jedi Knight",	
	socialGroup = "dark_jedi",
	faction = "imperial",
	level = 300,
	chanceHit = 23.5,
	damageMin = 1845,
	damageMax = 2800,
	baseXp = 25266,
	baseHAM = 261000,
	baseHAMmax = 320000,
	armor = 1,
	-- {kinetic, energy, electric, stun, blast, heat, cold, acid, ls}
	resists = {75,75,75,75,75,75,75,75,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 2 * 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_dark_jedi_human_male_01.iff",
		"object/mobile/dressed_dark_jedi_human_female_01.iff"},    	
    
	lootGroups = {},
	weapons = {"dark_jedi_weapons_gen3"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(fdark_jedi_knight, "fdark_jedi_knight")
