at_st = Creature:new {
	objectName = "@mob/creature_names:at_st",
	socialGroup = "imperial",
	faction = "imperial",
	mobType = MOB_VEHICLE,
	level = 125,
	chanceHit = 4.75,
	damageMin = 770,
	damageMax = 1250,
	baseXp = 11859,
	baseHAM = 50000,
	baseHAMmax = 61000,
	armor = 1,
	resists = {35,35,-1,100,100,15,15,100,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = NONE,

	templates = {"object/mobile/atst.iff"},
	lootGroups = {
    {
      groups = {
        {group = "color_crystals", chance = 100000},
        {group = "rebel_assault", chance = 6000000},
        {group = "weapons_all", chance = 1100000},
        {group = "armor_all", chance = 1100000},
        {group = "clothing_attachments", chance = 150000},
        {group = "armor_attachments", chance = 150000},
        {group = "stormtrooper_common", chance = 400000},
        {group = "wearables_all", chance = 1000000}
      }
    }
  },
	conversationTemplate = "",
	defaultAttack = "defaultdroidattack",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(at_st, "at_st")
