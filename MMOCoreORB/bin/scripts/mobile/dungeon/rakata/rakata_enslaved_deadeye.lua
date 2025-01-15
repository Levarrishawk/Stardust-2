rakata_enslaved_deadeye = Creature:new {
	customName = "an Enslaved Deadeye",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 25.0,
	damageMin = 1225,
	damageMax = 1925,
	baseXp = 25000,
	baseHAM = 200000,
	baseHAMmax = 300000,
	armor = 1,
	resists = {135,135,135,45,65,45,65,45,135},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.1,

	templates = {"object/mobile/dressed_dark_side_savage.iff"}, -- Placeholder, need a new one.
	lootGroups = {
	},
	
	primaryWeapon = "", -- Needs a Primary. Deadeye so Rifles makes sense.
	secondaryWeapon = "",
	conversationTemplate = "",
	
	--primaryAttacks = merge(), -- Probably Master Marks / Rifles.
	--secondaryAttacks = merge()
}

CreatureTemplates:addCreatureTemplate(rakata_enslaved_deadeye, "rakata_enslaved_deadeye")
