prophet_kadann = Creature:new {
	objectName = "@mob/creature_names:prophet_of_the_dark_side",
	customName ="Kadann (Supreme Prophet of the Dark Side)",
	socialGroup = "thug",
	faction = "prophets",
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
  optionsBitmask = AIENABLED + CONVERSABLE + INTERESTING,
  diet = HERBIVORE,

	templates = {
		"object/mobile/lord_hethrir.iff"},
		--"object/mobile/dressed_dark_jedi_human_female_01.iff"},
	lootGroups = {},
	outfit = "prophet_outfit",
  weapons = {},
  conversationTemplate = "prophet_kadann",
  attacks = {
  }
}

CreatureTemplates:addCreatureTemplate(prophet_kadann, "prophet_kadann")
