local ObjectManager = require("managers.object.object_manager")

pvp46 = ScreenPlay:new {
  numberOfActs = 1,
    questString = "pvp46",
    states = {onleave = 1, overt = 2},
    questdata = Object:new {
      activePlayerName = "initial",
      }
}
  
registerScreenPlay("pvp46", true)
  
function pvp46:start()
      self:spawnActiveAreas()
      self:spawnSceneObjects()
      self:spawnMobiles()
end

function pvp46:spawnSceneObjects()
  --spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw.iff", -6021, 75, 5514, 0, math.rad(30) )
  
end

function pvp46:spawnMobiles()
 --   spawnMobile("jakku", "dark_jedi_sentinel",1, 4325,7,-5097,0,0)
end
  
function pvp46:spawnActiveAreas()
  local pSpawnArea = spawnSceneObject("coruscant", "object/active_area.iff", -5869, 0, -4884, 0, 0, 0, 0, 0)
    
  if (pSpawnArea ~= nil) then
    local activeArea = LuaActiveArea(pSpawnArea)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(2)
          createObserver(ENTEREDAREA, "pvp46", "notifyElectroShock", pSpawnArea)
      end
end
 


function pvp46:notifyElectroShock(pActiveArea, pMovingObject)
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
