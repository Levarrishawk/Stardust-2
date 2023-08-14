insane_vitiate_cultist = Creature:new {
  objectName = "",
  customName = "an Insane Cultist",
  socialGroup = "sith_shadow",
  faction = "sith_shadow",
  mobType = MOB_NPC,
  level = 126,
  chanceHit = 4,
  damageMin = 345,
  damageMax = 700,
  baseXp = 11953,
  baseHAM = 14000,
  baseHAMmax = 22000,
  armor = 0,
  resists = {50,50,50,50,50,50,50,50,25},
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

  templates = {
    "object/mobile/tatooine_npc/hedon_istee.iff"},
  outfit = "prophet_outfit",
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
  weapons = {"mixed_force_weapons"},
  attacks = merge(brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(insane_vitiate_cultist, "insane_vitiate_cultist")