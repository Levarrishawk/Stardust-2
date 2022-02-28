wampa = Creature:new {
	customName = "Wampa",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 178,
	chanceHit = 12.25,
	damageMin = 1020,
	damageMax = 1750,
	baseXp = 16794,
	baseHAM = 120000,
	baseHAMmax = 120000,
	armor = 1,
	resists = {75,75,90,80,45,45,100,70,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/wampa.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""},
		{"creatureareaknockdown",""}
	}
}

CreatureTemplates:addCreatureTemplate(wampa, "wampa")
