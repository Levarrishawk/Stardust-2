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

florrum_regions = {  
  {"hondo_camp", 3246, -754, {1, 200}, NOBUILDZONEAREA + NOSPAWNAREA},
  {"world_spawner", 0, 0, {1, -1}, SPAWNAREA + WORLDSPAWNAREA, {"florrum_world", "global"}, 2048}
}
