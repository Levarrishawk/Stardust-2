exar_kun = Creature:new {
	customName = "Exar Kun",
	randomNameTag = true,
	socialGroup = "kun",
	faction = "kun",
	level = 200,
	chanceHit = 4.75,
	damageMin = 1770,
	damageMax = 2600,
	baseXp = 12424,
	baseHAM = 1610000,
	baseHAMmax = 1610000,
	armor = 2,
	resists = {85,85,85,85,95,85,85,95,85},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	scale = 1.3,
	pvpBitmask = ATTACKABLE + ENEMY,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/exar_kun.iff"},
	lootGroups = {
    {
      groups = {
        {group = "crystal_kuns_blood", chance = 2000000},
        {group = "nge_jedi_cloaks", chance = 2000000},
        {group = "massassi_sith_weapons", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },
    {
      groups = {
        {group = "crystal_kuns_blood", chance = 2000000},
        {group = "nge_jedi_cloaks", chance = 2000000},
        {group = "massassi_sith_weapons", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },
    {
      groups = {
        {group = "crystal_kuns_blood", chance = 2000000},
        {group = "nge_jedi_cloaks", chance = 2000000},
        {group = "massassi_sith_weapons", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },
    {
      groups = {
        {group = "crystal_kuns_blood", chance = 2000000},
        {group = "nge_jedi_cloaks", chance = 2000000},
        {group = "massassi_sith_weapons", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },
    {
      groups = {
        {group = "crystal_kuns_blood", chance = 2000000},
        {group = "nge_jedi_cloaks", chance = 2000000},
        {group = "massassi_sith_weapons", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    }, 
    {
      groups = {
        {group = "holocron_dark", chance = 2000000},
        {group = "power_crystals", chance = 2000000},
        {group = "massassi_sith_weapons", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    }, 
    {
      groups = {
        {group = "holocron_dark", chance = 2000000},
        {group = "power_crystals", chance = 2000000},
        {group = "massassi_sith_weapons", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    }, 
    {
      groups = {
        {group = "holocron_dark", chance = 2000000},
        {group = "power_crystals", chance = 2000000},
        {group = "massassi_sith_weapons", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    }, 
    {
      groups = {
        {group = "holocron_dark", chance = 2000000},
        {group = "power_crystals", chance = 2000000},
        {group = "massassi_sith_weapons", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },    
    {
      groups = {
        {group = "nge_jedi_cloaks", chance = 5000000},        
      },
      lootChance = 5000000,
    }, 
    {
      groups = {
        {group = "exar_kun_furniture", chance = 10000000},       
      },
      lootChance = 5000000,
    }, 
    {
      groups = {
        {group = "jedi_house_deeds", chance = 5000000},       
      },
      lootChance = 1000000,
    },       
  },
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
  -- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
  primaryWeapon = "dark_jedi_weapons_gen4",
  secondaryWeapon = "unarmed",
  conversationTemplate = "",

  -- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
  -- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
  primaryAttacks = lightsabermaster,
  secondaryAttacks = forcepowermaster
}

CreatureTemplates:addCreatureTemplate(exar_kun, "exar_kun")
