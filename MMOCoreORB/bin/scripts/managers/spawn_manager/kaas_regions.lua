-- Planet Region Definitions
-- This file has been generated with the SWGEmu World Spawner Tool.
--
-- {"regionName", xCenter, yCenter, shape and size, tier, {"spawnGroup1", ...}, maxSpawnLimit}
-- Shape and size is a table with the following format depending on the shape of the area:
--   - Circle: {1, radius}
--   - Rectangle: {2, width, height}
--   - Ring: {3, inner radius, outer radius}
-- Tier is a bit mask with the following possible values where each hexadecimal position is one possible configuration.
-- That means that it is not possible to have both a spawn area and a no spawn area in the same region, but
-- a spawn area that is also a no build zone is possible.

require("scripts.managers.spawn_manager.regions")

kaas_regions = {
  {"a_rebel_outpost",-6131,2705,{1,700},NOSPAWNAREA + NOBUILDZONEAREA},  -- kaas city

        {"borgle_bat_cave",2850,3890,{1,200},NOSPAWNAREA + NOBUILDZONEAREA}, -- smuggler op
        {"camp_and_BH",3342,2634,{1,200},NOSPAWNAREA + NOBUILDZONEAREA}, --gundark cave
        {"camp_and_skeleton",6017,-1141,{1,400},NOSPAWNAREA + NOBUILDZONEAREA}, --tomb of vitiate

        {"cobral_tent",-70,6370,{1,100},NOSPAWNAREA + NOBUILDZONEAREA}, -- ruined sith complex

  {"narmle_easy_newbie",-5205,-2290,{1,1400},SPAWNAREA,{"kaas_world"},256},
  {"narmle_medium_newbie",-5200,-2290,{3,1400,2200},SPAWNAREA,{"kaas_world"},384},


        {"rebel_outpost",3677,-6447,{1,1500},SPAWNAREA,{"kaas_world"},384},
  {"restuss",0,0,{1,0},UNDEFINEDAREA},
  {"restuss_easy_newbie",5300,5700,{1,1400},SPAWNAREA,{"kaas_world"},256},
  {"restuss_medium_newbie",5305,5700,{3,1400,2200},SPAWNAREA,{"kaas_world"},384},

  {"world_spawner",0,0,{1,-1},SPAWNAREA + WORLDSPAWNAREA,{"kaas_world","global"},2048},

}