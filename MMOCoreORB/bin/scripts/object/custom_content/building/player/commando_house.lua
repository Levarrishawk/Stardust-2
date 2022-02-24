object_building_player_commando_house = object_building_player_shared_commando_house:new {
	lotSize = 2,
	baseMaintenanceRate = 10,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "dathomir", "kaas", "taanab"},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 1,
	width = 1,
	publicStructure = 0,
	skillMods = {
		{"private_medical_rating", 300},
		{"private_buff_mind", 300},
		{"private_med_battle_fatigue", 15}
	},
	childObjects = {
                        {templateFile = "object/tangible/sign/player/house_address.iff", x = 3.325, z = 2.5, y = 6.125, ox = 0, oy = 1, oz = 0, ow = 0 , cellid = -1, containmentType = -1}, --Default House Sign
                        {templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 0.00543379, z = 0.5, y = -6.25, ox = 0, oy = 0, oz = 0, ow = 1, cellid = 1, containmentType = -1}, --House control terminal
	},
        shopSigns = {
           {templateFile = "object/tangible/sign/player/house_address.iff", x = 3.325, z = 2.5, y = 6.125, ox = 0, oy = 1, oz = 0, ow = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
           {templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = 5.25, z = 0.25, y = 8.75, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign1"},
           {templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = 5.25, z = 0.25, y = 9.0, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign2"},
           {templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = 5.25, z = 0.25, y = 8.75, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign3"},
           {templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = 5.25, z = 0.25, y = 9.0, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:shop_sign4"},
        },

	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 5,
	width = 5
}

ObjectTemplates:addTemplate(object_building_player_commando_house, "object/building/player/commando_house.iff")
