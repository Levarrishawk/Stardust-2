hera_syndulla = Creature:new {	
	customName = "Hera Syndulla",
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
					"object/mobile/dressed_hera_syndulla.iff",				
					},
				
	lootGroups = {},
	weapons = {},	
	conversationTemplate = "theme_park_lothal_mission_giver_convotemplate",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(hera_syndulla, "hera_syndulla")
