jakku_imperial_general = Creature:new {
	objectName = "@mob/creature_names:imperial_high_general",
	customName = "an Imperial Battle-Hardened General",
	socialGroup = "imperial",
	faction = "imperial",
	level = 300,
	chanceHit = 0.38,
	damageMin = 280,
	damageMax = 1290,
	baseXp = 3005,
	baseHAM = 100000,
	baseHAMmax = 100000,
	armor = 0,
	resists = {20,2,20,20,20,20,20,20,-1},
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

	templates = {"object/mobile/dressed_imperial_general_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "rebel_assault", chance = 6200000},
				{group = "rifles", chance = 550000},
				{group = "pistols", chance = 550000},
				{group = "melee_weapons", chance = 550000},
				{group = "carbines", chance = 550000},
				{group = "clothing_attachments", chance = 25000},
				{group = "armor_attachments", chance = 25000},
				{group = "imperial_officer_common", chance = 450000},
				{group = "nge_housing_all", chance = 1000000}
			}
		}
	},
	weapons = {"imperial_weapons_heavy"},
	conversationTemplate = "imperialRecruiterConvoTemplate",
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",
	attacks = merge(riflemanmaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(jakku_imperial_general, "jakku_imperial_general")
