terentatek = Creature:new {
	customName = "a Terentatek",
	socialGroup = "graul",
  pvpFaction = "",
  faction = "",
  level = 100,
  chanceHit = 0.39,
  damageMin = 1690,
  damageMax = 1800,
  baseXp = 13005,
  baseHAM = 118400,
  baseHAMmax = 130200,
  armor = 0,
  resists = {50,20,-1,20,20,-1,-1,-1,-1},
  meatType = "meat_carnivore",
  meatAmount = 950,
  hideType = "hide_leathery",
  hideAmount = 875,
  boneType = "bone_mammal",
  boneAmount = 775,
  milk = 0,
  tamingChance = 0,
  ferocity = 10,
  pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
  creatureBitmask = PACK,
  optionsBitmask = AIENABLED,
  diet = CARNIVORE,

	templates = {"object/mobile/wod_mutant_rancor_boss.iff"},
	lootGroups = {},
  weapons = {},
  conversationTemplate = "",
  attacks = {
    {"intimidationattack","intimidationChance=50"},
    {"stunattack","stunChance=50"},
    {"knockdownattack","knockdownChance=95"}
  }
}
CreatureTemplates:addCreatureTemplate(terentatek, "terentatek")
