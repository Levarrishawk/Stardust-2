exar_kun_fist_of_hate = Creature:new {
	customName = "The Clenched Fist of Hate",
	randomNameTag = true,
	socialGroup = "kun",
	faction = "kun",
	level = 400,
	chanceHit = 0.24,
	damageMin = 1400,
	damageMax = 1900,
	baseXp = 62,
	baseHAM = 300000,
	baseHAMmax = 300000,
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
	scale = 1.2,
	pvpBitmask = ATTACKABLE + ENEMY,
  creatureBitmask = HERD,
  optionsBitmask = AIENABLED,
  diet = HERBIVORE,

	templates = {"object/mobile/exar_kun_fist_of_hate.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(exar_kun_fist_of_hate, "exar_kun_fist_of_hate")
