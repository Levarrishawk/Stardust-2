treasure_jawa = Creature:new {
	customName = "a greedy Jawa",
	socialGroup = "self",
	faction = "",
	level = 2300,
	chanceHit = 1.98,
	damageMin = 1310,
	damageMax = 1610,
	baseXp = 50366,
	baseHAM = 102245,
	baseHAMmax = 195625,
	armor = 1,
	resists = {34,34,34,50,20,20,20,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 2 * 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/jawa_male.iff"},
	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 1000000},
				{group = "jawa_common", chance = 2000000},
				{group = "armor_all", chance = 2000000},
				{group = "loot_kit_parts", chance = 2500000},
				{group = "color_crystals", chance = 2500000},
			},
				groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "janta_common", chance = 2000000},
				{group = "weapons_all", chance = 3000000},
			},
				groups = {
				{group = "armor_all", chance = 2500000},
				{group = "armor_attachments", chance = 5000000},
				{group = "weapons_all", chance = 2500000},
			}
		}
	},
	weapons = {"jawa_warlord_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(treasure_jawa, "treasure_jawa")
