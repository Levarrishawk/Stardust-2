local ObjectManager = require("managers.object.object_manager")

-- TO DO: re-allocate the unused NPCs in the Bomarr temple.   Have them do other things.    Perhaps reuse them in a new theme park revolving around the bomarr? or Valarian?


lothalCapitalCityPatrols = ScreenPlay:new {
  numberOfActs = 1,

  bomar_monks = {
    {"commoner", 60, -1352, 28, -2999, 180, 0,"a Commoner","bmonk1"},
    {"commoner", 60, -1356, 28, -3266, 114, 0,"a Commoner","bmonk2"},
    {"commoner", 60, -1217, 28, -3266, 3, 0,"a Commoner","bmonk3"},
    {"commoner", 60, -1160, 28, -3115, -97, 0,"a Commoner","bmonk4"},
    {"commoner", 60, -1337, 28, -3155, -90, 0,"a Commoner","bmonk5"},
    {"commoner", 60, -1513, 28, -3221, 0, 0,"a Commoner","bmonk6"},
  },

  gamorrean_guards = {
    {"commoner", 60, -1557, 28, -3053, 93, 0, "a Commoner", "guard1"},
    {"commoner", 60, -1259, 28, -3271, 0, 0, "a Commoner","guard2"},
    {"commoner", 60, -1172, 28, -3200, 1, 0, "a Commoner","guard3"},
    {"commoner", 60, -1050, 28, -3156, -93, 0, "a Commoner","guard4"},
    {"commoner", 60, -1306, 28, -3171, -33, 0, "a Commoner", "guard5"},
    {"commoner", 60, -1329, 28, -2991, -90, 0, "a Commoner","guard6"},
    {"commoner", 60, -1558, 28, -2976, 180, 0, "a Commoner","guard7"},
    {"commoner", 60, -1562, 28, -3204, 112, 0, "a Commoner","guard8"},
    {"commoner", 60, -1439, 28, -3250, -175, 0, "a Commoner","guard9"},
    {"commoner", 60, -1489, 28, -3382, 0, 0,  "a Commoner","guard10"},
    {"commoner", 60, -1387, 28, -3204, 88, 0, "a Commoner","guard11"},
    {"commoner", 60, -1216, 28, -3230, 131, 0, "a Commoner","guard12"},
    {"commoner", 60, -1069, 28, -3261, -6, 0,  "a Commoner","guard13"},
  },

  droid_spawns = {
    {"r2", 60, -1327, 28, -3278, 0, 0, "R2-E7", "droid1"},
    {"eg6_power_droid", 60, -1315.5, 28, -3275, -102, 0, "EG6-M5","droid4"},
    {"eg6_power_droid", 60, -1373, 28, -2982, 133, 0, "EG6-M9", "droid6"},
  },
  

}

registerScreenPlay("lothalCapitalCityPatrols", true)

function lothalCapitalCityPatrols:start()
  if (isZoneEnabled("lothal")) then
    self:spawnMobiles()
    
  end
end




function lothalCapitalCityPatrols:spawnMobiles()

 


  for i,v in ipairs(self.bomar_monks) do
    local pMobile = spawnMobile("lothal", v[1], v[2], v[3], v[4], v[5], v[6], v[7])
    if (pMobile ~= nil) then
      writeData(SceneObject(pMobile):getObjectID() .. ":currentLoc", 1)
      writeStringData(SceneObject(pMobile):getObjectID() .. ":name", v[9])
      CreatureObject(pMobile):setCustomObjectName(v[8])
      createEvent(1000, "lothalCapitalCityPatrols", "setupJabbaPatrol", pMobile, "")
    end
  end

  for i,v in ipairs(self.gamorrean_guards) do
    local pMobile = spawnMobile("lothal", v[1], v[2], v[3], v[4], v[5], v[6], v[7])
    if (pMobile ~= nil) then
      writeData(SceneObject(pMobile):getObjectID() .. ":currentLoc", 1)
      writeStringData(SceneObject(pMobile):getObjectID() .. ":name", v[9])
      CreatureObject(pMobile):setCustomObjectName(v[8])
      createEvent(1000, "lothalCapitalCityPatrols", "setupJabbaPatrol", pMobile, "")
    end
  end

  for i,v in ipairs(self.droid_spawns) do
    local pMobile = spawnMobile("lothal", v[1], v[2], v[3], v[4], v[5], v[6], v[7])
    if (pMobile ~= nil) then
      writeData(SceneObject(pMobile):getObjectID() .. ":currentLoc", 1)
      writeStringData(SceneObject(pMobile):getObjectID() .. ":name", v[9])
      CreatureObject(pMobile):setCustomObjectName(v[8])
      createEvent(1000, "lothalCapitalCityPatrols", "setupJabbaPatrol", pMobile, "")
    end
  end
end

function lothalCapitalCityPatrols:setupJabbaPatrol(pMobile)
  createEvent(getRandomNumber(30,45) * 1000, "lothalCapitalCityPatrols", "JabbaPatrol", pMobile, "")
  createObserver(DESTINATIONREACHED, "lothalCapitalCityPatrols", "jabbaPatrolDestReached", pMobile)
  AiAgent(pMobile):setAiTemplate("manualescortwalk")
  AiAgent(pMobile):setFollowState(4)
end






