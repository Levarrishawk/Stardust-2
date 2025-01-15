rakata_fanatic_taskmaster = Creature:new {
	customName = "a Rakata Fanatic Taskmaster",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 25.0,
	damageMin = 1225,
	damageMax = 1925,
	baseXp = 25000,
	baseHAM = 250000,
	baseHAMmax = 350000, -- Going to sit in packs with the brawlers.
	armor = 1,
	resists = {155,155,155,55,65,55,65,55,155},
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

	templates = {"object/mobile/dressed_dark_side_savage.iff"}, -- Placeholder, need a new one.
	lootGroups = {
	},
	
	primaryWeapon = "", -- Probably a massive 2H-er.
	secondaryWeapon = "",
	conversationTemplate = "",
	
	--primaryAttacks = merge(), -- Brawls/Swords.
	--secondaryAttacks = merge()
}

CreatureTemplates:addCreatureTemplate(rakata_fanatic_taskmaster, "rakata_fanatic_taskmaster")
