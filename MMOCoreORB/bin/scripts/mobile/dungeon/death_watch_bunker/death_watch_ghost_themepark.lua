death_watch_ghost_themepark = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_dthwatch_grey",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "death_watch",
	faction = "",
	level = 282,
	chanceHit = 1.5,
	damageMin = 395,
	damageMax = 500,
	baseXp = 84314,
	baseHAM = 50000,
	baseHAMmax = 70000,
	armor = 1,
	resists = {65,65,70,60,35,35,20,50,20},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 2 * 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.15,

	templates = {"object/mobile/dressed_death_watch_grey.iff"},
	lootGroups = {
		{
			groups = {
				{group = "death_watch_bunker_commoners",   chance = 6500000},
				{group = "death_watch_bunker_lieutenants", chance = 3500000},
			},
			lootChance = 4000000
		},
		{
			groups = {
				{group = "death_watch_bunker_commoners",   chance = 6500000},
				{group = "death_watch_bunker_lieutenants", chance = 3500000},
			},
			lootChance = 4000000
		},
		{
			groups = {
				{group = "death_watch_bunker_ingredient_binary",  chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "death_watch_bunker_ingredient_protective",  chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups =
			{
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 400000,
		},
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = {}, --(bountyhuntermaster,marksmanmaster,brawlermaster,pikemanmaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(death_watch_ghost_themepark, "death_watch_ghost_themepark")
