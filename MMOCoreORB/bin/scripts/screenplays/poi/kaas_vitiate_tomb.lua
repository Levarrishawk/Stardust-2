local ObjectManager = require("managers.object.object_manager")

KaasVitiateScreenPlay = ScreenPlay:new {
	numberOfActs = 1;
}

registerScreenPlay("KaasVitiateScreenPlay", true)

function KaasVitiateScreenPlay:start()
	self:spawnMobiles()
	self:spawnActiveArea1()
end

function KaasVitiateScreenPlay:spawnMobiles()
-- Entrance

  local pMobile = spawnMobile("kaas", "insane_vitiate_cultist", 60, 5934, 80, -1093, -116, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("kaas", "insane_vitiate_cultist", 60, 5893, 80, -1087, -116, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
        
  pMobile = spawnMobile("kaas", "insane_vitiate_cultist", 60, 5870, 80, -1100, -116, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")     
  
  pMobile = spawnMobile("kaas", "insane_vitiate_cultist", 60, 5884, 80, -1075, -116, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")   
  
  pMobile = spawnMobile("kaas", "insane_vitiate_cultist", 60, 5871, 80, -1074, -116, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")   
  
  pMobile = spawnMobile("kaas", "insane_vitiate_cultist", 60, 5875, 80, -1085, -116, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")  
  
  pMobile = spawnMobile("kaas", "insane_vitiate_cultist", 60, 5887, 80, -1102, -116, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")  

  spawnMobile("kaas", "sith_ghost", 200, -10.9, 0.0, -2.4, 179, 36000092) 
  spawnMobile("kaas", "insane_vitiate_cultist", 200, -19.4, 0.0, -2.5, 90, 36000092)  
  spawnMobile("kaas", "sith_ghost", 200, -19.5, 0.0, -23.3, 0, 36000094) 
  spawnMobile("kaas", "insane_vitiate_cultist", 200, -8.5, 0.0, -24.4, -90, 36000094)
  spawnMobile("kaas", "sith_ghost", 200, -8.5, 0.0, -22.0, -90, 36000094)
  
  spawnMobile("kaas", "insane_vitiate_cultist", 200, -0.3, -0.0, -32.2, 0, 36000095) 
  spawnMobile("kaas", "sith_ghost", 200, 2.1, 0.0, -43.1, 0, 36000095) 
  spawnMobile("kaas", "insane_vitiate_cultist", 200, -0.2, 0.0, -40.0, 179, 36000095) 
  spawnMobile("kaas", "sith_ghost", 200, -4.1, 0.0, -43.4, 90, 36000095) 
  
  spawnMobile("kaas", "insane_vitiate_cultist", 200, -12.6, -4.0, -35.7, 179, 36000096)
  spawnMobile("kaas", "sith_ghost", 200, 0.7, -6.0, -29.9, 179, 36000097)
  spawnMobile("kaas", "sith_ghost", 200, 15.0, -6.0, -18.8, -90, 36000097)
  spawnMobile("kaas", "insane_vitiate_cultist", 200, 23.4, -6.5, -6.3, -45, 36000098)
  spawnMobile("kaas", "sith_ghost", 200, -22.7, -6.5, -6.5, 45, 36000099)
  spawnMobile("kaas", "sith_ghost", 200, -2.8, -6.4, -4.1, -90, 36000100)
  spawnMobile("kaas", "insane_vitiate_cultist", 200, -6.1, -6.4, -1.6, 179, 36000100)
  spawnMobile("kaas", "sith_ghost", 200, -10.0, -6.4, -4.1, 90, 36000100)
  spawnMobile("kaas", "sith_ghost", 200, 8.9, -6.4, -3.9, 179, 36000101)
  spawnMobile("kaas", "insane_vitiate_cultist", 200, 4.8, -6.4, -4.0, 179, 36000101)
  
  writeData("KaasVitiateScreenPlay:spawnState",0)
  

end

function KaasVitiateScreenPlay:spawnActiveArea1()
  local pSpawnArea = spawnSceneObject("kaas", "object/active_area.iff", 5896.9, 81, -1137.0, 0, 36000090)
    
  if (pSpawnArea ~= nil) then
    local activeArea = LuaActiveArea(pSpawnArea)
          activeArea:setCellObjectID(36000090)
          activeArea:setRadius(512)
          createObserver(ENTEREDAREA, "KaasVitiateScreenPlay", "notifySpawnArea", pSpawnArea)
          --createObserver(EXITEDAREA, "KaasVitiateScreenPlay", "notifySpawnAreaLeave", pSpawnArea)
      end
end

function KaasVitiateScreenPlay:notifySpawnArea(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral()) and readData("KaasVitiateScreenPlay:spawnState") == 0) then
      writeData("KaasVitiateScreenPlay:spawnState", 1)
      
      player:sendSystemMessage("Your intrusion into the tomb has awoken spirits of ancient Sith!")
      
      local pMob1 = spawnMobile("kaas", "sith_ghost", 0, 2.2, 0.0, 0.3, 0, 36000090)
      createObserver(OBJECTDESTRUCTION, "KaasVitiateScreenPlay", "notifyMob1Dead", pMob1)
      ObjectManager.withCreatureObject(pMob1, function(oMob1)
      writeData("oMob1", oMob1:getObjectID())
      oMob1:engageCombat(player)end)
      createEvent(300000, "KaasVitiateScreenPlay", "despawnMob1", pMob1, "")
    
      local pMob2 = spawnMobile("kaas", "sith_ghost", 0, -2.8, 0.0, -6.8, 0, 36000090)
      createObserver(OBJECTDESTRUCTION, "KaasVitiateScreenPlay", "notifyMob2Dead", pMob2)
      ObjectManager.withCreatureObject(pMob2, function(oMob2)
      writeData("oMob2", oMob2:getObjectID())
      oMob2:engageCombat(player)end)      
      createEvent(300000, "KaasVitiateScreenPlay", "despawnMob2", pMob2, "")
      end
    return 0    
  end)
end

function KaasVitiateScreenPlay:despawnMob1(pMob1, pPlayer)
      forcePeace(pMob1)
        SceneObject(pMob1):destroyObjectFromWorld()
        
      writeData("KaasVitiateScreenPlay:spawnState", 0)
    return 0
end
function KaasVitiateScreenPlay:despawnMob2(pMob2, pPlayer)
      forcePeace(pMob2)
        SceneObject(pMob2):destroyObjectFromWorld()
        
      writeData("KaasVitiateScreenPlay:spawnState", 0)
    return 0
end

function KaasVitiateScreenPlay:notifyMob1Dead(pMob1, pPlayer)     
      createEvent(600000, "KaasVitiateScreenPlay", "resetState1", pMob1, "")        
      writeData("KaasVitiateScreenPlay:spawnState", 2)
    return 0
end

function KaasVitiateScreenPlay:notifyMob2Dead(pMob2, pPlayer)     
      createEvent(600000, "KaasVitiateScreenPlay", "resetState2", pMob2, "")        
      writeData("KaasVitiateScreenPlay:spawnState", 2)
    return 0
end

function KaasVitiateScreenPlay:resetState1(pMob1, pPlayer)         
      writeData("KaasVitiateScreenPlay:spawnState", 0)
    return 0
end

function KaasVitiateScreenPlay:resetState2(pMob2, pPlayer)         
      writeData("KaasVitiateScreenPlay:spawnState", 0)
    return 0
end