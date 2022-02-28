jakku_s_battle_droid = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_super_battle_droid",
	customName = "a Protocol-77 Super Battle Droid",
	socialGroup = "death_watch",
	faction = "",
	level = 200,
	chanceHit = 18,
	damageMin = 600,
	damageMax = 1100,
	baseXp = 19000,
	baseHAM = 230000,
	baseHAMmax = 230000,
	armor = 1,
	resists = {85,95,100,60,100,25,40,85,45},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	diet = NONE,
	scale = 2,

	templates = {
		"object/mobile/death_watch_s_battle_droid.iff",
		"object/mobile/death_watch_s_battle_droid_02.iff",
		"object/mobile/death_watch_s_battle_droid_03.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 2000000},
        {group = "holocron_dark", chance = 1000000},
        {group = "holocron_light", chance = 1000000},
        {group = "nge_weapons", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000}
			},
			lootChance = 5000000
		}
	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "attack"
}

CreatureTemplates:addCreatureTemplate(jakku_s_battle_droid, "jakku_s_battle_droid")
