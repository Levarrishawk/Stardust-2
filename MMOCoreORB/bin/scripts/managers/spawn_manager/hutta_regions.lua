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

hutta_regions = {
  {"bilbousa_city", -746, 1645, {1, 700}, NOSPAWNAREA + NOBUILDZONEAREA}, 
  {"abandoned_spice_mine", 1500, 4288, {1, 200}, NOBUILDZONEAREA}, 
  {"eastern_grime", 4892, 1757, {1, 450}, NOBUILDZONEAREA},
  {"world_spawner", 0, 0, {1, -1}, SPAWNAREA + WORLDSPAWNAREA, {"hutta_world", "global_hard"}, 2048}
}
