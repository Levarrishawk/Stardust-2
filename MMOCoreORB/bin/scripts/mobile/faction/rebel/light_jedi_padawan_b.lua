light_jedi_padawan_b = Creature:new {
	customName = "a Jedi Padawan",	
	randomNameType = NAME_GENERIC,
  randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 300,
	chanceHit = 23.5,
	damageMin = 1845,
	damageMax = 2800,
	baseXp = 25266,
	baseHAM = 261000,
	baseHAMmax = 320000,
	armor = 1,
	-- {kinetic, energy, electric, stun, blast, heat, cold, acid, ls}
	resists = {75,75,75,75,75,75,75,75,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 2 * 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	lightsaberColor = 4,
	scale = 0.8,

	templates = {
		"object/mobile/dressed_dark_jedi_female_human_03.iff",
    "object/mobile/dressed_dark_jedi_female_twk_01.iff",
    "object/mobile/dressed_dark_jedi_male_human_02.iff",
    "object/mobile/dressed_dark_jedi_male_human_03.iff",
    	},
	
	lootGroups = {},
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
  -- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
  primaryWeapon = "light_jedi_weapons",
  secondaryWeapon = "unarmed",
  conversationTemplate = "",

  -- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
  -- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
  primaryAttacks = lightsabermaster,
  secondaryAttacks = forcepowermaster
}

CreatureTemplates:addCreatureTemplate(light_jedi_padawan_b, "light_jedi_padawan_b")
