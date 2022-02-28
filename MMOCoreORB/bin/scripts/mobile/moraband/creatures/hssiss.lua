hssiss= Creature:new {
    customName = "a Hssiss",
	socialGroup = "kun",
	faction = "",
	level = 215,
	chanceHit = 2.75,
	damageMin = 800,
	damageMax = 1300,
	baseXp = 3521,
	baseHAM = 70800,
	baseHAMmax = 113000,
	armor = 0,

	-- {kinetic,energy,blast,heat,cold,electricity,acid,stun,ls}
	resists = {60,60,60,50,40,20,40,60,15},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
  scale = .3,

	templates = {
		"object/mobile/vog_eel.iff"},

	lootGroups = {
    {
      groups = {
        {group = "massassi_sith_weapons", chance = 750000},
        {group = "heavy_weapons", chance = 500000},
        {group = "rifles", chance = 750000},
        {group = "carbines", chance = 500000},
      },
      lootChance = 3000000
    }
  },
  weapons = {},
  conversationTemplate = "",
  attacks = {
    {"creatureareableeding",""},
    {"creatureareacombo",""}
  }
}
CreatureTemplates:addCreatureTemplate(hssiss, "hssiss")
