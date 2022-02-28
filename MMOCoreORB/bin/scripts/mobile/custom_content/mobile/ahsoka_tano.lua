ahsoka_tano = Creature:new {
	customName ="Ahsoka Tano",
	socialGroup = "none",
	faction = "rebel",
	level = 126,
	chanceHit = 4,
	damageMin = 745,
	damageMax = 1200,
	baseXp = 11953,
	baseHAM = 44000,
	baseHAMmax = 54000,
	armor = 0,
	resists = {80,80,80,80,80,80,80,80,-1},
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
		"object/mobile/dressed_jedi_female_togruta_01.iff"},
		--"object/mobile/dressed_dark_jedi_human_female_01.iff"},
	lootGroups = {},
  weapons = {},
  --outfit = "prophet_outfit",
  conversationTemplate = "theme_park_lothal_mission_giver_convotemplate",
  attacks = {
  }
}

CreatureTemplates:addCreatureTemplate(ahsoka_tano, "ahsoka_tano")
