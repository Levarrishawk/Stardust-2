laen_pieweto = Creature:new {
	objectName = "@mob/creature_names:patron_chiss_male",
	customName = "Laen Pieweto (Chiss Poacher Leader)",
	faction = "thug",
	socialGroup = "thug",
	level = 400, 
	chanceHit = 25,
	damageMin = 4000,
	damageMax = 6000,
	specialDamageMult = 5.5,
	baseXp = 26654,
	baseHAM = 1221000,
	baseHAMmax = 1592000,
	armor = 1,
	-- {kinetic,energy,blast,heat,cold,electricity,acid,stun,ls}
	resists = {65,55,55,75,75,70,55,70,25},
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

	templates = {"object/mobile/ep3/shared_ep3_etyyy_laen_pieweto.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 2500000},
				{group = "color_crystals", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},  

			},
			lootChance = 9000000,  -- 90% chance for this group
		},			
	},
	weapons = {"mixed_force_weapons"},
	reactionStf = "@npc_reaction/fancy",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
        {"creatureareaknockdown","stateAccuracyBonus=100"},
		{"intimidationattack","stateAccuracyBonus=75"}},
}

CreatureTemplates:addCreatureTemplate(laen_pieweto, "laen_pieweto")
