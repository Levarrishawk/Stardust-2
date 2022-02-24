local ObjectManager = require("managers.object.object_manager")

isd_active_areas = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "isd_active_areas"
}

registerScreenPlay("isd_active_areas", true)

function isd_active_areas:start()
  if (isZoneEnabled("dungeon2")) then
    self:spawnSceneObjects()
    self:spawnActiveArea1()
    self:spawnActiveArea2()
  end
end

function isd_active_areas:spawnSceneObjects()

--  spawnSceneObject("chandrila", "object/tangible/terminal/terminal_elevator_up.iff", 75.49, -50, 59.1604, 35792158, math.rad(-90) )
  
end


function isd_active_areas:spawnActiveArea1()
  local pSpawnArea1 = spawnSceneObject("dungeon2", "object/active_area.iff", -2999, 173, -2946, 0, 480000038)
    
  if (pSpawnArea1 ~= nil) then
    local activeArea1 = LuaActiveArea(pSpawnArea1)
          activeArea1:setCellObjectID(480000038)
          activeArea1:setRadius(512)
          createObserver(ENTEREDAREA, "isd_active_areas", "notifySpawnArea1", pSpawnArea1)          
      end
end

function isd_active_areas:notifySpawnArea1(pActiveArea1, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral())) then   
      player:playMusicMessage("sound/mus_isd_hangar.snd")
      
      end
    return 0    
  end)
end

function isd_active_areas:spawnActiveArea2()
  local pSpawnArea2 = spawnSceneObject("dungeon2", "object/active_area.iff", -3086, 173, -2738, 0, 480000013)
    
  if (pSpawnArea2 ~= nil) then
    local activeArea2 = LuaActiveArea(pSpawnArea2)
          activeArea2:setCellObjectID(480000013)
          activeArea2:setRadius(512)
          createObserver(ENTEREDAREA, "isd_active_areas", "notifySpawnArea2", pSpawnArea2)          
      end
end

function isd_active_areas:notifySpawnArea2(pActiveArea2, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral())) then   
      player:playMusicMessage("sound/mus_isd_briefing.snd")
      
      end
    return 0    
  end)
end

function republic_corvette:spawnActiveArea3()
  local pSpawnArea3 = spawnSceneObject("dungeon2", "object/active_area.iff", -3000, 453, -2672, 0, 480000055)
    
  if (pSpawnArea3 ~= nil) then
    local activeArea3 = LuaActiveArea(pSpawnArea3)
          activeArea3:setCellObjectID(480000055)
          activeArea3:setRadius(512)
          createObserver(ENTEREDAREA, "isd_active_areas", "notifySpawnArea3", pSpawnArea3)
          --createObserver(EXITEDAREA, "ChandrilTechScreenPlay", "notifySpawnAreaLeave", pSpawnArea1)
      end
end

function republic_corvette:notifySpawnArea3(pActiveArea3, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral())) then

      --player:sendSystemMessage("ATTENTION: Worker Revolt in Progress on Level Three.  Security to Level Three.")
      player:playMusicMessage("sound/mus_isd_hangar2.snd")
      
      end
    return 0    
  end)
end
