at_at_pvp = Creature:new {
	objectName = "@mob/creature_names:at_at",
	socialGroup = "imperial",
	faction = "imperial",
	level = 228,
	chanceHit = 19.75,
	damageMin = 210,
	damageMax = 500,
	baseXp = 21728,
	baseHAM = 20000,
	baseHAMmax = 54000,
	armor = 1,
	resists = {35,35,10,90,90,90,90,100,-1},
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

	templates = {"object/mobile/atat.iff"},
	lootGroups = {
    {
      groups = {
        {group = "color_crystals", chance = 100000},
        {group = "rebel_assault", chance = 6000000},
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

CreatureTemplates:addCreatureTemplate(at_at_pvp, "at_at_pvp")
