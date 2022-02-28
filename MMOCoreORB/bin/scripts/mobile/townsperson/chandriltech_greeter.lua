chandriltech_greeter = Creature:new {
	objectName = "@mob/creature_names:businessman",
	customName = "Torod Thraxis (a Chandriltech Public Relations Officer)",
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
	resists = {0,0,0,0,0,0,0,-1,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED + CONVERSABLE + INTERESTING,
	diet = HERBIVORE,

	templates = {	"object/mobile/dressed_diplomat_human_male_03.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "chandriltech_greeter",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(chandriltech_greeter, "chandriltech_greeter")
