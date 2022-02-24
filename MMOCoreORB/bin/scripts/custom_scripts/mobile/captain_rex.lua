captain_rex = Creature:new {
	objectName = "@mob/creature_names:fbase_rebel_commando_hard",
--	randomNameType = NAME_GENERIC,
--	randomNameTag = true,
  customName = "Captain Rex",
	socialGroup = "rebel",
	faction = "rebel",
	level = 188,
	chanceHit = 0.88,
	damageMin = 1585,
	damageMax = 2880,
	baseXp = 8800,
	baseHAM = 2000000,
	baseHAMmax = 2000000,
	armor = 3,
	resists = {75,75,75,75,75,75,75,-1,65},
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
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.25,

	templates = {
		"object/mobile/dressed_rebel_commando_human_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 200000},
				{group = "junk", chance = 6000000},
				{group = "weapons_all", chance = 1250000},
				{group = "armor_all", chance = 1250000},
				{group = "clothing_attachments", chance = 150000},
				{group = "armor_attachments", chance = 150000},
				{group = "wearables_all", chance = 1000000}
			}
		}
	},
	weapons = {"rebel_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(commandomid,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(captain_rex, "captain_rex")
