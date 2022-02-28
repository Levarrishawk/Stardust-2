halloween_spider_failed_experiment = Creature:new {
	customName = "Failed Experiment #1462",
	socialGroup = "geonosian_creature",
	pvpFaction = "",
	faction = "",
	level = 270,
	chanceHit = 66.36,
	damageMin = 2250,
	damageMax = 5160,
	baseXp = 19822,
	baseHAM = 1366200,
	baseHAMmax = 2399400,
	armor = 0,
	resists = {75,75,75,60,50,40,30,10,5},
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
	scale = 4.2,
	lootGroups = {
		{
	        groups =
			{
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000},
			},
			lootChance = 10000000,
		},
		{
					groups =
			{
				{group = "experimental_spider", chance = 2000000},
				{group = "enhanced_spider", chance = 8000000},
			},
			lootChance = 10000000,
		},
		{
					groups =
			{
				{group = "experimental_spider", chance = 2000000},
				{group = "enhanced_spider", chance = 8000000},
			},
			lootChance = 8000000,
		},
		{
					groups =
			{
				{group = "holocron_light", chance = 5000000},
				{group = "holocron_dark", chance = 5000000},
			},
			lootChance = 8000000,
		},
		{
					groups =
			{
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 2250000,
		},
		{
	        groups =
			{
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 3050000,
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
				{group = "geonosian_hard", chance = 10000000},
			},
			lootChance = 10000000,
		},
		{
					groups =
			{
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 6000000,
		},
		{
					groups =
			{
				{group = "crystal_mauls_vengence", chance = 10000000},
			},
			lootChance = 1000000,
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
				{group = "fire_breathing_spider", chance = 2500000},
				{group = "carbines", chance = 2500000},
				{group = "melee_weapons", chance = 2500000},
			},
			lootChance = 10000000,
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"},
		{"intimidationattack","intimidationChance=90"},
		{"knockdownfire",""},
		{"strongpoison",""},
		{"strongdisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(halloween_spider_failed_experiment, "halloween_spider_failed_experiment")
