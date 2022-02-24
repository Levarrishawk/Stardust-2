object_building_player_diner_house = object_building_player_shared_diner_house:new {
  lotSize = 2,
  baseMaintenanceRate = 10,
  allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "chandrila", "moraband", "hutta"},
  constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
  length = 1,
  width = 1,
  publicStructure = 0,
  skillMods = {
    {"private_medical_rating", 100},
    {"private_med_wound_health", 100},
    {"private_med_wound_action", 100},
    {"private_buff_mind", 100},
    {"private_med_battle_fatigue", 5},
    {"private_safe_logout", 1}
  },
  childObjects = {
--      {templateFile = "object/tangible/sign/player/house_address.iff", x = 4.34, z = 3.4, y = 18.40, ox = 0, oy = 0.707107, oz = 0, ow = 0.707107, cellid = -1, containmentType = -1},
      {templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 9.3, z = 2.0, y = 0.1, ow = 0, ox = 0, oz = 0, oy = 0, cellid = 1, containmentType = -1}
--      {templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -2.66109, z = -0.513074, y = 0.0544102, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 7, containmentType = -1},
--      {templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = -2.65908, z = 5.39344, y = -0.0155522, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 7, containmentType = -1}
  }

}

ObjectTemplates:addTemplate(object_building_player_diner_house, "object/building/player/city/diner_no_planet_restriction.iff")