halloween_cavern_spider_queen = Creature:new {
	customName = "a diseased Spider Queen",
	socialGroup = "geonosian_creature",
	pvpFaction = "",
	faction = "",
	level = 190,
	chanceHit = 33.36,
	damageMin = 1350,
	damageMax = 2160,
	baseXp = 7822,
	baseHAM = 266200,
	baseHAMmax = 399400,
	armor = 0,
	resists = {50,50,45,45,30,30,30,30,5},
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
	scale = 2.3,
	lootGroups = {
		{
	        groups =
			{
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 5250000,
		},
		{
					groups =
			{
				{group = "holocron_light", chance = 5000000},
				{group = "holocron_dark", chance = 5000000},
			},
			lootChance = 6250000,
		},
		{
					groups =
			{
				{group = "enhanced_spider", chance = 10000000},
			},
			lootChance = 6000000,
		},
		{
					groups =
			{
				{group = "enhanced_spider", chance = 10000000},
			},
			lootChance = 3000000,
		},
		{
					groups =
			{
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 2250000,
		},
		{
	        groups =
			{
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 1050000,
		},
		{
					groups =
			{
				{group = "geonosian_common", chance = 10000000},
			},
			lootChance = 10000000,
		},
	 	{
	        groups =
			{

				{group = "geonosian_relic", chance = 2500000},
				{group = "fire_breathing_spider", chance = 7500000},
			},
			lootChance = 10000000,
		},
		{
			groups =
			{
				{group = "pistols", chance = 2500000},
				{group = "rifles", chance = 2500000},
				{group = "fire_breathing_spider", chance = 2500000},
				{group = "melee_weapons", chance = 2500000},
			},
			lootChance = 10000000,
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","intimidationChance=60"},
		{"knockdownfire",""},
		{"strongpoison",""},
		{"strongdisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(halloween_cavern_spider_queen, "halloween_cavern_spider_queen")
