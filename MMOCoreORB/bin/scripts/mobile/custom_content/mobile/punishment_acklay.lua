punishment_acklay = Creature:new {
	objectName = "@mob/creature_names:geonosian_acklay_bunker_boss",
	customName = "Acklay of Atonement",
	socialGroup = "geonosian_creature",
	faction = "",
	level = 157,
	chanceHit = 92.5,
	damageMin = 535,
	damageMax = 900,
	baseXp = 14884,
	baseHAM = 20000,
	baseHAMmax = 21000,
	armor = 1,
	resists = {80,80,80,80,80,80,80,80,-1},
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
