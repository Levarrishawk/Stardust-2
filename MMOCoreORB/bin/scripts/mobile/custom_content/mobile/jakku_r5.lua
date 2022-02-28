jakku_r5 = Creature:new {
	objectName = "@mob/creature_names:r5",
	customName = "a Protocol-77 Maintenance Droid",
	socialGroup = "death_watch",
	faction = "",
	level = 4,
	chanceHit = 0.24,
	damageMin = 1400,
	damageMax = 1450,
	baseXp = 62,
	baseHAM = 113,
	baseHAMmax = 138,
	armor = 0,
	resists = {15,15,15,15,15,15,15,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
  pvpBitmask = ATTACKABLE + OVERT,
  creatureBitmask = PACK + KILLER,
  optionsBitmask = AIENABLED,
  diet = HERBIVORE,
  scale = 1.2,

	templates = {
		"object/mobile/r5.iff"
	},		
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(jakku_r5, "jakku_r5")