local ObjectManager = require("managers.object.object_manager")


elysium_teleportation_network = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "elysium_teleportation_network"
}

registerScreenPlay("elysium_teleportation_network", true)

function elysium_teleportation_network:start()
  if (isZoneEnabled("elysium")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
  end
end

function elysium_teleportation_network:spawnSceneObjects()
--Entry
  spawnSceneObject("yavin4", "object/tangible/terminal/terminal_elysium_crystal_01.iff", -11.5, -19.3, 38.3, 8525439, math.rad(0) )
  spawnSceneObject("yavin4", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -11.5, -19.3, 38.3, 8525439, math.rad(0) )
  spawnSceneObject("yavin4", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", -6.75628, -14.65, 41.2188, 8525439, math.rad(-11) ) 
  spawnSceneObject("yavin4", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", 6.73885, -14.65, 41.2275, 8525439, math.rad(10) ) 
  
  
  
  spawnSceneObject("yavin4", "object/tangible/terminal/terminal_elysium_crystal_01.iff", 0.0, -43.4, -27.6, 3435634, math.rad(0) )
  spawnSceneObject("yavin4", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 0.0, -43.4, -27.6, 3435634, math.rad(0) )
  
  spawnSceneObject("dathomir", "object/tangible/terminal/terminal_elysium_crystal_01.iff", 5301, 78, -4151, 0, math.rad(0) )
  spawnSceneObject("dathomir", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 5301, 78, -4151, 0, math.rad(0) )
  spawnSceneObject("lothal", "object/tangible/terminal/terminal_elysium_crystal_01.iff", 103, 39, 4179, 0, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 103, 39, 4179, 0, math.rad(0) )
  spawnSceneObject("lothal", "object/static/particle/pt_flocking_glowzees.iff", 100, 39, 4182, 0, math.rad(0) )
  spawnSceneObject("lothal", "object/tangible/terminal/terminal_event_buffs.iff", 29, 24, 3409, 0, math.rad(90) )
--Exit
  spawnSceneObject("elysium", "object/tangible/terminal/terminal_elysium_crystal_02.iff", 2606.1, 0, 2500, 0, math.rad(0) )
  spawnSceneObject("elysium", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 2606.1, 0, 2500, 0, math.rad(0) )
  
-- Pathways
  spawnSceneObject("elysium", "object/tangible/terminal/terminal_elysium_obelisk.iff", 2606.1, 0, 2600, 0, math.rad(0) )

end

function elysium_teleportation_network:spawnMobiles()

  --[[
  local pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-79.6,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-85.8,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  
--]]
  
end
