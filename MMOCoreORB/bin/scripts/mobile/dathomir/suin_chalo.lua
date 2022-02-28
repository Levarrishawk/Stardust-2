suin_chalo = Creature:new {
	objectName = "@mob/creature_names:nightsister_protector",
	customName = "Suin Chalo",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 170,
	chanceHit = 4.75,
	damageMin = 500,
	damageMax = 1500,
	baseXp = 14789,
	baseHAM = 100000,
	baseHAMmax = 110000,
	armor = 1,
	-- {kinetic,energy,blast,heat,cold,electricity,acid,stun,ls}
	resists = {15,75,15,75,75,75,75,75,-1},
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

	templates = {"object/mobile/dressed_dathomir_nightsister_protector.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 2000000},
				{group = "color_crystals", chance = 2000000},
				{group = "nightsister_common", chance = 2500000},
				{group = "clothing_attachments", chance = 1500000},   -- 60% * 15% = 9%
				{group = "melee_weapons", chance = 2000000},
			},
			lootChance = 6000000,   -- 60% chance for this group
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermaster,swordsmanmaster,tkamid,brawlermaster,pikemanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(suin_chalo, "suin_chalo")
