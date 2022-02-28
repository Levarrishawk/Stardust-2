at_xt = Creature:new {
	objectName = "@mob/creature_names:at_st",
	customName ="an AT-XT",
	socialGroup = "rebel",
	faction = "rebel",
	level = 125,
	chanceHit = 4.75,
	damageMin = 450,
	damageMax = 800,
	baseXp = 11859,
	baseHAM = 25000,
	baseHAMmax = 25000,
	armor = 0,
	resists = {35,35,35,35,35,15,15,15,-1},
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

	templates = {"object/mobile/atxt.iff"},
	lootGroups = {
    {
      groups = {
        {group = "color_crystals", chance = 100000},
        {group = "assault_trooper", chance = 6000000},
        {group = "weapons_all", chance = 1100000},
        {group = "armor_all", chance = 1100000},
        {group = "clothing_attachments", chance = 150000},
        {group = "armor_attachments", chance = 150000},
        {group = "rebel_officer_common", chance = 400000},
        {group = "wearables_all", chance = 1000000}
      }
    }
  },
	conversationTemplate = "",
	defaultAttack = "defaultdroidattack",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(at_xt, "at_xt")
