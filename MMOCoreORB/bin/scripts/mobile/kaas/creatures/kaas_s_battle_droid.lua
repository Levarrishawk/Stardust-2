kaas_s_battle_droid = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_super_battle_droid",
	customName = "a Malfunctioning Super Battle Droid",
	socialGroup = "dark_jedi",
	faction = "",
	level = 200,
	chanceHit = 1.8,
	damageMin = 327,
	damageMax = 577,
	baseXp = 19000,
	baseHAM = 172500,
	baseHAMmax = 323000,
	armor = 1,
	resists = {65,75,80,50,80,25,40,75,15},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	scale = 1.40,

	templates = {
		"object/mobile/death_watch_s_battle_droid.iff",
		"object/mobile/death_watch_s_battle_droid_02.iff",
		"object/mobile/death_watch_s_battle_droid_03.iff"},
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
      lootChance = 2500000    -- 25% chance of this group
    },
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000},
			},
			lootChance = 2000000
		}

	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "attack"
}

CreatureTemplates:addCreatureTemplate(kaas_s_battle_droid, "kaas_s_battle_droid")
