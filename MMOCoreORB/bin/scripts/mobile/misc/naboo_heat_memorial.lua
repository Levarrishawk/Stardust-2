naboo_heat_memorial = Creature:new {
  objectName = "",
  customName = "Heat (an Interactive Memorial)",
  socialGroup = "townsperson",
  faction = "",
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
  scale = 2.5,
  pvpBitmask = NONE,
  creatureBitmask = PACK,
  optionsBitmask = AIENABLED + CONVERSABLE + INTERESTING,
  diet = HERBIVORE,

  templates = {
    "object/mobile/tatooine_npc/hedon_istee.iff"},
  outfit = "heat_outfit",
  lootGroups = {},
  conversationTemplate = "fake_imperial_officer",
  weapons = {"mixed_force_weapons"},
  attacks = merge(brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(naboo_heat_memorial, "naboo_heat_memorial")