exar_kun_fist_of_hate = Creature:new {
	customName = "The Clenched Fist of Hate",
	randomNameTag = true,
	socialGroup = "kun",
	faction = "kun",
	level = 400,
	chanceHit = 0.24,
	damageMin = 1400,
	damageMax = 1900,
	baseXp = 62,
	baseHAM = 300000,
	baseHAMmax = 300000,
	armor = 0,
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
	scale = 1.2,
	pvpBitmask = ATTACKABLE + ENEMY,
  creatureBitmask = HERD,
  optionsBitmask = AIENABLED,
  diet = HERBIVORE,

	templates = {"object/mobile/exar_kun_fist_of_hate.iff"},
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

CreatureTemplates:addCreatureTemplate(exar_kun_fist_of_hate, "exar_kun_fist_of_hate")
