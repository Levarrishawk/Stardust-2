clone_trooper_501st = Creature:new {
  objectName = "",
  customName = "a 501st Legion Clone Trooper",
  socialGroup = "imperial",
  faction = "imperial",
  mobType = MOB_NPC,
  level = 126,
  chanceHit = 4,
  damageMin = 1345,
  damageMax = 1700,
  baseXp = 11953,
  baseHAM = 122000,
  baseHAMmax = 122000,
  armor = 3,
  resists = {99,99,99,99,99,99,99,99,0},
  meatType = "",
  meatAmount = 0,
  hideType = "",
  hideAmount = 0,
  boneType = "",
  boneAmount = 0,
  milk = 0,
  tamingChance = 0,
  ferocity = 0,
  pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
  creatureBitmask = PACK + KILLER,
  diet = HERBIVORE,
  optionsBitmask = AIENABLED,
  scale = 1.05,
  lightsaberColor = 4,
  
  templates = {
    "object/mobile/tatooine_npc/hedon_istee.iff"},
  outfit = "clone_outfit",
  lootGroups = {
      {
      groups = {
        {group = "holocron_dark", chance = 140000},
        {group = "holocron_light", chance = 140000},
        {group = "power_crystals", chance = 200000},
        {group = "kaas_weapons", chance = 10000},
        {group = "color_crystals", chance = 1000000},
        {group = "melee_weapons", chance = 1000000},
        {group = "armor_attachments", chance = 500000},
        {group = "clothing_attachments", chance = 500000},
        {group = "nge_houses_all", chance = 10000}        
      },
      lootChance = 4000000
    }
  },
  -- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
  -- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
  primaryWeapon = "clonetrooper_rifle",
  secondaryWeapon = "imperial_pistol",
  conversationTemplate = "",

  -- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
  -- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
  primaryAttacks = riflemanmaster,
  secondaryAttacks = pistoleermaster
}

CreatureTemplates:addCreatureTemplate(clone_trooper_501st, "clone_trooper_501st")