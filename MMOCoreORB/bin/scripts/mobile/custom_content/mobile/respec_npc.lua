respec_npc = Creature:new {
	objectName = "",
	customName = "a Combat Profession Counselor",
	socialGroup = "fs_villager",
	faction = "fs_villager",
	level = 4,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 62,
	baseHAM = 113,
	baseHAMmax = 138,
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
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = INVULNERABLE + CONVERSABLE + INTERESTING,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_fs_converter.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "respecConvoTemplate",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(respec_npc, "respec_npc")