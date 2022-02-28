jakku_black_trooper_1 = Creature:new {
	objectName = "@mob/creature_names:fbase_dark_trooper_extreme",
	customName = "Protocol-77 Dark Trooper",
	socialGroup = "death_watch",
	faction = "sith_shadow",
	level = 200,
	chanceHit = 11.0,
	damageMin = 545,
	damageMax = 1000,
	baseXp = 20000,
	baseHAM = 149000,
	baseHAMmax = 205000,
	armor = 0,
	resists = {40,40,40,40,40,40,40,40,40},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask =  AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.7,

	templates = {"object/mobile/dressed_dark_trooper_black_hole.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 1000000},
        {group = "power_crystals", chance = 1000000},
        {group = "holocron_dark", chance = 1000000},
        {group = "holocron_light", chance = 1000000},
        {group = "weapons_all", chance = 1000000},       
        {group = "clothing_attachments", chance = 1000000},
        {group = "armor_attachments", chance = 1000000},        
        {group = "jakku_weapons", chance = 2000000}
			}
		}
	},
	weapons = {"dark_trooper_weapons"},
	conversationTemplate = "",
	reactionStf = "",
	attacks = merge(riflemanmaster,marksmanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(jakku_black_trooper_1, "jakku_black_trooper_1")
