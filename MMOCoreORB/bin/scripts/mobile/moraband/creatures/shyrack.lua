shyrack = Creature:new {
	objectName = "@mob/creature_names:flewt_leviathan",
	customName = "a Shyrack",
	socialGroup = "flewt",
	faction = "",
	level = 19,
	chanceHit = 0.28,
	damageMin = 90,
	damageMax = 110,
	baseXp = 1292,
	baseHAM = 11405,
	baseHAMmax = 12495,
	armor = 0,
	resists = {20,30,20,11,20,21,30,11,21},
	meatType = "meat_insect",
	meatAmount = 123,
	hideType = "hide_scaley",
	hideAmount = 123,
	boneType = "bone_avian",
	boneAmount = 123,
	milk = 2 * 0,
	tamingChance = 0,
	ferocity = 5,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/flewt_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/flewt_hue.iff",
	scale = 3.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(shyrack, "shyrack")
