rebel_vette_teleporter = Creature:new {
	objectName = "@mob/creature_names:noble",
	customName = "a New Republic Shuttle Pilot",
	--randomNameType = NAME_GENERIC,
	--randomNameTag = true,
	socialGroup = "townsperson",
	faction = "rebel",
	level = 6,
	chanceHit = 0.250000,
	damageMin = 50,
	damageMax = 55,
	baseXp = 113,
	baseHAM = 180,
	baseHAMmax = 220,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED + CONVERSABLE + INTERESTING,
	diet = HERBIVORE,


templates = {
    "object/mobile/dressed_rebel_recruiter_human_female_01.iff",
    "object/mobile/dressed_rebel_recruiter_human_female_02.iff",
    "object/mobile/dressed_rebel_recruiter_moncal_male_01.iff",
    "object/mobile/dressed_rebel_recruiter_twilek_female_01.iff"
    },   
	lootGroups = {},
	weapons = {},
	conversationTemplate = "rebel_vette_teleporter",
	attacks = {}
}

CreatureTemplates:addCreatureTemplate(rebel_vette_teleporter, "rebel_vette_teleporter")
