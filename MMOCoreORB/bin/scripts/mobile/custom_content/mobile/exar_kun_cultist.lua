exar_kun_cultist = Creature:new {
	customName = "an Exar Kun Cultist",
	randomNameTag = true,
	socialGroup = "kun",
	level = 250,
	chanceHit = 0.8,
	damageMin = 890,
	damageMax = 900,
	baseXp = 8408,
	baseHAM = 75000,
	baseHAMmax = 95000,
	armor = 1,
	resists = {45,45,45,70,70,70,70,70,10},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY ,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/exar_kun_cultist.iff"},
	lootGroups = {
		
		{
			groups = {
				{group = "power_crystals", chance = 1500000},
				{group = "color_crystals", chance = 2500000},
				{group = "clothing_attachments", chance = 1500000},
				{group = "armor_attachmments", chance = 2500000},
				{group = "dark_jedi_common", chance = 2000000},
			},
			lootChance = 4000000,
		},			
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermid,swordsmanmid,tkamid,pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(exar_kun_cultist, "exar_kun_cultist")
