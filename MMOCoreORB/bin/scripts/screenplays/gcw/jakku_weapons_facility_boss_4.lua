local ObjectManager = require("managers.object.object_manager")



jakku_weapons_facility_boss_4 = ScreenPlay:new {
  numberOfActs = 1,

}

registerScreenPlay("jakku_weapons_facility_boss_4", true)

function jakku_weapons_facility_boss_4:start()
  if (isZoneEnabled("jakku")) then
    self:spawnMobiles()
  end
end

function jakku_weapons_facility_boss_4:spawnMobiles()

  local pTrigger = spawnMobile("jakku", "jakku_fast_battle_droid", 10800, 83.4, -72, 49, 0, 610000128)
        if (pTrigger ~= nil ) then
        createObserver(OBJECTDESTRUCTION, "jakku_weapons_facility_boss_4", "notifyTriggerDead", pTrigger)
        end
 
      writeData("jakku_weapons_facility_boss_4:spawnState",0)
    return 0
end
 
function jakku_weapons_facility_boss_4:notifyTriggerDead(pTrigger, pPlayer)
        local pBoss = spawnMobile("jakku", "jakku_battle_droid", 0, 83.4, -72, 49, 0, 610000128)
        ObjectManager.withCreatureObject(pBoss, function(nBoss)
        writeData("jakku_weapons_facility_boss_4:spawnState", 1)
        writeData("facilityboss4", nBoss:getObjectID())
          spatialChat(pBoss, "Access to Administration is prohibited.  Protocol-77 restrictions in effect.  Priority Override.  New directive..  eliminate all sentients.")
            createObserver(DAMAGERECEIVED,"jakku_weapons_facility_boss_4","boss_damage", pBoss)
            createObserver(OBJECTDESTRUCTION, "jakku_weapons_facility_boss_4", "notifyBossDead", pBoss)
          createEvent(1800000, "jakku_weapons_facility_boss_4", "despawnBoss", pBoss, "")
   
        end)
  return 0
end
 
function jakku_weapons_facility_boss_4:notifyBossDead(pBoss, pPlayer)
      writeData("jakku_weapons_facility_boss_4:spawnState", 0)
    return 0
end
 
 
function jakku_weapons_facility_boss_4:despawnBoss(pBoss, pPlayer)
      forcePeace(pBoss)
        spHelper.destroy(readData("facilityboss4"),true)
      writeData("jakku_weapons_facility_boss_4:spawnState", 0)
    return 0
end
 
function jakku_weapons_facility_boss_4:boss_damage(pBoss, pPlayer)
 
  local player = LuaCreatureObject(pPlayer)
  local boss = LuaCreatureObject(pBoss)
  if ( boss ~= nil ) then
  local bossHealth = boss:getHAM(0)
  local bossAction = boss:getHAM(3)
  local bossMind = boss:getHAM(6)
  local bossMaxHealth = boss:getMaxHAM(0)
  local bossMaxAction = boss:getMaxHAM(3)
  local bossMaxMind = boss:getMaxHAM(6)
   
  local x1 = 83.4
  local y1 = 49
  local x2 = boss:getPositionX()
  local y2 = boss:getPositionY()
   
  local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
  local maxDistance = 45
   
  if distance > (maxDistance * maxDistance) then
  spatialChat(pBoss, "Hostiles retreating. Unit Standing down.")
 

  -- boss:setPvpStatusBitmask(0)
  forcePeace(pBoss)
  -- boss:setOptionsBitmask(128)
   
  createEvent(3500, "jakku_weapons_facility_boss_4", "resetScreenplayStatus", pPlayer)
end
 
if (((bossHealth <= (bossMaxHealth *0.9))) and readData("jakku_weapons_facility_boss_4:spawnState") == 1) then
  spatialChat(pBoss, "Engaging hostility mode two.")
    writeData("jakku_weapons_facility_boss_4:spawnState", 2)
    local pJos = spawnMobile("jakku", "jakku_battle_droid", 0, 80.8, -72, 45.9, 24, 610000128)
    ObjectManager.withCreatureObject(pJos, function(firstTime)
    firstTime:engageCombat(pPlayer)
    end)
  spatialChat(pJos, "Protocol-77 breach.  Priority override dictated.  Eliminate sentient organisms.")
 
end
 
if (((bossHealth <= (bossMaxHealth *0.89))) and readData("jakku_weapons_facility_boss_4:spawnState") == 2) then
 -- spatialChat(pBoss, "Once again, to my side!")
    writeData("jakku_weapons_facility_boss_4:spawnState", 3)
    local pJosTwo = spawnMobile("jakku", "jakku_battle_droid", 0, 86.3, -72, 45.5, -29, 610000128)
    ObjectManager.withCreatureObject(pJosTwo, function(secondTime)
    secondTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosTwo, "Protocol-77 breach.  Priority override dictated.  Eliminate sentient organisms.")
 
