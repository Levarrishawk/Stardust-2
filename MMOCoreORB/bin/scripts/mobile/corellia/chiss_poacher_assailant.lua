chiss_poacher_assailant = Creature:new {
	objectName = "@mob/creature_names:chiss_poacher_hracca",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	faction = "thug",
	socialGroup = "thug",
	level = 300,
	chanceHit = 7,
	damageMin = 820,
	damageMax = 1350,
	baseXp = 20000,
	baseHAM = 80000,
	baseHAMmax = 120000,
	armor = 1,
	resists = {50,50,50,50,50,50,50,50,15},
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

	templates = {
	"object/mobile/ep3/shared_ep3_etyyy_chiss_poacher_hracca_01.iff",
	"object/mobile/ep3/shared_ep3_etyyy_chiss_poacher_hracca_02.iff",
	"object/mobile/ep3/shared_ep3_etyyy_chiss_poacher_hracca_03.iff",
	"object/mobile/ep3/shared_ep3_etyyy_chiss_poacher_hracca_04.iff",
	"object/mobile/ep3/shared_ep3_etyyy_chiss_poacher_hracca_05.iff",
	"object/mobile/ep3/shared_ep3_etyyy_chiss_poacher_hracca_06.iff",
	"object/mobile/ep3/shared_ep3_etyyy_chiss_poacher_hracca_07.iff",
	"object/mobile/ep3/shared_ep3_etyyy_chiss_poacher_hracca_08.iff"},

		lootGroups = {
		{
			groups = {
				{group = "pistols", chance = 750000},
				{group = "carbines", chance = 750000},
				{group = "rifles", chance = 750000},
				{group = "melee_baton", chance = 1000000},
				{group = "loot_kit_parts", chance = 1000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "color_crystals", chance = 750000},
			}
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster)
	}

	CreatureTemplates:addCreatureTemplate(chiss_poacher_assailant, "chiss_poacher_assailant")
