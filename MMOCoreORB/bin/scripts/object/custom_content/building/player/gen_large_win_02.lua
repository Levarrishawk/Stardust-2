object_building_player_generic_large_window_s02 = object_building_player_shared_generic_large_window_s02:new {
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
		{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -0.0654517, z = 0.518523, y = 8.82539, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 2, containmentType = -1},
		{templateFile = "object/tangible/sign/player/house_address.iff", x = 1, z = 3, y = -11.26, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1}
	},
	shopSigns = {
			{templateFile = "object/tangible/sign/player/house_address.iff", x = 1, z = 3, y = -11.26, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},				
			{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = 10.74, z = 0.49, y = -14.71, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_01", suiItem = "@player_structure:shop_sign1"},
			{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = 10.74, z = 0.49, y = -14.71, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_02", suiItem = "@player_structure:shop_sign2"},
			{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = 10.74, z = 0.49, y = -14.71, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_03", suiItem = "@player_structure:shop_sign3"},
			{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = 10.74, z = 0.49, y = -14.71, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_04", suiItem = "@player_structure:shop_sign4"},			
	},	
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_02.iff",
	length = 2,
	width = 2
}

ObjectTemplates:addTemplate(object_building_player_generic_large_window_s02, "object/building/player/generic_large_window_s02.iff")
