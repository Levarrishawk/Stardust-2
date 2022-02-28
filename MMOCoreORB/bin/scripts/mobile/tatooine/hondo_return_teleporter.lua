hondo_return_teleporter = Creature:new {
	objectName = "@mob/creature_names:weequay_thug",
	customName = "Hondo Ohnaka",
	socialGroup = "townsperson",
	faction = "",
	level = 9,
	chanceHit = 0.27,
	damageMin = 80,
	damageMax = 90,
	baseXp = 356,
	baseHAM = 675,
	baseHAMmax = 825,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED + CONVERSABLE,
	diet = HERBIVORE,

	templates = {"object/mobile/weequay_male.iff"},
	outfit = "hondo_outfit",
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3000000},
				{group = "wearables_common", chance = 2000000},
				{group = "tailor_components", chance = 1500000},
				{group = "loot_kit_parts", chance = 2000000},
				{group = "printer_parts", chance = 1000000},
				{group = "weequay_common", chance = 500000}
			}
		}
	},
	weapons = {},
	conversationTemplate = "hondo_return_teleporter",
	attacks = {},
}

CreatureTemplates:addCreatureTemplate(hondo_return_teleporter, "hondo_return_teleporter")
