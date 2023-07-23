boba_fett_tusken = Creature:new {
  objectName = "",
  customName = "Boba Fett",
  socialGroup = "tusken",
  faction = "",
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
  pvpBitmask = NONE,
  creatureBitmask = PACK,
  optionsBitmask = INVULNERABLE + CONVERSABLE + INTERESTING,
  diet = HERBIVORE,

  templates = {
    "object/mobile/tatooine_npc/hedon_istee.iff"},
  outfit = "boba_fett_tusken_outfit",
  conversationTemplate = "boba_fett_tusken",
  lootGroups = {
      {
      groups = {
        {group = "holocron_dark", chance = 600000},
        {group = "holocron_light", chance = 600000},
        {group = "power_crystals", chance = 600000},
        {group = "kaas_weapons", chance = 500000},
        {group = "color_crystals", chance = 1500000},
        {group = "melee_weapons", chance = 1500000},
        {group = "armor_attachments", chance = 1100000},
        {group = "clothing_attachments", chance = 1100000},
        {group = "nge_houses_all", chance = 10000}        
      },
      lootChance = 5000000
    }
  },
  primaryWeapon = "tusken_ranged",
  secondaryWeapon = "tusken_melee",
  primaryAttacks = merge(marksmanmaster,riflemanmaster),
  secondaryAttacks = merge(brawlermaster,fencermaster)
}

CreatureTemplates:addCreatureTemplate(boba_fett_tusken, "boba_fett_tusken")