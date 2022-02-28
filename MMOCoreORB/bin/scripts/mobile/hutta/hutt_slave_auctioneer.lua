hutt_slave_auctioneer = Creature:new {
	objectName = "@mob/creature_names:borvo_the_hutt",
	customName = "Krelta Besadii (a Hutt Slave Auctioneer)",
	socialGroup = "borvo",
	faction = "borvo",
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
	milk = 2 * 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED+ CONVERSABLE + INTERESTING,
	diet = HERBIVORE,

	templates = {"object/mobile/borvo.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "hutt_slave_auctioneer",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(hutt_slave_auctioneer, "hutt_slave_auctioneer")
