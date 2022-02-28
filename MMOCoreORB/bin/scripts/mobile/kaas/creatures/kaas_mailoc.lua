mailoc = Creature:new {
	objectName = "",
	customName = "a Mailoc",
	socialGroup = "self",
	faction = "",
	level = 100,
	chanceHit = 0.23,
	damageMin = 735,
	damageMax = 945,
	baseXp = 14500,
	baseHAM = 20190,
	baseHAMmax = 23110,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 50,
	hideType = "hide_leathery",
	hideAmount = 70,
	boneType = "bone_mammal",
	boneAmount = 20,
	milk = 0,
	tamingChance = 0,
  ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/mynock.iff"},
	controlDeviceTemplate = "object/intangible/pet/mynock_hue.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	        {"knockdownattack","knockdownChance=95"},
	      	{"stunattack","stunChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(mailoc, "mailoc")
