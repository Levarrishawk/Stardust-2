ewok_guard = Creature:new {
	objectName = "",
    customName = "An Ewok Guard",
	socialGroup = "Dark Jedi",
	pvpFaction = "",
	faction = "",
	level = 295,
	chanceHit = 0.29,
	damageMin = 650,
	damageMax = 750,
	baseXp = 709,
	baseHAM = 195000,
	baseHAMmax = 205000,
	armor = 0,
	resists = {15,15,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_ewok_f_04.iff",
		"object/mobile/dressed_ewok_f_09.iff",
		"object/mobile/dressed_ewok_m_07.iff",
		"object/mobile/dressed_ewok_m_02.iff"},
        scale = 0.7,
	lootGroups = {
		 {
	        groups = {
				{group = "ewok", chance = 10000000}
                                			},
			lootChance = 3000000
		}
	},
       
	weapons = {"darth_vader_weapons"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(ewok_guard, "ewok_guard")
