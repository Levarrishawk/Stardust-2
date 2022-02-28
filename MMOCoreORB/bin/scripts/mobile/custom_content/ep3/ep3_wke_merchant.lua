ep3_wke_merchant = Creature:new {
	customName = "a Wookiee Trading Co. Employee",
	planetMapCategory = "junkshop",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 100,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 9429,
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
	creatureBitmask = PACK,
	optionsBitmask = INVULNERABLE + CONVERSABLE,
	diet = HERBIVORE,

	templates = {
				"object/mobile/ep3/ep3_wke_merchant_01.iff",
				"object/mobile/ep3/ep3_wke_merchant_02.iff",
				"object/mobile/ep3/ep3_wke_merchant_03.iff",
				"object/mobile/ep3/ep3_wke_merchant_04.iff"
				},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "junkDealerGenericConvoTemplate",
	reactionStf = "",
	attacks = {}
}

CreatureTemplates:addCreatureTemplate(ep3_wke_merchant, "ep3_wke_merchant")
