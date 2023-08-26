exar_kun_caretaker = Creature:new {
	customName = "The Caretaker of the Lost",
	randomNameTag = true,
	socialGroup = "kun",
	faction = "kun",
	level = 140,
	chanceHit = 0.24,
	damageMin = 1540,
	damageMax = 1845,
	baseXp = 6200,
	baseHAM = 225000,
	baseHAMmax = 225000,
	armor = 3,
	resists = {50,100,100,100,50,100,50,50,100},
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

	templates = {"object/mobile/exar_kun_caretaker.iff"},	
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

CreatureTemplates:addCreatureTemplate(exar_kun_caretaker, "exar_kun_caretaker")
