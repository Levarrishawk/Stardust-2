jakku_black_trooper_1 = Creature:new {
	objectName = "@mob/creature_names:fbase_dark_trooper_extreme",
	customName = "Protocol-77 Dark Trooper",
	socialGroup = "death_watch",
	mobType = MOB_ANDROID,
	faction = "",
	level = 200,
	chanceHit = 11.0,
	damageMin = 1145,
	damageMax = 2000,
	baseXp = 20000,
	baseHAM = 149000,
	baseHAMmax = 205000,
	armor = 0,
	resists = {55,60,40,75,40,40,40,60,35},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask =  AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.7,

	templates = {"object/mobile/dressed_dark_trooper_black_hole.iff"},
	lootGroups = {
    {
      groups = {
        {group = "color_crystals", chance = 3000000},
        {group = "power_crystals", chance = 2000000},
        {group = "holocron_dark", chance = 500000},
        {group = "holocron_light", chance = 500000},
        {group = "weapons_all", chance = 500000},
        {group = "armor_all", chance = 500000},
        {group = "clothing_attachments", chance = 1000000},
        {group = "armor_attachments", chance = 1000000},
        {group = "jakku_weapons", chance = 1000000}
      }
    }
  },
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
  -- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
  primaryWeapon = "imperial_carbine",
  secondaryWeapon = "stormtrooper_sword",
  conversationTemplate = "",

  -- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
  -- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
  primaryAttacks = carbineermaster,
  secondaryAttacks = fencermaster
}

CreatureTemplates:addCreatureTemplate(jakku_black_trooper_1, "jakku_black_trooper_1")
