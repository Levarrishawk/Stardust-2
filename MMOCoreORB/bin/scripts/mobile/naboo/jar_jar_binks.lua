jar_jar_binks = Creature:new {
	objectName = "@mob/creature_names:gungan_general",
	customName = "Jar Jar Binks",
	socialGroup = "gungan",
	faction = "gungan",
	level = 26,
	chanceHit = 0.36,
	damageMin = 250,
	damageMax = 260,
	baseXp = 2730,
	baseHAM = 7700,
	baseHAMmax = 9400,
	armor = 0,
	resists = {15,25,15,-1,30,-1,15,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 2 * 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
  creatureBitmask = HERD,
  optionsBitmask = AIENABLED + CONVERSABLE + INTERESTING,
  diet = HERBIVORE,


	templates = {"object/mobile/gungan_male.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 2000000},
				{group = "gungan_common", chance = 2000000},
				{group = "wearables_all", chance = 2000000},
				{group = "tailor_components", chance = 2000000},
				{group = "loot_kit_parts", chance = 2000000}
			}
		}
	},
	weapons = {},
	conversationTemplate = "jar_jar_binks",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(jar_jar_binks, "jar_jar_binks")
