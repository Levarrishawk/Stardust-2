chiss_poacher_bodyguard = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_dthwatch_grey",
	customName = "Laen's Mandalorian Bodyguard",
	faction = "thug",
	socialGroup = "thug",
	level = 300,
	chanceHit = 10,
	damageMin = 1850,
	damageMax = 2550,
	baseXp = 20000,
	baseHAM = 295000,
	baseHAMmax = 350000,
	armor = 1,
	resists = {60,60,40,45,45,60,60,40,15},
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

	templates = {"object/mobile/dressed_death_watch_grey.iff"},

		lootGroups = {
		{
			groups = {

				{group = "loot_kit_parts", chance = 500000},
				{group = "armor_attachments", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "color_crystals", chance = 7500000},
			}
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pikemanmaster,fencermaster,swordsmanmaster)
	}

	CreatureTemplates:addCreatureTemplate(chiss_poacher_bodyguard, "chiss_poacher_bodyguard")
