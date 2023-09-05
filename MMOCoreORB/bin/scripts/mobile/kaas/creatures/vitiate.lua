vitiate = Creature:new {
	objectName = "@theme_park_name:emperor_palpatine",
	customName = "Vitiate",
	socialGroup = "dark_jedi",
	mobType = MOB_NPC,
	level = 400,
	chanceHit = 1,
	damageMin = 1770,
  damageMax = 2000,
	baseXp = 9429,
	baseHAM = 1240000,
	baseHAMmax = 1300000,
	armor = 2,
	resists = {50,50,50,50,50,50,50,50,50},
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
  optionsBitmask = AIENABLED,
  diet = HERBIVORE,
	scale = 1.1,

	templates = {"object/mobile/ep3/palpatine_hologram.iff"},
	lootGroups = {
    {
      groups = {
        {group = "holocron_dark", chance = 1000000},        
        {group = "named_crystals", chance = 500000},
        {group = "massassi_sith_weapons", chance = 1000000},
        {group = "armor_attachments", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "kaas_weapons", chance = 1000000},
        {group = "dark_jedi_common", chance = 1000000}
      },
      lootChance = 10000000,
    }
  },
	 -- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
  -- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
  primaryWeapon = "dark_jedi_weapons_gen4",
  secondaryWeapon = "unarmed",
  conversationTemplate = "",

  -- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
  -- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
  primaryAttacks = lightsabermaster,
  secondaryAttacks = forcepowermaster
}

CreatureTemplates:addCreatureTemplate(vitiate, "vitiate")
