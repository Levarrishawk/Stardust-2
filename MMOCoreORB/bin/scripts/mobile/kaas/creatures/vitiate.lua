vitiate = Creature:new {
	objectName = "@theme_park_name:emperor_palpatine",
	customName = "Vitiate",
	socialGroup = "dark_jedi",
	level = 300,
	chanceHit = 1,
	damageMin = 445,
	damageMax = 700,
	baseXp = 9429,
	baseHAM = 240000,
	baseHAMmax = 300000,
	armor = 0,
	resists = {50,50,50,50,50,50,50,50,50},
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
  creatureBitmask = KILLER + STALKER,
  optionsBitmask = AIENABLED,
  diet = HERBIVORE,
	scale = 1.1,

	templates = {"object/mobile/ep3/palpatine_hologram.iff"},
	lootGroups = {
    {
      groups = {
        {group = "holocron_dark", chance = 1000000},        
        {group = "named_crystals", chance = 500000},
        {group = "massassi_sith_weapons", chance = 1000000},
        {group = "armor_attachments", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "kaas_weapons", chance = 1000000},
        {group = "dark_jedi_common", chance = 1000000}
      },
      lootChance = 10000000,
    }
  },
	weapons = {"dark_jedi_weapons_gen4"},
  conversationTemplate = "",
  attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(vitiate, "vitiate")
