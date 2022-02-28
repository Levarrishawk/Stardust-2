nandina = Creature:new {
	objectName = "@mob/creature_names:nightsister_rancor_tamer",
	customName = "Nandina",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 400,
	chanceHit = 2.75,
	damageMin = 1020,
	damageMax = 1500,
	baseXp = 7299,
	baseHAM = 112222,
	baseHAMmax = 122000,
	armor = 1,
	-- {kinetic,energy,blast,heat,cold,electricity,acid,stun,ls}
	resists = {30,80,30,50,50,50,50,75,100},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 2 * 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_rancor_tamer.iff"},
	lootGroups = {},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(swordsmanmid,fencermid,tkamid,pikemanmid,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(nandina, "nandina")
