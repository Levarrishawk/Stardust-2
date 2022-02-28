mutated_orkellian_slug = Creature:new {
    customName = "a Mutated Orkellian Slug",
	socialGroup = "kun",
	faction = "",
	level = 230,
	chanceHit = 2.75,
	damageMin = 790,
	damageMax = 1150,
	baseXp = 3921,
	baseHAM = 80300,
	baseHAMmax = 123012,
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

	lootGroups = {},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
  attacks = {
		{"intimidationattack","intimidationChance=80"},
    {"strongpoison",""},
    {"strongdisease",""},
    {"forcethrow2",""},
		{"knockdownfire",""},
		{"forceweaken2",""},
		{"forcechoke",""}
	}
}
CreatureTemplates:addCreatureTemplate(mutated_orkellian_slug, "mutated_orkellian_slug")
