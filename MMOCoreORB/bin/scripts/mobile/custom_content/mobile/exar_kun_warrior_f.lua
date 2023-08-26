exar_kun_warrior_f = Creature:new {
	customName = "The Executioner",
	randomNameTag = true,
	socialGroup = "kun",
	faction = "kun",
	level = 300,
	chanceHit = 0.24,
	damageMin = 2000,
	damageMax = 2500,
	baseXp = 62,
	baseHAM = 15000,
	baseHAMmax = 15000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + ENEMY,
  creatureBitmask = HERD,
  optionsBitmask = AIENABLED,
  diet = HERBIVORE,

	templates = {"object/mobile/exar_kun_warrior_f.iff"},
	lootGroups = {},
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
  -- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
  primaryWeapon = "force_sword",
  secondaryWeapon = "unarmed",
  conversationTemplate = "",

  -- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
  -- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
  primaryAttacks = merge(fencermid,swordsmanmid,pikemanmaster,brawlermaster,forcewielder),
  secondaryAttacks = forcewielder
}

CreatureTemplates:addCreatureTemplate(exar_kun_warrior_f, "exar_kun_warrior_f")
