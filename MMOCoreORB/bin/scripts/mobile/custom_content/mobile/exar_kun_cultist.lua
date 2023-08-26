exar_kun_cultist = Creature:new {
	customName = "an Exar Kun Cultist",
	randomNameTag = true,
	socialGroup = "kun",
	level = 250,
	chanceHit = 0.8,
	damageMin = 890,
	damageMax = 1500,
	baseXp = 8408,
	baseHAM = 75000,
	baseHAMmax = 95000,
	armor = 1,
	resists = {70,70,70,70,70,70,70,70,70},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY ,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/exar_kun_cultist.iff"},
	lootGroups = {
		
		{
			groups = {
				{group = "power_crystals", chance = 1500000},
				{group = "color_crystals", chance = 2000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "armor_attachments", chance = 500000},
				{group = "dark_jedi_common", chance = 200000},
			},
			lootChance = 4200000,
		},			
	},
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
  -- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
  primaryWeapon = "force_sword",
  secondaryWeapon = "pirate_weapons_light",
  conversationTemplate = "",

  -- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
  -- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
  primaryAttacks = merge(fencermaster,swordsmanmid,pikemanmaster,brawlermaster,marksmanmid),
  secondaryAttacks = marksmanmid
}

CreatureTemplates:addCreatureTemplate(exar_kun_cultist, "exar_kun_cultist")
