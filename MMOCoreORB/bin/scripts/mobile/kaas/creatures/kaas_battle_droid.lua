kaas_battle_droid = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_battle_droid",
	customName = "a Malfunctioning Battle Droid",
	socialGroup = "dark_jedi",
	faction = "",
	level = 134,
	chanceHit = 2.5,
	damageMin = 295,
	damageMax = 600,
	baseXp = 12612,
	baseHAM = 86000,
	baseHAMmax = 98000,
	armor = 1,
	resists = {65,65,80, 50,80,25,40,65,15},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.15,

	templates = {
		"object/mobile/death_watch_battle_droid.iff",
		"object/mobile/death_watch_battle_droid_02.iff",
		"object/mobile/death_watch_battle_droid_03.iff"},
	lootGroups = {
    {
      groups = {
        {group = "clone_trooper_imperial", chance = 3000000},
        {group = "clone_trooper_neutral", chance = 4000000},
        {group = "clone_trooper_rebel", chance = 3000000}     -- 25% * 35% = 8.75%
      },
      lootChance = 2500000    -- 25% chance of this group
    },
    {
      groups = {
        {group = "clone_war_weapons", chance = 10000000}    -- 25% * 35% = 8.75%
      },
      lootChance = 1000000    -- 25% chance of this group
    },
    {
      groups = {
        {group = "armor_attachments", chance = 5000000},
        {group = "clothing_attachments", chance = 5000000},
      },
      lootChance = 1500000
    }

  },
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(kaas_battle_droid, "kaas_battle_droid")
