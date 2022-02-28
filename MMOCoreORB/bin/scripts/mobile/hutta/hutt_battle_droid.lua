hutt_battle_droid = Creature:new {
	customName = "a Hutt Cartel Battle Droid",
	socialGroup = "hutt",
	faction = "hutt",
	level = 70,
	chanceHit = 0.27,
	damageMin = 2550,
	damageMax = 2800,
	baseXp = 235,
	baseHAM = 60000,
	baseHAMmax = 90000,
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
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/cww8_battle_droid.iff"},
	lootGroups = {
		{
			groups = {},
			lootChance = 2100000
		}
	},
	weapons = {"pirate_weapons_light"},
	conversationTemplate = "",
	attacks = merge(marksmannovice)
}

CreatureTemplates:addCreatureTemplate(hutt_battle_droid, "hutt_battle_droid")
