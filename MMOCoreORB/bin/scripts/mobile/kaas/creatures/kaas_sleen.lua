sleen = Creature:new {
	objectName = "",
	customName = "a Sleen",
	socialGroup = "voritor",
	faction = "",
	level = 53,
	chanceHit = 0.5,
	damageMin = 695,
	damageMax = 900,
	baseXp = 15099,
	baseHAM = 10000,
	baseHAMmax = 12000,
	armor = 0,
	resists = {20,20,5,5,0,0,0,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 65,
	hideType = "hide_leathery",
	hideAmount = 40,
	boneType = "bone_avian",
	boneAmount = 50,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/voritor_lizard_hue.iff"},
	scale = 1.2,
	lootGroups = {
		{
			groups = {
				{group = "voritor_lizard_common", chance = 10000000}
			},
			lootChance = 2500000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},
		{"creatureareapoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(sleen, "sleen")
