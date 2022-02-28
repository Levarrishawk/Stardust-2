loth_wolf = Creature:new {
	customName = "a loth wolf",	
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 400,
	chanceHit = 0.24,
	damageMin = 1400,
	damageMax = 2000,
	baseXp = 62,
	baseHAM = 113000,
	baseHAMmax = 118000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_wild",
  meatAmount = 123,
  hideType = "hide_wooly",
  hideAmount = 123,
  boneType = "bone_mammal",
  boneAmount = 123,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
  creatureBitmask = PACK + HERD + KILLER,
  optionsBitmask = AIENABLED,
  diet = CARNIVORE,

	templates = {"object/mobile/katarn.iff"},
	scale = 1.25,
  lootGroups = {},
  weapons = {},
  conversationTemplate = "",
  attacks = {
    {"stunattack",""},
    {"posturedownattack",""}
  }
}

CreatureTemplates:addCreatureTemplate(loth_wolf, "loth_wolf")
