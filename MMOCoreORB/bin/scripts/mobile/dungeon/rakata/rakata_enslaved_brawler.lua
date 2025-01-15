rakata_enslaved_brawler = Creature:new {
	customName = "an Enslaved Brawler",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 25.0,
	damageMin = 700,
	damageMax = 1000,
	baseXp = 25000,
	baseHAM = 78000,
	baseHAMmax = 150000, -- Reduced, "Filler Mob"
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
	
	primaryWeapon = "", -- Brawler - Probably Pikes.
	secondaryWeapon = "",
	conversationTemplate = "",
	
	--primaryAttacks = merge(), -- Brawls/Pikes.
	--secondaryAttacks = merge()
}

CreatureTemplates:addCreatureTemplate(rakata_enslaved_brawler, "rakata_enslaved_brawler")
