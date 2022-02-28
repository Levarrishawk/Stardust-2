gundark = Creature:new {
	objectName = "",
	customName = "a Gundark",	
	socialGroup = "graul",
	pvpFaction = "",
	faction = "",
	level = 100,
	chanceHit = 0.39,
	damageMin = 690,
	damageMax = 800,
	baseXp = 13005,
	baseHAM = 18400,
	baseHAMmax = 30200,
	armor = 0,
	resists = {50,20,-1,20,20,-1,-1,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 950,
	hideType = "hide_leathery",
	hideAmount = 875,
	boneType = "bone_mammal",
	boneAmount = 775,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/graul.iff"},
	controlDeviceTemplate = "object/intangible/pet/graul_hue.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","intimidationChance=50"},
		{"stunattack","stunChance=50"},
		{"knockdownattack","knockdownChance=95"}
	}
}

CreatureTemplates:addCreatureTemplate(gundark, "gundark")
