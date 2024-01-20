dath_disciple = Creature:new {
	customName = "Mana Das (a Disciple of Rakata)",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 4.75,
	damageMin = 1045,
	damageMax = 2500,
	baseXp = 25167,
	baseHAM = 961000,
	baseHAMmax = 1020000,
	armor = 2,
	resists = {65,70,55,70,60,55,70,55,75},
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
	scale = 1.4,	

	templates = {"object/mobile/wod_third_sister.iff"},
	lootGroups = {
		{
			groups = {
				{group = "nightsister_rare", chance = 1000000},
				{group = "lok_track", chance = 1000000},
				{group = "veteran_rewards_810_days", chance = 1000000},
				{group = "veteran_rewards_270_days", chance = 1000000},
				{group = "death_watch_bh_armor_schematics", chance = 1000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nge_houses_all", chance = 1000000}
			},
				lootChance = 10000000,
		},
		
		{
			groups = {
				{group = "nightsister_rare", chance = 1000000},
				{group = "lok_track", chance = 1000000},
				{group = "veteran_rewards_810_days", chance = 1000000},
				{group = "veteran_rewards_630_days", chance = 1000000},
				{group = "death_watch_bh_armor_schematics", chance = 1000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nge_houses_all", chance = 1000000}
			},
				lootChance = 8000000,
		},
		
		{
			groups = {
				{group = "nightsister_rare", chance = 1000000},
				{group = "lok_track", chance = 1000000},
				{group = "veteran_rewards_810_days", chance = 1000000},
				{group = "veteran_rewards_90_days", chance = 1000000},
				{group = "death_watch_bh_armor_schematics", chance = 1000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nge_houses_all", chance = 1000000}
			},
				lootChance = 6000000,
		},
		
		{
			groups = {
				{group = "nightsister_rare", chance = 1000000},
				{group = "lok_track", chance = 1000000},
				{group = "veteran_rewards_180_days", chance = 1000000},
				{group = "veteran_rewards_450_days", chance = 1000000},
				{group = "death_watch_bh_armor_schematics", chance = 1000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nge_houses_all", chance = 1000000}
			},
				lootChance = 6000000,
		},
		
		{
			groups = {
				{group = "nightsister_rare", chance = 1000000},
				{group = "lok_track", chance = 1000000},
				{group = "veteran_rewards_1080_days", chance = 1000000},
				{group = "veteran_rewards_990_days", chance = 1000000},
				{group = "death_watch_bh_armor_schematics", chance = 1000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nge_houses_all", chance = 1000000}
			},
				lootChance = 4000000,
		},
		
		{
			groups = {
				{group = "nightsister_rare", chance = 1000000},
				{group = "lok_track", chance = 1000000},
				{group = "veteran_rewards_810_days", chance = 1000000},
				{group = "veteran_rewards_900_days", chance = 1000000},
				{group = "death_watch_bh_armor_schematics", chance = 1000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nge_houses_all", chance = 1000000}
			},
				lootChance = 3000000,
		},
		
		{
			groups = {
				{group = "token_stardust", chance = 10000000}
			},
				lootChance = 10000000,
		},
		{
			groups = {
				{group = "acid_vibro_unit", chance = 10000000}
			},
				lootChance = 1500000,
		},
		{
			groups = {
				{group = "experimental_spider", chance = 10000000}
			},
				lootChance = 1500000,
		},
	},
	primaryWeapon = "light_jedi_weapons",
	secondaryWeapon = "light_jedi_weapons",
	conversationTemplate = "",
	
	primaryAttacks = merge(lightsabermaster,forcepowermaster),
	secondaryAttacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(dath_disciple, "dath_disciple")
