local ObjectManager = require("managers.object.object_manager")


lothal_theme_park = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "lothal_theme_park"
}

registerScreenPlay("lothal_theme_park", true)

function lothal_theme_park:start()
  if (isZoneEnabled("lothal")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
    self:spawnActiveArea1()
  end
end

function lothal_theme_park:spawnSceneObjects()

 -- spawnSceneObject("yavin4", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -11.5, -19.3, 38.3, 8525439, math.rad(0) )
  

end

function lothal_theme_park:spawnMobiles()


  --local pNpc = spawnMobile("lothal", "ahsoka_tano",60,104,39.5,4183.6,-89,0)
  --self:setMoodString(pNpc, "neutral")
  
  

  
end

function lothal_theme_park:spawnActiveArea1()
  local pSpawnArea1 = spawnSceneObject("lothal", "object/active_area.iff", 104, 39, 4183, 0, 0)
    
  if (pSpawnArea1 ~= nil) then
    local activeArea1 = LuaActiveArea(pSpawnArea1)
          activeArea1:setCellObjectID(0)
          activeArea1:setRadius(32)
          createObserver(ENTEREDAREA, "lothal_theme_park", "notifySpawnArea1", pSpawnArea1)          
      end
end

function lothal_theme_park:notifySpawnArea1(pActiveArea1, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral())) then   
      player:playMusicMessage("sound/mus_ahsoka.snd")
      
      end
    return 0    
  end)
end