jaajaabinks = Creature:new {
	objectName = "",
	customName = "Jar Jar Binks",
	socialGroup = "Dark Jedi",
	pvpFaction = "",
	faction = "",
	level = 280,
	chanceHit = 72.5,
	damageMin = 200,
	damageMax = 310,
	baseXp = 27849,
	baseHAM = 60000,
	baseHAMmax = 89000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,0},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/gungan_s03_male.iff"},
	scale = 1.0,
	lootGroups = {
		{
			groups = {
				{group = "krayt_pearls", chance = 10000000},
				
			},
			lootChance = 10000000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster)
}

CreatureTemplates:addCreatureTemplate(jaajaabinks, "jaajaabinks")