function lothalCapitalCityPatrols:JabbaPatrol(pMobile)
  if (pMobile == nil) then
    return
  end
  local name = readStringData(SceneObject(pMobile):getObjectID() .. ":name")
  local curLoc = readData(SceneObject(pMobile):getObjectID() .. ":currentLoc")
  local nextLoc

  if (name == "bmonk1") then
    if (curLoc == 1) then
      nextLoc = {-1352, 28, -2999, 0}  --origin
    else
      nextLoc = {-1352, 28, -3273, 0}   --destination
    end
  end
  if (name == "bmonk2") then
    if (curLoc == 1) then
      nextLoc = {-1356, 28, -3266, 0}
    else
      nextLoc = {-1222, 28, -3323, 0}
    end
  end
  if (name == "bmonk3") then
    if (curLoc == 1) then
      --nextLoc = {-25, 3, 61, 1177474}
      nextLoc = {-1217, 28, -3266, 0}
    else
      nextLoc =  {-1189, 28, -2915, 0}
    end
  end
  if (name == "bmonk4") then
    if (curLoc == 1) then
      nextLoc = {-1160, 28, -3115, 0}
    else
      nextLoc = {-1377, 29, -3125, 0}
    end
  end
  if (name == "bmonk5") then
    if (curLoc == 1) then
      nextLoc = {-1337, 28, -3155, 0}
    else
      nextLoc = {-1468, 28, -3160, 0}
    end
  end

  if (name == "bmonk6") then
    if (curLoc == 1) then
      nextLoc = {-1513, 28, -3221, 0}
    else
      nextLoc = {-1507, 28, -3008, 0}
    end
  end
--
  if (name == "guard1") then
    if (curLoc == 1) then
      nextLoc = { -1557, 28, -3053, 0 } -- orig
    else
      nextLoc = { -1276, 28, -3066, 0 } -- dest
    end
  end

  if (name == "guard2") then
    if (curLoc == 1) then
      nextLoc = { -1259, 28, -3271, 0 }
    else
      nextLoc = { -1259, 28, -3078, 0 }
    end
  end

  if (name == "guard3") then
    if (curLoc == 1) then
      nextLoc = { -1172, 28, -3200, 0 }
    else
      nextLoc = { -1126, 28, -3044, 0 }
    end
  end

  if (name == "guard4") then
    if (curLoc == 1) then
      nextLoc = { -1050, 28, -3156, 0 }
    else
      nextLoc = { -1282, 28, -3172, 0 }
    end
  end

  if (name == "guard5") then
    if (curLoc == 1) then
      nextLoc = { -1306, 28, -3171, 0 }
    else
      nextLoc = { -1356, 28, -3094 , 0 }
    end
  end

  if (name == "guard6") then
    if (curLoc == 1) then
      nextLoc = {-1329, 28, -2991, 0 }
    else
      nextLoc ={-1559, 28, -2991, 0}
    end
  end

  if (name == "guard7") then
    if (curLoc == 1) then
      nextLoc = {-1558, 28, -2976, 0}
    else
      nextLoc = {-1556, 28, -3166, 0}
    end
  end

  if (name == "guard8") then
    if (curLoc == 1) then
      nextLoc = {-1562, 28, -3204, 0}
    else
      nextLoc = {-1452, 28, -3249, 0}
    end
  end

  if (name == "guard9") then
    if (curLoc == 1) then
      nextLoc = {-1439, 28, -3250, 0}
    else
      nextLoc = {-1449, 28, -3377, 0}
    end
  end

  if (name == "guard10") then
    if (curLoc == 1) then
      nextLoc = {-1489, 28, -3382, 0}
    else
      nextLoc = {-1486, 28, -3258, 0}
    end
  end

  if (name == "guard11") then
    if (curLoc == 1) then
      nextLoc = {-1387, 28, -3204, 0}
    else
      nextLoc =  {-1262, 28, -3200, 0}
    end
  end

  if (name == "guard12") then
    if (curLoc == 1) then
      nextLoc = {-1216, 28, -3230, 0}
    else
      nextLoc = {-1133, -28, -3306, 0}
    end
  end

  if (name == "guard13") then
    if (curLoc == 1) then
      nextLoc = {-1069, 28, -3261, 0}
    else
      nextLoc = {-1083, 28, -3106, 0}
    end
  end


  

  if (name == "droid1") then
    if (curLoc == 1) then
      nextLoc = {-1327, 28, -3278, 0}
    else
      nextLoc = {-1325, 28, -3009, 0}
    end
  end

  if (name == "droid4") then
    if (curLoc == 1) then
      nextLoc = {-1315.5, 28, -3275, 0}
    else
      nextLoc = {-1357, 28, -3283, 0}
    end
  end

  if (name == "droid6") then
    if (curLoc == 1) then
      nextLoc = {-1373, 28, -2982, 0}
    else
      nextLoc = {-1330, 28, -3014, 0}
    end
  end
  

  AiAgent(pMobile):stopWaiting()
  AiAgent(pMobile):setWait(0)
  AiAgent(pMobile):setNextPosition(nextLoc[1], nextLoc[2], nextLoc[3], nextLoc[4])
  AiAgent(pMobile):executeBehavior()
end

function lothalCapitalCityPatrols:jabbaPatrolDestReached(pMobile)
  if (pMobile == nil) then
    return 0
  end

  local curLoc = readData(SceneObject(pMobile):getObjectID() .. ":currentLoc")

  if (curLoc == 1) then
    writeData(SceneObject(pMobile):getObjectID() .. ":currentLoc", 2)
  else
    writeData(SceneObject(pMobile):getObjectID() .. ":currentLoc", 1)
  end

  createEvent(getRandomNumber(350,450) * 100, "lothalCapitalCityPatrols", "JabbaPatrol", pMobile, "")

  return 0
end
