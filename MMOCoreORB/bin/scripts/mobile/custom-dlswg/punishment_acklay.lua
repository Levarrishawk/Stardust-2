punishment_acklay = Creature:new {
	objectName = "@mob/creature_names:geonosian_acklay_bunker_boss",
	customName = "a Captive Acklay",
	socialGroup = "geonosian_creature",
	faction = "",
	level = 400,
	chanceHit = 99,
	damageMin = 20000,
	damageMax = 20000,
	baseXp = 14884,
	baseHAM = 2000000,
	baseHAMmax = 2100000,
	armor = 3,
	resists = {99,99,99,99,99,99,99,99,99},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 25,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	 scale = 3.0,

	templates = {"object/mobile/acklay_hue.iff"},
	lootGroups = {
		{
			groups = {
				
			}
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack","stateAccuracyBonus=50"},
		{"creatureareacombo","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(punishment_acklay, "punishment_acklay")