end


if (((bossHealth <= (bossMaxHealth *0.88))) and readData("jakku_weapons_facility_boss_4:spawnState") == 3) then
--  spatialChat(pBoss, "Prophets of the dark side, kill these intruders!")
    writeData("jakku_weapons_facility_boss_4:spawnState", 4)
    local pJosThree = spawnMobile("jakku", "jakku_battle_droid", 0, 88.4, -72, 53.6, -130, 610000128)
    ObjectManager.withCreatureObject(pJosThree, function(thirdTime)
    thirdTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosThree, "Protocol-77 breach.  Priority override dictated.  Eliminate sentient organisms.")
 
end

if (((bossHealth <= (bossMaxHealth *0.87))) and readData("jakku_weapons_facility_boss_4:spawnState") == 4) then
 -- spatialChat(pBoss, "Protocol-77 has been breached.  All remaining sentients within the facility must be eliminated.")
    writeData("jakku_weapons_facility_boss_4:spawnState", 5)
    local pJosFour = spawnMobile("jakku", "jakku_battle_droid", 0, 78.2, -72, 53.4, 127, 610000128)
    ObjectManager.withCreatureObject(pJosFour, function(fourthTime)
    fourthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosFour, "Protocol-77 breach.  Priority override dictated.  Eliminate sentient organisms.")
 
end

if (((bossHealth <= (bossMaxHealth * 0.5))) and readData("jakku_weapons_facility_boss_4:spawnState") == 5) then
  spatialChat(pBoss,"Alert! Administrative Level compromise imminent. Requesting additional Units!")
    writeData("jakku_weapons_facility_boss_4:spawnState", 6)
    local pJosFive = spawnMobile("jakku", "jakku_battle_droid", 0, 83.4, -72, 55, 179, 610000128)
    ObjectManager.withCreatureObject(pJosFive, function(fifthTime)
    fifthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosFive, "Roger, Roger!")
 
end

if (((bossHealth <= (bossMaxHealth * 0.49))) and readData("jakku_weapons_facility_boss_4:spawnState") == 6) then
 -- spatialChat(pBoss,"Level 2 Cloning Laboratory compromised.  Additional security required in Level 4 production center.  Droid production set to highest affinity.")
    writeData("jakku_weapons_facility_boss_4:spawnState", 7)
    local pJosSix = spawnMobile("jakku", "jakku_battle_droid", 0, 83.5, -72, 42.9, 0, 610000128)
    ObjectManager.withCreatureObject(pJosSix, function(sixthTime)
    sixthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosSix, "Roger, Roger!")
 
end

if (((bossHealth <= (bossMaxHealth * 0.48))) and readData("jakku_weapons_facility_boss_4:spawnState") == 7) then
 -- spatialChat(pBoss,"Level 2 Cloning Laboratory compromised.  Additional security required in Level 4 production center.  Droid production set to highest affinity.")
    writeData("jakku_weapons_facility_boss_4:spawnState", 8)
    local pJosSix = spawnMobile("jakku", "jakku_battle_droid", 0, 77.4, -72, 49.3, 90, 610000128)
    ObjectManager.withCreatureObject(pJosSix, function(sixthTime)
    sixthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosSix, "Roger, Roger!")
 
end

if (((bossHealth <= (bossMaxHealth * 0.47))) and readData("jakku_weapons_facility_boss_4:spawnState") == 8) then
 -- spatialChat(pBoss,"Level 2 Cloning Laboratory compromised.  Additional security required in Level 4 production center.  Droid production set to highest affinity.")
    writeData("jakku_weapons_facility_boss_4:spawnState", 9)
    local pJosSix = spawnMobile("jakku", "jakku_battle_droid", 0, 89.4, -72, 49.3, -90, 610000128)
    ObjectManager.withCreatureObject(pJosSix, function(sixthTime)
    sixthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosSix, "Roger, Roger!")
 
end
 
if (((bossHealth <= (bossMaxHealth * 0.02))) and readData("jakku_weapons_facility_boss_4:spawnState") == 9) then
  spatialChat(pBoss, "Critical Failure.  Administration compromised.")
      end 
    end
  return 0
end
 
function jakku_weapons_facility_boss_4:resetScreenplayStatus(pPlayer)
  writeData("jakku_weapons_facility_boss_4:spawnState", 1)
end
 

