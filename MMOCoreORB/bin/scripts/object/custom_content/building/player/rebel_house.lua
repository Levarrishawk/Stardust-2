object_building_player_rebel_house = object_building_player_shared_rebel_house:new {
	lotSize = 2,
	baseMaintenanceRate = 10,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "dathomir", "kaas", "taanab", "ghomrassen"},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 1,
	width = 1,
	publicStructure = 0,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 15}
	},
	childObjects = {
			--{templateFile = "object/tangible/sign/player/house_address.iff", x = 4.34, z = 3.4, y = 18.40, ox = 0, oy = 0.707107, oz = 0, ow = 0.707107, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 0.0187063, z = 25.4031, y = -2.17012, ow = -4.37114e-08, ox = 0, oz = 0, oy = 1, cellid = 2, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = 0.00665405, z = 0.936668, y = -1.07417, ow = 1, ox = 0, oz = 0, oy = 0, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = 0.00665405, z = 25.1731, y = -1.07417, ow = 1, ox = 0, oz = 0, oy = 0, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/sign/player/house_address.iff", x = 1.87, z = 4.62, y = 4.30, ox = 0, oy = -0.99635, oz = 0, ow = 0.08542, cellid = -1, containmentType = -1}
	},
	shopSigns = {
			{templateFile = "object/tangible/sign/player/house_address.iff", x = 1.87, z = 4.62, y = 4.30, ox = 0, oy = -0.99635, oz = 0, ow = 0.08542, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
			{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = 1.53, z = 0.66, y = 8.14, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign1"},
			{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = 1.53, z = 0.66, y = 8.14, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign2"},
			{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = 1.53, z = 0.66, y = 8.14, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign3"},
			{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = 1.53, z = 0.66, y = 8.14, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign4"}		
	}

}

ObjectTemplates:addTemplate(object_building_player_rebel_house, "object/building/player/rebel_house.iff")
