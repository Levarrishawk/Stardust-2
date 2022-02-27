object_building_player_emperors_house = object_building_player_shared_emperors_house:new {
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
	   {templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = 0, z = 0.9, y = -1.03874, ow = 1, ox = 0, oy = 0, oz = 0, cellid = 1, containmentType = -1}, --Downstairs Up Terminal
	   {templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = 0, z = 26.9, y = -1.01308, ow = 1, ox = 0, oy = 0, oz = 0, cellid = 1, containmentType = -1}, --Upstairs Down Terminal
           {templateFile = "object/tangible/sign/player/house_address.iff", x = 0, z = 4.7, y = 5.65, ox = 0, oy = 1, oz = 0, ow = 0, cellid = -1, containmentType = -1}, --Default House Sign
           {templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -0.00431081, z = 30.4829, y = -2.48567, ox = 0, oy = 1, oz = 0, ow = 0, cellid = 2, containmentType = -1}, --House control terminal
	},
        shopSigns = {
           {templateFile = "object/tangible/sign/player/house_address.iff", x = o, z = 4.7, y = 5.65, ox = 0, oy = 1, oz = 0, ow = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
           {templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = 1.8, z = 0.5, y = 8, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign1"},
           {templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = 1.8, z = 0.5, y = 8.5, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign2"},
           {templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = 1.8, z = 0.5, y = 8, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign3"},
           {templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = 1.8, z = 0.5, y = 8.5, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign4"},
        },

}

ObjectTemplates:addTemplate(object_building_player_emperors_house, "object/building/player/emperors_house.iff")
