nabek_naga = Creature:new {
	objectName = "@mob/creature_names:patron_chiss_female",
	customName = "Nabek Naga (a Dark Jedi Enforcer)",
	faction = "thug",
	socialGroup = "thug",
	level = 355, 
	chanceHit = 20,
	damageMin = 2100,
	damageMax = 3000,
	baseXp = 26654,
	baseHAM = 821000,
	baseHAMmax = 1192000,
	armor = 1,
	-- {kinetic,energy,blast,heat,cold,electricity,acid,stun,ls}
	resists = {75,45,55,80,80,70,55,70,20},
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

	templates = {"object/mobile/ep3/shared_ep3_etyyy_kara_corlon.iff"},
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
	weapons = {"dark_jedi_weapons_gen3"},
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(nabek_naga, "nabek_naga")
