local ObjectManager = require("managers.object.object_manager")

TalusMandalorianCovertScreenPlay = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "TalusMandalorianCovertScreenPlay"
}

registerScreenPlay("TalusMandalorianCovertScreenPlay", true)

function TalusMandalorianCovertScreenPlay:start()
  if (isZoneEnabled("talus")) then
    self:spawnMobiles()
    self:spawnSceneObjects()

  end
end

function TalusMandalorianCovertScreenPlay:spawnSceneObjects()

  spawnSceneObject("talus", "object/static/structure/corellia/corl_fountain_brazier_round_s01.iff", -60.8, -36, 110.9, 9895485, math.rad(90) )
  spawnSceneObject("talus", "object/tangible/tcg/series3/combine_object_mandalorian_skull_banner.iff", -20.2954, -24, 110.9, 9895520, math.rad(90) )
  
end

function TalusMandalorianCovertScreenPlay:spawnMobiles()

  --Outdoors
  local
    pNpc = spawnMobile("talus", "child_of_the_watch",60,-19.5,-28,108.2,90,9895520)
    self:setMoodString(pNpc, "neutral") 
    pNpc = spawnMobile("talus", "child_of_the_watch",60,-19.5,-28,114.1,90,9895520)
    self:setMoodString(pNpc, "neutral") 
    pNpc = spawnMobile("talus", "child_of_the_watch",60,-45.7,-36.0,114.0,-137,9895485)
    self:setMoodString(pNpc, "neutral")
    pNpc = spawnMobile("talus", "child_of_the_watch",60,-65.6,-36.0,103.6,-2,9895485)
    self:setMoodString(pNpc, "neutral")
  --end mobile spawns
end


