archaeologist_leader = Creature:new {
	objectName = "@mob/creature_names:medic",
	customName = "Eleth Kor - an Imperial Archaeological Institute Leader",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 7,
	chanceHit = 0.260000,
	damageMin = 55,
	damageMax = 65,
	baseXp = 147,
	baseHAM = 270,
	baseHAMmax = 330,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED + CONVERSABLE + INTERESTING,
	diet = HERBIVORE,

	templates = {
				"object/mobile/dressed_doctor_trainer_human_female_01.iff",				
	},
	lootGroups = {},
	conversationTemplate = "archaeologist_leader",
	weapons = {},
	attacks = {}
}

CreatureTemplates:addCreatureTemplate(archaeologist_leader, "archaeologist_leader")
