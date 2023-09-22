ElysiumVisionScreenPlay = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "ElysiumVisionScreenPlay"
}

registerScreenPlay("ElysiumVisionScreenPlay", true)

function ElysiumVisionScreenPlay:start()
  if (isZoneEnabled("elysium")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
  end
end

function ElysiumVisionScreenPlay:spawnSceneObjects()

  spawnSceneObject("elysium", "object/static/structure/elysium/invisible_wall.iff", -0.1, 12, 32.0, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/static/structure/elysium/invisible_wall.iff", -0.1, 16, 32.0, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/static/structure/elysium/invisible_wall.iff", -0.1, 20, 32.0, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/static/structure/elysium/invisible_wall.iff", -0.1, 24, 32.0, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/static/structure/elysium/invisible_wall.iff", -0.1, 28, 32.0, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/static/structure/elysium/invisible_wall.iff", -0.1, 30, 32.0, 590000047, math.rad(0) )
  
  spawnSceneObject("elysium", "object/static/structure/elysium/invisible_wall.iff", -14.9, 27, -147.9, 590000053, math.rad(90) )
  spawnSceneObject("elysium", "object/static/structure/elysium/invisible_wall.iff", -3.9, 27, -172.7, 590000067, math.rad(90) )
  
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", 0.5, 30, -177, 590000067, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", 0.5, 30, -65, 590000052, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/all/frn_all_holocron_dode.iff", 0, 15, 10, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_light_constant_blue.iff", 0, 17, 10, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/modern/flr_elysium.iff", 0, 12, 10, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_flocking_glowzees.iff", 0, 12, 10, 590000047, math.rad(0) )
end

function ElysiumVisionScreenPlay:spawnMobiles()

  --[[
  local pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-79.6,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-85.8,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  
--]]
  
end
