lothal_easthills_bunker = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "lothal_easthills_bunker"
}

registerScreenPlay("lothal_easthills_bunker", true)

function lothal_easthills_bunker:start()
  if (isZoneEnabled("lothal")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
  end
end

function lothal_easthills_bunker:spawnSceneObjects()
--Entry
  
  spawnSceneObject("lothal", "object/static/structure/military/military_wall_med_rebl_16_style_01.iff", -0.1, -31.0, -26.4, 58000686, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/military/military_wall_med_rebl_16_style_01.iff", -16.1, -31.0, -26.0, 58000687, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/military/military_wall_med_rebl_16_style_01.iff", -4.9, -55.0, 20.9, 58000700, math.rad(90) )
  
end

function lothal_easthills_bunker:spawnMobiles()

  --[[
  local pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-79.6,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-85.8,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  
--]]
  
end
