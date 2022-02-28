jakku_battle_droid = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_battle_droid",
	customName = "Imperial Protocol-77 Battle Droid",
	socialGroup = "death_watch",
	faction = "",
	level = 145,
	chanceHit = 5.5,
	damageMin = 450,
	damageMax = 600,
	baseXp = 12612,
	baseHAM = 57000,
	baseHAMmax = 58000,
	armor = 1,
	resists = {35,35,10,30,10,25,40,15,20},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.15,

	templates = {
	--	"object/mobile/death_watch_battle_droid.iff",
		"object/mobile/death_watch_battle_droid_02.iff"
	--	"object/mobile/death_watch_battle_droid_03.iff"
	},
	lootGroups = {
    {
      groups = {      
        {group = "jakku_weapons", chance = 300000},
        {group = "clothing_attachments", chance = 400000},
        {group = "armor_attachments", chance = 400000}
      }
    }
  },
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(jakku_battle_droid, "jakku_battle_droid")
