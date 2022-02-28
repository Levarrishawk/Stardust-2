halloween_cavern_spider_hatchling = Creature:new {
	customName = "a Cavern Spider Hatchling",
	socialGroup = "geonosian_creature",
	pvpFaction = "",
	faction = "",
	level = 45,
	chanceHit = 23.36,
	damageMin = 650,
	damageMax = 960,
	baseXp = 22,
	baseHAM = 26200,
	baseHAMmax = 39400,
	armor = 0,
	resists = {10,10,10,10,10,10,10,5,5},
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
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/gaping_spider.iff"},
	scale = 0.2,
	lootGroups = {
		{
	        groups =
			{
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 750000,
		},
		{
	        groups =
			{
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 250000,
		},
		{
			groups =
			{
				{group = "pistols", chance = 2500000},
				{group = "rifles", chance = 2500000},
				{group = "carbines", chance = 2500000},
				{group = "melee_weapons", chance = 2500000},
			},
			lootChance = 1000000,
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","intimidationChance=20"},
		{"mildpoison",""},
		{"milddisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(halloween_cavern_spider_hatchling, "halloween_cavern_spider_hatchling")
