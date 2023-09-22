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

  spawnSceneObject("elysium", "object/static/structure/elysium/invisible_wall.iff", -0.1, 12, 31.5, 590000047, math.rad(0) )

end

function ElysiumVisionScreenPlay:spawnMobiles()

  --[[
  local pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-79.6,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-85.8,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  
--]]
  
end
