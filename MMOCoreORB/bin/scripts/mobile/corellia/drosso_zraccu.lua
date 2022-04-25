drosso_zraccu = Creature:new {
	objectName = "@mob/creature_names:patron_chiss_male",
	customName = "Drosso Zraccu (a Hired SpyNet Operative)",
	faction = "thug",
	socialGroup = "thug",
	level = 330,
	chanceHit = 12.5,
	damageMin = 2000,
	damageMax = 3050,
	baseXp = 20000,
	baseHAM = 750000,
	baseHAMmax = 1250000,
	armor = 1,
	-- {kinetic, energy, electric, stun, blast, heat, cold, acid, ls}
	resists = {60,60,35,50,35,50,25,50,15},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	--Miniboss
	templates = {"object/mobile/dressed_hutt_informant_quest.iff"},

		lootGroups = {
		{
				groups = {
				{group = "power_crystals", chance = 2500000},
				{group = "color_crystals", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},

			},
			lootChance = 9000000,  -- 90% chance for this group
		},
		{
				groups = {
				{group = "power_crystals", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},			
			},
			lootChance = 9000000,  -- 90% chance for this group
		},
		{
				groups = {
				{group = "power_crystals", chance =10000000},
				},
			lootChance = 5000000, -- 50% chance for 3rd crystal.
		},
				{
				groups = {
				{group = "nge_house_group", chance =10000000},
				},
			lootChance = 1000000, -- 10% chance for 3rd nge houses.
		},
	},
	weapons = {"dark_trooper_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(riflemanmaster,marksmanmaster,fencermaster,brawlermaster)
	}

	CreatureTemplates:addCreatureTemplate(drosso_zraccu, "drosso_zraccu")
