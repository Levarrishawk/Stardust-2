mother_talzin = Creature:new {
	objectName = "@mob/creature_names:gethzerion",
	customName = "Mother Talzin",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 400,
	chanceHit = 1,
	damageMin = 1100,
	damageMax = 1900,
	baseXp = 94290,
	baseHAM = 1500000,
	baseHAMmax = 1500000,
	armor = 3,
	resists = {60,60,60,60,60,60,60,60,60},
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

	templates = {"object/mobile/gethzerion.iff"},
	lootGroups = {
    {
      groups = {
        {group = "crystal_mauls_vengeance", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },
    {
      groups = {
        {group = "crystal_mauls_vengeance", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },
    {
      groups = {
        {group = "crystal_mauls_vengeance", chance = 2000000},
        {group = "nge_jedi_cloaks", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },
    {
      groups = {
        {group = "crystal_mauls_vengeance", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },
    {
      groups = {
        {group = "crystal_mauls_vengence", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    }, 
    {
      groups = {
        {group = "holocron", chance = 2000000},
        {group = "power_crystals", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    }, 
    {
      groups = {
        {group = "holocron_dark", chance = 2000000},
        {group = "power_crystals", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    }, 
    {
      groups = {
        {group = "holocron_dark", chance = 2000000},
        {group = "power_crystals", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    }, 
    {
      groups = {
        {group = "holocron_dark", chance = 2000000},
        {group = "power_crystals", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },     
    {
      groups = {
        {group = "nightsister_bicep_r_s01", chance = 10000000},       
      },
      lootChance = 500000,
    },  
    {
      groups = {
        {group = "ns_clothing", chance = 10000000},       
      },
      lootChance = 2000000,
    }, 
    {
      groups = {
        {group = "jedi_house_deeds", chance = 10000000},       
      },
      lootChance = 1000000,
    },       
  },
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
  -- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
  primaryWeapon = "force_sword",
  secondaryWeapon = "unarmed",
  conversationTemplate = "",

  -- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
  -- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
  primaryAttacks = merge(tkamaster,swordsmanmaster,fencermaster,pikemanmaster,brawlermaster,forcepowermaster),
  secondaryAttacks = forcepowermaster
}

CreatureTemplates:addCreatureTemplate(mother_talzin, "mother_talzin")