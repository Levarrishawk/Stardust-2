object_building_player_sm_hut_house = object_building_player_shared_sm_hut_house:new {
	lotSize = 2,
	baseMaintenanceRate = 10,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "dathomir", "kaas", "taanab", "ghomrassen"},
	publicStructure = 0,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 15}
	},
	childObjects = {
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 2.56417, z = 0.699501, y = 3.14297, ow = -4.37114e-08, ox = 0, oz = 0, oy = 1, containmentType = -1},
			{templateFile = "object/tangible/sign/player/house_address.iff", x = 1.20, z = 4.60, y = 5.50, ow = 0, ox = 0, oz = 0, oy = 1, cellid = -1, containmentType = -1}
	},
	shopSigns = {
			{templateFile = "object/tangible/sign/player/house_address.iff", x = 1.20, z = 4.60, y = 5.50, ow = 0, ox = 0, oz = 0, oy = 1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
			{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = -4.80, z = 0.78, y = 5.55, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign1"},
			{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = -4.80, z = 0.78, y = 5.55, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign2"},
			{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = -4.80, z = 0.78, y = 5.55, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign3"},
			{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = -4.80, z = 0.78, y = 5.55, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign4"}		
	}
}

ObjectTemplates:addTemplate(object_building_player_sm_hut_house, "object/building/player/sm_hut_house.iff")
