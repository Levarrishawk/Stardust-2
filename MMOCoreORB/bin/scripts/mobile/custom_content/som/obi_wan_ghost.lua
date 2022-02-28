obi_wan_ghost = Creature:new {
	customName = "Obi-Wan Kenobi",
	socialGroup = "townsperson",
	faction = "",
	level = 70,
	chanceHit = 0.27,
	damageMin = 550,
	damageMax = 800,
	baseXp = 235,
	baseHAM = 16000,
	baseHAMmax = 19000,
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
	scale = 1.1,
	pvpBitmask = NONE,
  creatureBitmask = PACK,
  optionsBitmask = AIENABLED + CONVERSABLE + INTERESTING,
  diet = HERBIVORE,

	templates = {"object/mobile/som/obi_wan_ghost.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "obi_wan_elysium",
	attacks = {
  }
	
}

CreatureTemplates:addCreatureTemplate(obi_wan_ghost, "obi_wan_ghost")
