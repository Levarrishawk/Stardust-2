nabek_acolyte2 = Creature:new {
	customName = "Euyer (Nabek's Apprentice)",
	faction = "thug",
	socialGroup = "thug",
	level = 255,
	chanceHit = 7,
	damageMin = 700,
	damageMax = 1150,
	baseXp = 20000,
	baseHAM = 195000,
	baseHAMmax = 250000,
	armor = 1,
	resists = {45,60,40,45,45,60,60,40,15},
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
	
	templates = {
		"object/mobile/dressed_dark_jedi_human_male_01.iff"},
	
		lootGroups = {
		{
			groups = {

				{group = "loot_kit_parts", chance = 500000},
				{group = "armor_attachments", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "color_crystals", chance = 7500000},
			}
		}
	},
	weapons = {"dark_jedi_weapons_gen3"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster)
	}
	
	CreatureTemplates:addCreatureTemplate(nabek_acolyte2, "nabek_acolyte2")
