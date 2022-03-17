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

lothal_regions = {  
  {"capital_city", -1297, -3146, {1, 500}, NOBUILDZONEAREA + WORLDSPAWNAREA, {"loth_cats"}, 512},
  {"capital_city_outskirts", -1297, -3146, {1, 2000}, NOBUILDZONEAREA},
  {"lothal_jedi_temple", 122, 4158, {1, 500}, NOBUILDZONEAREA + NOSPAWNAREA},
  {"easthills_bunker", 6370, -5559, {1, 250}, NOBUILDZONEAREA + NOSPAWNAREA},
  {"loth_wolf_cave", 6846, 620, {1, 500}, NOBUILDZONEAREA},
  {"first_settlement", -2715, 7287, {1, 450}, NOBUILDZONEAREA + NOSPAWNAREA},
  {"lothal_comm_tower", 384, -3143, {1, 150}, NOBUILDZONEAREA + NOSPAWNAREA},
  {"world_spawner", 0, 0, {1, -1}, SPAWNAREA + WORLDSPAWNAREA, {"loth_cats", "lothal_world"}, 2048}
}
