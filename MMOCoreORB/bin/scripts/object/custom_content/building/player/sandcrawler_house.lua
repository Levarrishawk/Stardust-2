object_building_player_sandcrawler_house = object_building_player_shared_sandcrawler_house:new {
	lotSize = 2,
	baseMaintenanceRate = 10,
	allowedZones = {"tatooine", "ghomrassen", "lok"},
	publicStructure = 0,
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 1,
	width = 1,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 15}
	},
	childObjects = {
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 6.21273, z = 3.52444, y = 0.603395, ow = 0.707107, ox = 0, oz = 0, oy = -0.707107, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/sign/player/house_address.iff", x = -8.84, z = 3.35, y = 0, ow = 0.70711, ox = 0, oz = 0, oy = 0.70711, cellid = -1, containmentType = -1}
	},
	shopSigns = {
			{templateFile = "object/tangible/sign/player/house_address.iff", x = -8.84, z = 3.35, y = 0, ow = 0.70711, ox = 0, oz = 0, oy = 0.70711, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
			{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = -6.29, z = -0.01, y = -2.53, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign1"},
			{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = -6.29, z = -0.01, y = -2.53, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign2"},
			{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = -6.29, z = -0.01, y = -2.53, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign3"},
			{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = -6.29, z = -0.01, y = -2.53, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign4"}			
	}

}

ObjectTemplates:addTemplate(object_building_player_sandcrawler_house, "object/building/player/sandcrawler_house.iff")
