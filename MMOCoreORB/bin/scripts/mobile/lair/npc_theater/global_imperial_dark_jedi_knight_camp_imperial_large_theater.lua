global_imperial_dark_jedi_knight_camp_imperial_large_theater = Lair:new {
	mobiles = {
		{"at_st", 1},
		{"fbase_elite_dark_trooper_hard", 2},
		{"stormtrooper_captain",1},
		{"stormtrooper_colonel",1},
		{"stormtrooper_groupleader",2},
		{"stormtrooper",4}
	},
	
	spawnLimit = 20,
	buildingsVeryEasy = {"object/building/poi/lok_imperial_large2.iff","object/building/poi/anywhere_imperial_base_large_1.iff"},
	buildingsEasy = {"object/building/poi/lok_imperial_large2.iff","object/building/poi/anywhere_imperial_base_large_1.iff"},
	buildingsMedium = {"object/building/poi/lok_imperial_large2.iff","object/building/poi/anywhere_imperial_base_large_1.iff"},
	buildingsHard = {"object/building/poi/lok_imperial_large2.iff","object/building/poi/anywhere_imperial_base_large_1.iff"},
	buildingsVeryHard = {"object/building/poi/lok_imperial_large2.iff","object/building/poi/anywhere_imperial_base_large_1.iff"},
	missionBuilding = "object/tangible/lair/base/objective_banner_imperial.iff",
	mobType = "npc",
	buildingType = "theater",
	faction = "imperial"
}

addLairTemplate("global_imperial_dark_jedi_knight_camp_imperial_large_theater", global_imperial_dark_jedi_knight_camp_imperial_large_theater)
