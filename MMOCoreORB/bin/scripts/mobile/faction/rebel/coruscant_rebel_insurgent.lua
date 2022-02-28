coruscant_rebel_insurgent = Creature:new {
	objectName = "@mob/creature_names:rebel_trooper",
--	randomNameType = NAME_GENERIC,
--	randomNameTag = true,
  customName = "a Coruscant Uprising Insurgent",
	socialGroup = "rebel",
	faction = "rebel",
	level = 25,
  chanceHit = 0.36,
  damageMin = 240,
  damageMax = 250,
  baseXp = 2637,
  baseHAM = 7200,
  baseHAMmax = 8800,
  armor = 0,
  resists = {15,15,40,15,15,15,15,-1,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED + FACTIONAGGRO,
	diet = HERBIVORE,

	templates = {
    "object/mobile/dressed_criminal_pirate_human_male_01.iff",
    "object/mobile/dressed_criminal_pirate_human_female_01.iff",
    "object/mobile/dressed_criminal_thug_aqualish_male_01.iff",
    "object/mobile/dressed_criminal_thug_aqualish_male_02.iff",
    "object/mobile/dressed_criminal_thug_aqualish_female_01.iff",
    "object/mobile/dressed_criminal_thug_aqualish_female_02.iff",
    "object/mobile/dressed_criminal_thug_bothan_male_01.iff",
    "object/mobile/dressed_criminal_thug_bothan_female_01.iff",
    "object/mobile/dressed_criminal_thug_human_male_01.iff",
    "object/mobile/dressed_criminal_thug_human_male_02.iff",
    "object/mobile/dressed_criminal_thug_human_female_01.iff",
    "object/mobile/dressed_criminal_thug_human_female_02.iff",
    "object/mobile/dressed_criminal_thug_rodian_male_01.iff",
    "object/mobile/dressed_criminal_thug_rodian_female_01.iff",
    "object/mobile/dressed_criminal_thug_trandoshan_male_01.iff",
    "object/mobile/dressed_criminal_thug_trandoshan_female_01.iff",
    "object/mobile/dressed_criminal_thug_zabrak_male_01.iff",
    "object/mobile/dressed_criminal_thug_zabrak_female_01.iff"
  },
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 4700000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "melee_weapons", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "clothing_attachments", chance = 100000},
				{group = "armor_attachments", chance = 100000},
				{group = "wearables_common", chance = 1000000}
			}
		}
	},
	weapons = {"rebel_weapons_light"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",
	attacks = merge(brawlermid,marksmanmid)
}

CreatureTemplates:addCreatureTemplate(coruscant_rebel_insurgent, "coruscant_rebel_insurgent")
