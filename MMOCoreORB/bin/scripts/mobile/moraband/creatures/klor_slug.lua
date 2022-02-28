klor_slug = Creature:new {
    customName = "a K'lor'slug",
	socialGroup = "kun",
	faction = "",
	level = 230,
	chanceHit = 2.75,
	damageMin = 790,
	damageMax = 1150,
	baseXp = 3921,
	baseHAM = 10300,
	baseHAMmax = 23012,
	armor = 0,
	-- {kinetic,energy,blast,heat,cold,electricity,acid,stun,ls}
	resists = {65,80,55,25,70,70,20,35,15},
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
	diet = CARNIVORE,
  scale = 1.3,

	templates = {
		"object/mobile/col_forage_carnivorous_worm.iff"},

	lootGroups = {
    {
      groups = {
        {group = "massassi_sith_weapons", chance = 5000000},
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
CreatureTemplates:addCreatureTemplate(klor_slug, "klor_slug")
