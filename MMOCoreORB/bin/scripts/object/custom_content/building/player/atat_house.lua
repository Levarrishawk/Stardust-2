object_building_player_atat_house = object_building_player_shared_atat_house:new {
	lotSize = 2,
	baseMaintenanceRate = 10,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "dathomir", "kaas", "taanab", "ghomrassen"},
	publicStructure = 0,
	length = 1,
	width = 1,
	skillMods = {
		{"private_medical_rating", 300},
		{"private_buff_mind", 300},
		{"private_med_battle_fatigue", 15}
	},
	childObjects = {
	   {templateFile = "object/tangible/sign/player/house_address.iff", x = 6.25, z = 20.5, y = -0.75, ox = 0, oy = 0.707107, oz = 0, ow = -0.707107, cellid = -1, containmentType = -1},
	   {templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 4.75, z = 18.05, y = -1.76, ox = 0, oy = -0.707107, oz = 0, ow = 0.707107, cellid = 1, containmentType = -1}
	},
        shopSigns = {
           {templateFile = "object/tangible/sign/player/house_address.iff", x = 6.25, z = 20.5, y = -0.75, ox = 0, oy = 0.707107, oz = 0, ow = -0.707107, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
           {templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = 9.4, z = 17.5, y = -1.5, ox = 0, oy = 0.707107, oz = 0, ow =  0.707107, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign1"},
           {templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = 9.4, z = 17.5, y = -1.5, ox = 0, oy = 0.707107, oz = 0, ow =  0.707107, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign2"},
           {templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = 9.4, z = 17.5, y = -1.5, ox = 0, oy = 0.707107, oz = 0, ow =  0.707107, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign3"},
           {templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = 9.4, z = 17.5, y = -1.5, ox = 0, oy = 0.707107, oz = 0, ow =  0.707107, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign4"},
        },
		
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff"
}

ObjectTemplates:addTemplate(object_building_player_atat_house, "object/building/player/atat_house.iff")
