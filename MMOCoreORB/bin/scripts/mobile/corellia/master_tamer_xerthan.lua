master_tamer_xerthan = Creature:new {
	objectName = "@mob/creature_names:patron_chiss_male",
	customName = "Master Tamer Xerthan (Laen's Protoge)",
	faction = "thug",
	socialGroup = "thug",
	level = 300,
	chanceHit = 12.5,
	damageMin = 2000,
	damageMax = 3050,
	baseXp = 20000,
	baseHAM = 750000,
	baseHAMmax = 1250000,
	armor = 1,
	-- {kinetic, energy, electric, stun, blast, heat, cold, acid, ls}
	resists = {60,60,35,50,35,50,25,50,15},
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
	--Miniboss
	templates = {
			"object/mobile/shared_space_comm_quest_hortrix_steelarm_chiss_m.iff"},
			
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
	weapons = {"pirate_weapons_heavy"},
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster)
	}
	
	CreatureTemplates:addCreatureTemplate(master_tamer_xerthan, "master_tamer_xerthan")
