object_building_player_yt1300_house = object_building_player_shared_yt1300_house:new {
	lotSize = 2,
	baseMaintenanceRate = 10,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "dathomir", "kaas", "taanab", "ghomrassen"},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	publicStructure = 0,
	length = 1,
	width = 1,
	skillMods = {
		{"private_medical_rating", 300},
		{"private_buff_mind", 300},
		{"private_med_battle_fatigue", 15}
	},
	childObjects = {
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 13.7399, z = 4.85844, y = 0.0375382, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -2.57692, z = -0.963074, y = 0.00377454, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 7, containmentType = -1}, --Floor 1
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = -2.57692, z = 5.19344, y = 0.00377454, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 7, containmentType = -1}, --floor 2
			{templateFile = "object/tangible/sign/player/house_address.iff", x = -5.96, z = 1.56, y = 1.82, ow = 0.25545, ox = 0, oz = 0, oy = 0.96682, cellid = -1, containmentType = -1}
	},
	shopSigns = {
			{templateFile = "object/tangible/sign/player/house_address.iff", x = -5.96, z = 1.56, y = 1.82, ow = 0.25545, ox = 0, oz = 0, oy = 0.96682, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
			{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign1"},
			{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign2"},
			{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign3"},
			{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign4"}			
	}
}

ObjectTemplates:addTemplate(object_building_player_yt1300_house, "object/building/player/yt1300_house.iff")
