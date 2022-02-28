nanite_reanimated_clone_trooper = Creature:new {
	customName = "a Nanite Reanimated Clone Trooper",
  --randomNameType = NAME_GENERIC,
	--randomNameTag = true,
	socialGroup = "",
	faction = "",
	level = 75,
	chanceHit = 0.24,
	damageMin = 140,
	damageMax = 250,
	baseXp = 62,
	baseHAM = 7500,
	baseHAMmax = 11800,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
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
  creatureBitmask = PACK + KILLER,
  optionsBitmask = AIENABLED,
  diet = CARNIVORE,

	templates = {"object/mobile/outbreak_undead_deathtrooper_09_m.iff"},
	lootGroups = {
    {
      groups = {
        {group = "clone_trooper_imperial", chance = 3000000},
        {group = "clone_trooper_neutral", chance = 4000000},
        {group = "clone_trooper_rebel", chance = 3000000}     -- 25% * 35% = 8.75%
      },
      lootChance = 1000000    -- 25% chance of this group
    },
    {
      groups = {
        {group = "clone_war_weapons", chance = 10000000}    -- 25% * 35% = 8.75%
      },
      lootChance = 500000    -- 25% chance of this group
    },
    {
      groups = {
        {group = "armor_attachments", chance = 5000000},
        {group = "clothing_attachments", chance = 5000000},
      },
      lootChance = 1500000
    }

  },
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(nanite_reanimated_clone_trooper, "nanite_reanimated_clone_trooper")
