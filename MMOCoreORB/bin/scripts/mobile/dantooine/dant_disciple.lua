dant_disciple = Creature:new {
	customName = "Disciple of the Rakata",
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

	templates = {"object/mobile/wod_first_sister.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 1000000},
				{group = "lok_track", chance = 1000000},
				{group = "rngbox1", chance = 1000000},
				{group = "rngbox1", chance = 1000000},
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
				{group = "rngbox1", chance = 1000000},
				{group = "rngbox1", chance = 1000000},
				{group = "melee_weapons", chance = 1000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nge_houses_all", chance = 1000000}
			},
				lootChance = 8000000,
		},
		
		{
			groups = {
				{group = "power_crystals", chance = 1000000},
				{group = "lok_track", chance = 1000000},
				{group = "rngbox1", chance = 1000000},
				{group = "rngbox1", chance = 1000000},
				{group = "melee_weapons", chance = 1000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nge_houses_all", chance = 1000000}
			},
				lootChance = 6000000,
		},
		
		{
			groups = {
				{group = "power_crystals", chance = 1000000},
				{group = "lok_track", chance = 1000000},
				{group = "rngbox1", chance = 1000000},
				{group = "rngbox1", chance = 1000000},
				{group = "melee_weapons", chance = 1000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nge_houses_all", chance = 1000000}
			},
				lootChance = 6000000,
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
				lootChance = 1000000,
		},
		{
			groups = {
				{group = "experimental_spider", chance = 10000000}
			},
				lootChance = 1000000,
		},
	},
	primaryWeapon = "dark_jedi_weapons_gen4",
	secondaryWeapon = "dark_jedi_weapons_gen4",
	conversationTemplate = "",
	
	primaryAttacks = merge(lightsabermaster,forcepowermaster),
	secondaryAttacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(dant_disciple, "dant_disciple")
