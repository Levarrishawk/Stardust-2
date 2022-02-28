nk_necrosis = Creature:new {
	--objectName = "@mob/creature_names:ep3_general_grievous",
	customName = "Nanite Reanimated General Grievous",
	socialGroup = "droids",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 100,
	damageMin = 100,
	damageMax = 600,
	baseXp = 16884,
	baseHAM = 300000,
	baseHAMmax = 400000,
	armor = 0,
	resists = {90,90,90,90,90,90,90,90,90},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,
	scale = 1.5,

	templates = {"object/mobile/ep3/general_grievous.iff"},
	lootGroups = {
    {
      groups = {
        {group = "clone_trooper_imperial", chance = 3000000},
        {group = "clone_trooper_neutral", chance = 4000000},
        {group = "clone_trooper_rebel", chance = 3000000}     -- 25% * 35% = 8.75%
      },
      lootChance = 5000000    -- 25% chance of this group
    },
    {
      groups = {
        {group = "clone_war_weapons", chance = 10000000}    -- 25% * 35% = 8.75%
      },
      lootChance = 5000000    -- 25% chance of this group
    },
    {
      groups = {
        {group = "armor_attachments", chance = 5000000},    -- 25% * 35% = 8.75%
        {group = "clothing_attachments", chance = 5000000},
      },
      lootChance = 2500000    -- 25% chance of this group
    },
    {
      groups = {
        {group = "crystal_banes_heart", chance = 1000000},
        {group = "power_crystals", chance = 9000000},
      },
      lootChance = 2500000
    }

  },
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(nk_necrosis, "nk_necrosis")
