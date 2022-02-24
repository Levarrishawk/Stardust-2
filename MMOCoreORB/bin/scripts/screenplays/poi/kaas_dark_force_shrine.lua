KaasDarkForceShrineScreenPlay = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "KaasDarkForceShrineScreenPlay"
}

registerScreenPlay("KaasDarkForceShrineScreenPlay", true)

function KaasDarkForceShrineScreenPlay:start()
  if (isZoneEnabled("kaas")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
  end
end

function KaasDarkForceShrineScreenPlay:spawnSceneObjects()

  spawnSceneObject("kaas", "object/tangible/jedi/force_shrine_stone.iff", -1123.3, 129, -4771.3, 0, math.rad(0) )
  spawnSceneObject("chandrila", "object/tangible/jedi/force_shrine_stone.iff", 4364, 97, -4298, 0, math.rad(0) )


end

function KaasDarkForceShrineScreenPlay:spawnMobiles()

  --[[
  local pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-79.6,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-85.8,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  
--]]
  
end
