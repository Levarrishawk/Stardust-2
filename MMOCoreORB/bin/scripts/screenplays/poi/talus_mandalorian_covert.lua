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
    self:startTinkerConvo()
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
    --New DWB Start
    pNpc = spawnMobile("talus", "the_armorer",60,-56.2,-36.0,110.8,90,9895485)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("talus", "child_of_the_watch",60,4208,6,1130,0,0)
    self:setMoodString(pNpc, "neutral") 
    pNpc = spawnMobile("talus", "child_of_the_watch",60,4210,6,1130.1,0,0)
    self:setMoodString(pNpc, "neutral") 
    pNpc = spawnMobile("talus", "child_of_the_watch",60,4212,6,1130.0,0,0)
    self:setMoodString(pNpc, "neutral")
    pNpc = spawnMobile("talus", "child_of_the_watch",60,4214,6,1130.6,0,0)
    self:setMoodString(pNpc, "neutral")
    pNpc = spawnMobile("talus", "child_of_the_watch",60,4206,6,1130,0,0)
    self:setMoodString(pNpc, "neutral") 
    pNpc = spawnMobile("talus", "child_of_the_watch",60,4204,6,1130.1,0,0)
    self:setMoodString(pNpc, "neutral") 
    pNpc = spawnMobile("talus", "child_of_the_watch",60,4202,6,1130.0,0,0)
    self:setMoodString(pNpc, "neutral")
    pNpc = spawnMobile("talus", "child_of_the_watch",60,4200,6,1130.6,0,0)
    self:setMoodString(pNpc, "neutral")
  --end mobile spawns
end

function TalusMandalorianCovertScreenPlay:startTinkerConvo(pActiveArea1, pMovingObject, pPlayer, pKid1, pKid2)
     -- Tinker Convo
  local pKid1 = spawnMobile("talus", "child_of_the_watch",0,4207.7,6,1137.5,180,0)  
      self:setMoodString(pKid1, "neutral")    
  local pKid2 = spawnMobile("talus", "child_of_the_watch",0,4207.7,6,1132,0,0) 
      self:setMoodString(pKid2, "neutral")    
      
  writeData("TalusMandalorianCovertScreenPlay:pKid1_objectID", SceneObject(pKid1):getObjectID() )
  writeData("TalusMandalorianCovertScreenPlay:pKid2_objectID", SceneObject(pKid2):getObjectID() ) 
  
   if not(readData("TalusMandalorianCovertScreenPlay:tinkerConvoInProgress") == 1) then       
          writeData("TalusMandalorianCovertScreenPlay:tinkerConvoInProgress", 1)
          createEvent(90 * 1000, "TalusMandalorianCovertScreenPlay", "touristConvoF1", pKid2, "")
          createEvent(100 * 1000, "TalusMandalorianCovertScreenPlay", "touristConvoM1", pKid1, "")
   else
      return 0
   end              
end






function TalusMandalorianCovertScreenPlay:touristConvoF1(pKid2, pPlayer)
  
  local pKid2 = getSceneObject(readData("TalusMandalorianCovertScreenPlay:pKid2_objectID"))
  
  if (readData("TalusMandalorianCovertScreenPlay:tinkerConvoState") == 0) then
      spatialChat(pKid2, "Now, Foundling.  Repeat after me.   I swear on my name and the names of the ancestors...")     
        writeData("TalusMandalorianCovertScreenPlay:tinkerConvoState", 1)   
        createEvent(20 * 1000, "TalusMandalorianCovertScreenPlay", "touristConvoF2", pKid2, "")  
  end
end

function TalusMandalorianCovertScreenPlay:touristConvoM1(pKid1, pPlayer)
  
  local pKid1 = getSceneObject(readData("TalusMandalorianCovertScreenPlay:pKid1_objectID"))
  
  if (readData("TalusMandalorianCovertScreenPlay:tinkerConvoState") == 1) then
      spatialChat(pKid1, "I swear on my name and the names of the ancestors...")     
        writeData("TalusMandalorianCovertScreenPlay:tinkerConvoState", 2)   
        createEvent(20 * 1000, "TalusMandalorianCovertScreenPlay", "touristConvoM2", pKid1, "")   
  end
end

function TalusMandalorianCovertScreenPlay:touristConvoF2(pKid2, pPlayer)
  
  local pKid2 = getSceneObject(readData("TalusMandalorianCovertScreenPlay:pKid2_objectID"))
  
  if (readData("TalusMandalorianCovertScreenPlay:tinkerConvoState") == 2) then
      spatialChat(pKid2, "That I shall walk the way of the Mand'alor and the words of the creed shall be forever forged in my heart.")     
        writeData("TalusMandalorianCovertScreenPlay:tinkerConvoState", 3)    
        createEvent(20 * 1000, "TalusMandalorianCovertScreenPlay", "touristConvoF3", pKid2, "")  
  end
end

function TalusMandalorianCovertScreenPlay:touristConvoM2(pKid1, pPlayer)
  
  local pKid1 = getSceneObject(readData("TalusMandalorianCovertScreenPlay:pKid1_objectID"))
  
  if (readData("TalusMandalorianCovertScreenPlay:tinkerConvoState") == 3) then
      spatialChat(pKid1, "That I shall walk the way of the Mand'alor and the words of the creed shall be forever forged in my heart.")     
        writeData("TalusMandalorianCovertScreenPlay:tinkerConvoState", 4)  
        createEvent(22 * 1000, "TalusMandalorianCovertScreenPlay", "touristConvoM3", pKid1, "")   
  end
end

function TalusMandalorianCovertScreenPlay:touristConvoF3(pKid2, pPlayer)
  
  local pKid2 = getSceneObject(readData("TalusMandalorianCovertScreenPlay:pKid2_objectID"))
  
  if (readData("TalusMandalorianCovertScreenPlay:tinkerConvoState") == 4) then
      spatialChat(pKid2, "This is the way.")     
        writeData("TalusMandalorianCovertScreenPlay:tinkerConvoState", 5)           
  end
end

function TalusMandalorianCovertScreenPlay:touristConvoM3(pKid1, pPlayer)
  
  local pKid1 = getSceneObject(readData("TalusMandalorianCovertScreenPlay:pKid1_objectID"))
  
  if (readData("TalusMandalorianCovertScreenPlay:tinkerConvoState") == 5) then
      spatialChat(pKid1, "This is the way.") 
        writeData("TalusMandalorianCovertScreenPlay:tinkerConvoState", 0)   
        createEvent(6 * 100 * 1000, "TalusMandalorianCovertScreenPlay", "resetTinkerConvo", pKid1, "")   
  end
end

function TalusMandalorianCovertScreenPlay:resetTinkerConvo(pPlayer, pKid1, pKid2)
    writeData("TalusMandalorianCovertScreenPlay:tinkerConvoInProgress", 0)    
    self:startTinkerConvo()
end
