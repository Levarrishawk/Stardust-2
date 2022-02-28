borda_the_hutt = Creature:new {
	objectName = "@mob/creature_names:borvo_the_hutt",
	customName = "Borda the Hutt",
	socialGroup = "borvo",
	--faction = "borvo",
	level = 100,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 9336,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED + CONVERSABLE + INTERESTING,
	diet = HERBIVORE,
	scale = 1.3,

	templates = {"object/mobile/borvo.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "swoop_race_hutt",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(borda_the_hutt, "borda_the_hutt")
