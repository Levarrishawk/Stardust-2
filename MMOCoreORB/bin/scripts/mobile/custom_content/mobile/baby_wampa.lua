baby_wampa = Creature:new {
	customName = "a baby Wampa",
	socialGroup = "wampa",
	faction = "",
	level = 25,
	chanceHit = 0.60,
	damageMin = 400,
	damageMax = 700,
	baseXp = 5,
	baseHAM = 86000,
	baseHAMmax = 87000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 1,
	ferocity = 0,
	pvpBitmask = BABY,
	creatureBitmask = NONE,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/wampa.iff"},
	scale = .20,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stunChance=100"},
		{"creatureareaknockdown","knockdownChance=100"}
	}
}

CreatureTemplates:addCreatureTemplate(baby_wampa, "baby_wampa")
