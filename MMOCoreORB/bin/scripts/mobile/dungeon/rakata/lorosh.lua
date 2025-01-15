lorosh = Creature:new {
	customName = "Lo'Rosh, Lord of the Beasts",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 25.0,
	damageMin = 1225,
	damageMax = 1925,
	baseXp = 25000,
	baseHAM = 2500000,
	baseHAMmax = 3000000,
	armor = 2,
	resists = {185,185,185,85,85,85,85,85,185},
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
	lootGroups = {}, -- Will decide boss loot, potential new items?
	
	primaryWeapon = "", -- Unsure on weapon type yet.
	secondaryWeapon = "",
	conversationTemplate = "",
	
	--primaryAttacks = merge(), -- Will decide when weapon is decided.
	--secondaryAttacks = merge()
}

CreatureTemplates:addCreatureTemplate(lorosh, "lorosh")
