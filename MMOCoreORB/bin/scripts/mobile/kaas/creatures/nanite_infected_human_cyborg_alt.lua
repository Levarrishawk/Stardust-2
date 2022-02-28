nanite_infected_human_cyborg_alt = Creature:new {
	customName = "a Nanite Infected Human Cyborg",
  --randomNameType = NAME_GENERIC,
	--randomNameTag = true,
	socialGroup = "",
	faction = "",
	level = 75,
	chanceHit = 0.24,
	damageMin = 140,
	damageMax = 500,
	baseXp = 62,
	baseHAM = 7500,
	baseHAMmax = 11800,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
  creatureBitmask = PACK + KILLER,
  optionsBitmask = AIENABLED,
  diet = CARNIVORE,

	templates = {"object/mobile/outbreak_undead_boss_m_hum_01.iff"},
	lootGroups = {
	{
      groups = {
        {group = "clone_war_weapons", chance = 1000000}    -- 25% * 35% = 8.75%
      },    
    },	
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(nanite_infected_human_cyborg_alt, "nanite_infected_human_cyborg_alt")
