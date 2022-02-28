kimaru = Creature:new {
	objectName = "@mob/creature_names:nightsister_spell_weaver",
	customName = "Kimaru",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 157,
	chanceHit = 3.5,
	damageMin = 445,
	damageMax = 1500,
	baseXp = 10174,
	baseHAM = 154000,
	baseHAMmax = 163000,
	armor = 1,
	-- {kinetic,energy,blast,heat,cold,electricity,acid,stun,ls}
	resists = {25,50,25,75,75,75,75,75,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_spellweaver.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 1500000},
				{group = "color_crystals", chance = 2500000},
				{group = "nightsister_common", chance = 2500000},
				{group = "clothing_attachments", chance = 1500000},   -- 60% * 15% = 9%
				{group = "melee_weapons", chance = 2000000},
			},
			lootChance = 6000000,  -- 60% chance for this loot group
		},
		{
			groups = {

				{group = "rifles", chance = 2500000},
				{group = "pistols", chance = 2500000},
				{group = "carbines", chance = 2500000},
				{group = "wearables_common", chance = 2500000},
			},
			lootChance = 5000000, -- 50% chance for this group
		},		
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermaster,tkamaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(kimaru, "kimaru")
