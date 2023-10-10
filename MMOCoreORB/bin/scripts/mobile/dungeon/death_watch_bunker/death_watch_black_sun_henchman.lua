death_watch_black_sun_henchman = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_blksun_henchman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "death_watch",
	faction = "",
	level = 76,
	chanceHit = 0.75,
	damageMin = 520,
	damageMax = 750,
	baseXp = 7207,
	baseHAM = 15000,
	baseHAMmax = 15000,
	armor = 1,
	resists = {35,35,50,25,45,60,25,30,-1},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.15,

	templates = {"object/mobile/dressed_black_sun_henchman.iff"},
	lootGroups = {
		{
			groups = {
				{group = "death_watch_bunker_commoners", chance = 9500000},
        {group = "death_watch_bh_armor_schematics", chance = 250000},       
        {group = "black_sun_weapons", chance = 250000},
			},
			lootChance = 9000000
		}
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "deathwatch_ranged",
	secondaryWeapon = "deathwatch_ranged",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(bountyhuntermaster,marksmanmaster,carbineermaster),
	secondaryAttacks = merge(bountyhuntermaster,marksmanmaster,carbineermaster),
}

CreatureTemplates:addCreatureTemplate(death_watch_black_sun_henchman, "death_watch_black_sun_henchman")
