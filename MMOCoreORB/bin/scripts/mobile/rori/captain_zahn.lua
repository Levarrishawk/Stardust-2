captain_zahn = Creature:new {
	customName = "Captain Zahn",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 80.0,
	damageMin = 1645,
	damageMax = 3000,
	baseXp = 25167,
	baseHAM = 761000,
	baseHAMmax = 820000,
	armor = 1,
	resists = {60,70,45,70,60,45,70,45,175},
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
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.2,	

	templates = {"object/mobile/dressed_imperial_colonel_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 2000000},
				{group = "lok_track", chance = 500000},
				{group = "veteran_rewards_630_days", chance = 1000000},
				{group = "veteran_rewards_720_days", chance = 1000000},
				{group = "veteran_rewards_1080_days", chance = 500000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nge_houses_all", chance = 1000000}
			},
				lootChance = 10000000,
		},
		
		{
			groups = {
				{group = "power_crystals", chance = 2000000},
				{group = "lok_track", chance = 500000},
				{group = "veteran_rewards_630_days", chance = 1000000},
				{group = "veteran_rewards_720_days", chance = 1000000},
				{group = "veteran_rewards_1080_days", chance = 500000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nge_houses_all", chance = 1000000}
			},
				lootChance = 7500000,
		},
		
		{
			groups = {
				{group = "power_crystals", chance = 2000000},
				{group = "lok_track", chance = 500000},
				{group = "veteran_rewards_630_days", chance = 1000000},
				{group = "veteran_rewards_720_days", chance = 1000000},
				{group = "veteran_rewards_1080_days", chance = 500000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nge_houses_all", chance = 1000000}
			},
				lootChance = 5000000,
		},
		
		{
			groups = {
				{group = "power_crystals", chance = 2000000},
				{group = "lok_track", chance = 500000},
				{group = "veteran_rewards_630_days", chance = 1000000},
				{group = "veteran_rewards_720_days", chance = 1000000},
				{group = "veteran_rewards_1080_days", chance = 500000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nge_houses_all", chance = 1000000}
			},
				lootChance = 2500000,
		},
		
		{
			groups = {
				{group = "token_stardust", chance = 10000000}
			},
				lootChance = 10000000,
		},
	},
	primaryWeapon = "stormtrooper_rifle",
	secondaryWeapon = "stormtrooper_polearm",
	conversationTemplate = "",
	
	primaryAttacks = merge(marksmanmaster,riflemanmaster),
	secondaryAttacks = merge(brawlermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(captain_zahn, "captain_zahn")
