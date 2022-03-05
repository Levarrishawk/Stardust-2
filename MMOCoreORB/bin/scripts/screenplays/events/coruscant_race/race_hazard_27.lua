local ObjectManager = require("managers.object.object_manager")

pvp27 = ScreenPlay:new {
  numberOfActs = 1,
    questString = "pvp27",
    states = {onleave = 1, overt = 2},
    questdata = Object:new {
      activePlayerName = "initial",
      }
}
  
registerScreenPlay("pvp27", true)
  
function pvp27:start()
      self:spawnActiveAreas()
      self:spawnSceneObjects()
      self:spawnMobiles()
end

function pvp27:spawnSceneObjects()
  --spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw.iff", -6021, 75, 5514, 0, math.rad(30) )
  
end

function pvp27:spawnMobiles()
 --   spawnMobile("jakku", "dark_jedi_sentinel",1, 4325,7,-5097,0,0)
end
  
function pvp27:spawnActiveAreas()
  local pSpawnArea = spawnSceneObject("coruscant", "object/active_area.iff", -5795, 0, -4741, 0, 0, 0, 0, 0)
    
  if (pSpawnArea ~= nil) then
    local activeArea = LuaActiveArea(pSpawnArea)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(2)
          createObserver(ENTEREDAREA, "pvp27", "notifyElectroShock", pSpawnArea)
      end
end
 


function pvp27:notifyElectroShock(pActiveArea, pMovingObject)
  if (pMovingObject == nil or pActiveArea == nil or not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end

  if (SceneObject(pMovingObject):isAiAgent() and not AiAgent(pMovingObject):isPet()) then
    return 0
  end

  CreatureObject(pMovingObject):inflictDamage(pMovingObject, 0, 3000, 0)
  CreatureObject(pMovingObject):sendSystemMessage("The energy sphere damages your vehicle!  Try to avoid them!") --You feel electricity coursing through your body!
  return 0
end
