outbreak_undead_deathtrooper_04_m = Creature:new {
	--customName = "@mob/creature_names:outbreak_undead_deathtrooper_04_m",
	customName = "Deathtrooper",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 150,
	chanceHit = 5.0,
	damageMin = 400,
	damageMax = 990,
	baseXp = 11514,
	baseHAM = 14000,
	baseHAMmax = 15500,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/outbreak_undead_deathtrooper_04_m.iff"},
		
	lootGroups = {
	    {
			groups = {
				{group = "clothing_attachments", chance = 4500000},
				{group = "armor_attachments", chance = 2000000},
				{group = "nyms_common", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "tailor_components", chance = 500000}
			},
			lootChance = 9000000
		}
	},
	--scale = 1.25,
	weapons = {},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(outbreak_undead_deathtrooper_04_m, "outbreak_undead_deathtrooper_04_m")
