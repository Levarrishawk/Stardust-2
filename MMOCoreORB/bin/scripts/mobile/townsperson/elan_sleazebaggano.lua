elan_sleazebaggano = Creature:new {
	objectName = "@mob/creature_names:commoner",
	customName = "Elan Sleazebaggano",
	socialGroup = "townsperson",
	faction = "townsperson",
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
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = HERD,
  optionsBitmask = AIENABLED + CONVERSABLE + INTERESTING,
	diet = HERBIVORE,

	templates = {	"object/mobile/dressed_commoner_old_zabrak_male_01.iff"
					},
				
	lootGroups = {},
	weapons = {},
	conversationTemplate = "death_sticks",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(elan_sleazebaggano, "elan_sleazebaggano")
