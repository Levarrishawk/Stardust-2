kaas_droideka = Creature:new {
	objectName = "@mob/creature_names:geonosian_droideka_crazed",
	customName = "a Malfunctioning Droideka",
	socialGroup = "dark_jedi",
	pvpFaction = "",
	faction = "",
	level = 175,
	chanceHit = 35.56,
	damageMin = 526,
	damageMax = 764,
	baseXp = 22650,
	baseHAM = 53183,
	baseHAMmax = 65124,
	armor = 0,
	resists = {40,40,55,45,30,50,40,40,35},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/droideka.iff"},
	lootGroups = {
    {
      groups = {
        {group = "clone_trooper_imperial", chance = 3000000},
        {group = "clone_trooper_neutral", chance = 4000000},
        {group = "clone_trooper_rebel", chance = 3000000}     -- 25% * 35% = 8.75%
      },
      lootChance = 1000000    -- 25% chance of this group
    },
    {
      groups = {
        {group = "clone_war_weapons", chance = 10000000}    -- 25% * 35% = 8.75%
      },
      lootChance = 1000000    -- 25% chance of this group
    },
    {
      groups = {
        {group = "armor_attachments", chance = 5000000},
        {group = "clothing_attachments", chance = 5000000},
      },
      lootChance = 1500000
    }

  },
	defaultAttack = "creaturerangedattack",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(kaas_droideka, "kaas_droideka")
