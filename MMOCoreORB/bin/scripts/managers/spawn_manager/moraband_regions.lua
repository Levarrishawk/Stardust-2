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

moraband_regions = {
  {"dreshdae_valley", 1060, -5332, {1, 400}, NOSPAWNAREA + NOBUILDZONEAREA},
  {"valley_of_the_dark_lords", -1346, -830, {1, 1000}, NOBUILDZONEAREA},
  {"shyrack_cave", 457, -235, {1, 250}, NOBUILDZONEAREA},
  {"archaeological_outpost", -1712, -679, {1, 200}, NOBUILDZONEAREA + NOSPAWNAREA},
  {"world_spawner", 0, 0, {1, -1}, SPAWNAREA + WORLDSPAWNAREA, {"moraband_world", "global_hard"}, 2048}
}
