sabine_wren = Creature:new {	
	customName = "Sabine Wren",
	socialGroup = "townsperson",
	faction = "rebel",
	level = 4,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 62,
	baseHAM = 113,
	baseHAMmax = 138,
	armor = 0,
	resists = {15,15,15,15,15,15,15,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 2 * 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
  creatureBitmask = PACK,
  optionsBitmask = INVULNERABLE + CONVERSABLE + INTERESTING,
  diet = HERBIVORE,

	templates = {		        
					"object/mobile/dressed_sabine_wren.iff",				
					},
				
	lootGroups = {},
	weapons = {},
	outfit = "sabine_wren_outfit",
	conversationTemplate = "theme_park_lothal_mission_giver_convotemplate",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(sabine_wren, "sabine_wren")
