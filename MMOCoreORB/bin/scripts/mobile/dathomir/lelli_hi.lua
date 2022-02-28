lelli_hi = Creature:new {
	objectName = "@mob/creature_names:nightsister_elder",
	customName = "Lelli Hi",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 331, -- Should drop Flawless Crystals
	chanceHit = 15.25,
	damageMin = 500,
	damageMax = 1400,
	baseXp = 26654,
	baseHAM = 135000,
	baseHAMmax = 137000,
	armor = 1,
	-- {kinetic,energy,blast,heat,cold,electricity,acid,stun,ls}
	resists = {100,100,75,15,15,70,70,75,75},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_elder.iff"},
	lootGroups = {},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(tkamaster,swordsmanmaster,fencermaster,pikemanmaster,brawlermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(lelli_hi, "lelli_hi")
