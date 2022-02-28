jakku_rebel_general = Creature:new {
	objectName = "@mob/creature_names:rebel_high_general",
--	randomNameType = NAME_GENERIC,
--	randomNameTag = true,
  customName = "a New Republic Battle-Hardened General",
	socialGroup = "rebel",
	faction = "rebel",
	level = 300,
	chanceHit = 0.38,
	damageMin = 800,
	damageMax = 800,
	baseXp = 3005,
	baseHAM = 100000,
	baseHAMmax = 100000,
	armor = 0,
	resists = {0,0,0,40,-1,40,-1,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED + CONVERSABLE,
	diet = HERBIVORE,
	scale = 1.5,

	templates = {
		"object/mobile/dressed_rebel_high_general_human_female_01.iff",
		"object/mobile/dressed_rebel_high_general_human_male_01.iff",
		"object/mobile/dressed_rebel_high_general_human_male_02.iff",
		"object/mobile/dressed_rebel_high_general_moncal_male_01.iff",
		"object/mobile/dressed_rebel_high_general_old_twilek_female_01.iff",
		"object/mobile/dressed_rebel_high_general_sullustan_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "assault_trooper", chance = 4250000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "melee_weapons", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "clothing_attachments", chance = 100000},
				{group = "armor_attachments", chance = 100000},
				{group = "rebel_officer_common", chance = 450000},
				{group = "nge_housing_all", chance = 1000000}
			}
		}
	},
	weapons = {"rebel_weapons_heavy"},
	conversationTemplate = "rebelRecruiterConvoTemplate",
	reactionStf = "@npc_reaction/military",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(jakku_rebel_general, "jakku_rebel_general")
