exarKunEntryWay = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "exarKunEntryWay"
}

registerScreenPlay("exarKunEntryWay", true)

function exarKunEntryWay:start()
  if (isZoneEnabled("yavin4")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
  end
end

function exarKunEntryWay:spawnSceneObjects()
--Entry
  spawnSceneObject("yavin4", "object/static/structure/content/exar_kun_temple_cave_entrance.iff", 5026, 73, 5562, 0, math.rad(-90) )
  spawnSceneObject("yavin4", "object/tangible/terminal/terminal_exar_kun_entrance.iff", 5025, 73, 5574, 0, math.rad(0) )

end

function exarKunEntryWay:spawnMobiles()

  --[[
  local pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-79.6,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-85.8,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  
--]]
  
end
