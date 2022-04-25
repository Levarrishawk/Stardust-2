vash_dlarku = Creature:new {
	objectName = "@mob/creature_names:patron_chiss_male",
	customName = "Vash Dlarku (Chiss Poacher Clan Pilot)",
	faction = "thug",
	socialGroup = "thug",
	level = 330,
	chanceHit = 12.5,
	damageMin = 1700,
	damageMax = 2650,
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
	diet = NONE,
	--Miniboss
	templates = {"object/mobile/dressed_tatooine_jabba_henchman.iff"},

		lootGroups = {},
	weapons = {"st_bombardier_weapons"},
	attacks = merge(commandomaster,marksmanmaster,brawlermaster),
	--Special Attacks
	attacks = {{"intimidationattack","stateAccuracyBonus=100"},
						{"flamecone2","stateAccuracyBonus=65"},
		    		{"flamesingle2","accuracyBonus=45"},
		},
	reactionStf = "@npc_reaction/fancy",

	}

	CreatureTemplates:addCreatureTemplate(vash_dlarku, "vash_dlarku")
