outbreak_undead_deathtrooper_12_m = Creature:new {
	--customName = "@mob/creature_names:outbreak_undead_deathtrooper_12_m",
	customName = "Deathtrooper",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 50,
	chanceHit = 0.68,
	damageMin = 160,
	damageMax = 290,
	baseXp = 1514,
	baseHAM = 4000,
	baseHAMmax = 5500,
	armor = 0,
	resists = {25,25,25,25,25,25,25,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 1,
	pvpBitmask = ATTACKABLE, -- + ATTACKABLE + ENEMY,
	creatureBitmask = NONE, --KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/outbreak_undead_deathtrooper_12_m.iff"},
		
	lootGroups = {},
	--scale = 1.25,
	weapons = {},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(outbreak_undead_deathtrooper_12_m, "outbreak_undead_deathtrooper_12_m")
