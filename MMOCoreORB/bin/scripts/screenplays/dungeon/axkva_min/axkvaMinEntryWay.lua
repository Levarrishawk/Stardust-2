axkvaMinEntryWay = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "axkvaMinEntryWay"
}

registerScreenPlay("axkvaMinEntryWay", true)

function axkvaMinEntryWay:start()
  if (isZoneEnabled("dathomir")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
  end
end

function axkvaMinEntryWay:spawnSceneObjects()
--Entry
  
  spawnSceneObject("dathomir", "object/tangible/terminal/terminal_axkva_min_entrance.iff", -90.5, -101, -102.2, 4115629, math.rad(0) )

end

function axkvaMinEntryWay:spawnMobiles()

  --[[
  local pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-79.6,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-85.8,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  
--]]
  
end
