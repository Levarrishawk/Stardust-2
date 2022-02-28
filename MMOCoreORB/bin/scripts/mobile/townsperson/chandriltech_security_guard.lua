chandriltech_security_guard = Creature:new {
	objectName = "@mob/creature_names:detention_security_guard",
	customName = "a ChandrilTech Security Guard",
	socialGroup = "geonosian",
	level = 150,
	chanceHit = 0.31,
	damageMin = 160,
	damageMax = 670,
	baseXp = 831,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
  creatureBitmask = KILLER,
  optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_royal_security_human_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "chandriltech_weapons", chance = 250000},	
				{group = "armor_attachments", chance = 100000},
				{group = "clothing_attachments", chance = 100000},
				{group = "wearables_common", chance = 100000}
			}
		}
	},
	weapons = {"imperial_weapons_light"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",
	attacks = merge(brawlermid,marksmanmid)
}

CreatureTemplates:addCreatureTemplate(chandriltech_security_guard, "chandriltech_security_guard")
