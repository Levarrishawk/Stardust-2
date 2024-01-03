tusken_king = Creature:new {
	customName = "a Tusken King",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 300,
	chanceHit = 80.0,
	damageMin = 1645,
	damageMax = 3000,
	baseXp = 25167,
	baseHAM = 761000,
	baseHAMmax = 820000,
	armor = 1,
	resists = {80,45,70,45,80,70,45,70,45},
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
	scale = 1.5,	

	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 1000000},
				{group = "lok_track", chance = 1000000},
				{group = "veteran_rewards_630_days", chance = 1000000},
				{group = "veteran_rewards_720_days", chance = 1000000},
				{group = "melee_weapons", chance = 1000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nge_houses_all", chance = 1000000}
			},
				lootChance = 10000000,
		},
		
		{
			groups = {
				{group = "power_crystals", chance = 1000000},
				{group = "lok_track", chance = 1000000},
				{group = "veteran_rewards_630_days", chance = 1000000},
				{group = "veteran_rewards_720_days", chance = 1000000},
				{group = "melee_weapons", chance = 1000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nge_houses_all", chance = 1000000}
			},
				lootChance = 7500000,
		},
		
		{
			groups = {
				{group = "power_crystals", chance = 1000000},
				{group = "lok_track", chance = 1000000},
				{group = "veteran_rewards_630_days", chance = 1000000},
				{group = "veteran_rewards_720_days", chance = 1000000},
				{group = "melee_weapons", chance = 1000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nge_houses_all", chance = 1000000}
			},
				lootChance = 5000000,
		},
		
		{
			groups = {
				{group = "power_crystals", chance = 1000000},
				{group = "lok_track", chance = 1000000},
				{group = "veteran_rewards_630_days", chance = 1000000},
				{group = "veteran_rewards_720_days", chance = 1000000},
				{group = "melee_weapons", chance = 1000000},
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
	primaryWeapon = "tusken_ranged",
	secondaryWeapon = "tusken_melee",
	conversationTemplate = "",
	
	primaryAttacks = merge(marksmanmaster,riflemanmaster),
	secondaryAttacks = merge(brawlermaster,fencermaster)
}

CreatureTemplates:addCreatureTemplate(tusken_king, "tusken_king")
