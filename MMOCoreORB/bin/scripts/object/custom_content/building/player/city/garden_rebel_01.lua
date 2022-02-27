object_building_player_city_garden_rebel_01 = object_building_player_city_shared_garden_rebel_01:new {
	lotSize = 0,
	baseMaintenanceRate = 0,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine"},
	length = 7,
	width = 7,
	cityRankRequired = 3,
	cityMaintenanceBase = 30000,
	abilityRequired = "place_large_garden",
	zoneComponent = "StructureZoneComponent",
	dataObjectComponent = "DecorationDataComponent",
	childObjects = {
		{templateFile = "object/tangible/terminal/terminal_player_structure_nosnap_mini.iff", x = 12, z = 1, y = -12, ox = 0, oy = 1, oz = 0, ow = 0, cellid = -1, containmentType = -1}
	}

}
ObjectTemplates:addTemplate(object_building_player_city_garden_rebel_01, "object/building/player/city/garden_rebel_01.iff")