ep3_trando_slaver = Creature:new {
	customName = "Trandoshan Slaver",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "trandoshan",
	faction = "",
	level = 80,
	chanceHit = 1.00,
	damageMin = 1150,
	damageMax = 1470,
	baseXp = 3500,
	baseHAM = 11000,
	baseHAMmax = 18000,
	armor = 0,
	resists = {30,30,40,40,55,35,55,35,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
				"object/mobile/ep3/ep3_trando_slaver_01.iff",
				"object/mobile/ep3/ep3_trando_slaver_02.iff",
				"object/mobile/ep3/ep3_trando_slaver_03.iff",
				"object/mobile/ep3/ep3_trando_slaver_04.iff",
				"object/mobile/ep3/ep3_trando_slaver_05.iff"
				},

	lootGroups = {},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_trando_slaver, "ep3_trando_slaver")
