the_collector = Creature:new {
	customName = "The Collector",
	randomNameTag = true,
	socialGroup = "kun",
	mobType = MOB_NPC,
	faction = "kun",
	level = 300,
	chanceHit = 4.75,
	damageMin = 1270,
	damageMax = 3000,
	baseXp = 12424,
	baseHAM = 850000,
	baseHAMmax = 900000,
	armor = 1,
	resists = {65,65,65,65,65,65,65,65,65},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	scale = 1.3,
	pvpBitmask = ATTACKABLE + ENEMY,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dark_jedi_male_zab_03.iff"},
	lootGroups = {
    {
      groups = {
        {group = "crystal_kuns_blood", chance = 714285},
        {group = "crystal_baass_wisdom", chance = 714285},
        {group = "crystal_dawn_of_dagobah", chance = 714285},
        {group = "crystal_henriettes_might", chance = 714285},
        {group = "crystal_dilly_dillys_damnation", chance = 714285},
		{group = "crystal_kenobis_legacy", chance = 714285},
		{group = "crystal_kits_ferocity", chance = 714285},
		{group = "crystal_mundis_response", chance = 714285},
		{group = "crystal_quintessence_of_the_force", chance = 714285},
		{group = "crystal_strength_of_luminara", chance = 714285},
		{group = "crystal_ulics_redemption", chance = 714285},
		{group = "crystal_wickeds_burn", chance = 714285},
		{group = "crystal_windus_guile", chance = 714285},
		{group = "crystal_righteous_fury", chance = 714285},
      },
      lootChance = 10000000,
    },
	
	{
      groups = {
        {group = "crystal_kuns_blood", chance = 714285},
        {group = "crystal_baass_wisdom", chance = 714285},
        {group = "crystal_dawn_of_dagobah", chance = 714285},
        {group = "crystal_henriettes_might", chance = 714285},
        {group = "crystal_dilly_dillys_damnation", chance = 714285},
		{group = "crystal_kenobis_legacy", chance = 714285},
		{group = "crystal_kits_ferocity", chance = 714285},
		{group = "crystal_mundis_response", chance = 714285},
		{group = "crystal_quintessence_of_the_force", chance = 714285},
		{group = "crystal_strength_of_luminara", chance = 714285},
		{group = "crystal_ulics_redemption", chance = 714285},
		{group = "crystal_wickeds_burn", chance = 714285},
		{group = "crystal_windus_guile", chance = 714285},
		{group = "crystal_righteous_fury", chance = 714285},
      },
      lootChance = 8000000,
    },
  },
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
  -- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
  primaryWeapon = "dark_jedi_weapons_gen4",
  secondaryWeapon = "unarmed",
  conversationTemplate = "",

  -- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
  -- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
  primaryAttacks = lightsabermaster,
  secondaryAttacks = forcepowermaster
}

CreatureTemplates:addCreatureTemplate(the_collector, "the_collector")
