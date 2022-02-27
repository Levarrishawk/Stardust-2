object_building_player_vehicle_house = object_building_player_shared_vehicle_house:new {
	lotSize = 2,
	baseMaintenanceRate = 10,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "taanab", "dathomir", "kaas", "taanab", "ghomrassen"},
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
			{templateFile = "object/tangible/terminal/terminal_bank.iff", x = 16.8956, z = 0.529974, y = 11.5692, ow = 0.707107, ox = 0, oz = 0, oy = -0.707107, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_mission.iff", x = -16.083, z = 0.529974, y = 8.12005, ow = -0.707107, ox = -0, oz = 0, oy = -0.707107, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/beta/beta_terminal_wound.iff", x = -16.2392, z = 0.529974, y = 11.5202, ow = -0.707107, ox = -0, oz = 0, oy = -0.707107, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 14.5356, z = 0.629973, y = 12.9319, ow = -4.37114e-08, ox = 0, oz = 0, oy = 1, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/sign/player/house_address.iff", x = -14.3417, z = 5.52997, y = 15.5785, ow = -1.49012e-07, ox = 0, oz = 0, oy = -1, cellid = -1, containmentType = -1}
	},
	shopSigns = {
			--{templateFile = "object/tangible/sign/player/house_address_tatooine.iff", x = 4.34, z = 3.4, y = 18.40, ox = 0, oy = 1, oz = 0, ow = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},	
			{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = -12.6249, z = 0.179972, y = 20.2403, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign1"},
			{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = -12.6249, z = 0.179972, y = 20.2403, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign2"},
			{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = -12.6249, z = 0.179972, y = 20.2403, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign3"},
			{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = -12.6249, z = 0.179972, y = 20.2403, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign4"},			
	},

}

ObjectTemplates:addTemplate(object_building_player_vehicle_house, "object/building/player/vehicle_house.iff")
