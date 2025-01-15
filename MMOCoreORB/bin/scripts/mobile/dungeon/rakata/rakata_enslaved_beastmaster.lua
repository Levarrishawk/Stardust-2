rakata_enslaved_beastmaster = Creature:new {
	customName = "an Enslaved Beastmaster",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 25.0,
	damageMin = 1225,
	damageMax = 1925,
	baseXp = 25000,
	baseHAM = 200000,
	baseHAMmax = 300000,
	armor = 1,
	resists = {135,135,135,45,65,45,65,45,135},
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
	
	primaryWeapon = "", -- Needs a Primary. I'm thinking melee with his beasts.
	secondaryWeapon = "",
	conversationTemplate = "",
	
	--primaryAttacks = merge(), -- Probably a mixup of random master brawl / fencer ?
	--secondaryAttacks = merge()
}

CreatureTemplates:addCreatureTemplate(rakata_enslaved_beastmaster, "rakata_enslaved_beastmaster")
