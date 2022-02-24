local ObjectManager = require("managers.object.object_manager")



jakku_weapons_facility_boss_6 = ScreenPlay:new {
  numberOfActs = 1,

}

registerScreenPlay("jakku_weapons_facility_boss_6", true)

function jakku_weapons_facility_boss_6:start()
  if (isZoneEnabled("jakku")) then
    self:spawnMobiles()
  end
end

function jakku_weapons_facility_boss_6:spawnMobiles()

  local pTrigger = spawnMobile("jakku", "jakku_fast_battle_droid", 10800, -16.5, -64, -9.9, 0, 610000138)
        if (pTrigger ~= nil ) then
        createObserver(OBJECTDESTRUCTION, "jakku_weapons_facility_boss_6", "notifyTriggerDead", pTrigger)
        end
 
      writeData("jakku_weapons_facility_boss_6:spawnState",0)
    return 0
end
 
function jakku_weapons_facility_boss_6:notifyTriggerDead(pTrigger, pPlayer)
        local pBoss = spawnMobile("jakku", "jakku_assassin_droid", 0, -16.2, -64, 5.0, 0, 610000138)
        ObjectManager.withCreatureObject(pBoss, function(nBoss)
        writeData("jakku_weapons_facility_boss_6:spawnState", 1)
        writeData("facilityboss6", nBoss:getObjectID())
          spatialChat(pBoss, "Protocol-77 breached.  Incursion in main production facility.  Activating assassination protocols.")
            createObserver(DAMAGERECEIVED,"jakku_weapons_facility_boss_6","boss_damage", pBoss)
            createObserver(OBJECTDESTRUCTION, "jakku_weapons_facility_boss_6", "notifyBossDead", pBoss)
          createEvent(1800000, "jakku_weapons_facility_boss_6", "despawnBoss", pBoss, "")
   
        end)
  return 0
end
 
function jakku_weapons_facility_boss_6:notifyBossDead(pBoss, pPlayer)
      writeData("jakku_weapons_facility_boss_6:spawnState", 0)
    return 0
end
 
 
function jakku_weapons_facility_boss_6:despawnBoss(pBoss, pPlayer)
      forcePeace(pBoss)
        spHelper.destroy(readData("facilityboss6"),true)
      writeData("jakku_weapons_facility_boss_6:spawnState", 0)
    return 0
end
 
function jakku_weapons_facility_boss_6:boss_damage(pBoss, pPlayer)
 
  local player = LuaCreatureObject(pPlayer)
  local boss = LuaCreatureObject(pBoss)
  if ( boss ~= nil ) then
  local bossHealth = boss:getHAM(0)
  local bossAction = boss:getHAM(3)
  local bossMind = boss:getHAM(6)
  local bossMaxHealth = boss:getMaxHAM(0)
  local bossMaxAction = boss:getMaxHAM(3)
  local bossMaxMind = boss:getMaxHAM(6)
   
  local x1 = -16.2
  local y1 = 5.0
  local x2 = boss:getPositionX()
  local y2 = boss:getPositionY()
   
  local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
  local maxDistance = 45
   
  if distance > (maxDistance * maxDistance) then
  spatialChat(pBoss, "Hostiles retreating. Unit Standing down.")
 

  -- boss:setPvpStatusBitmask(0)
  forcePeace(pBoss)
  -- boss:setOptionsBitmask(128)
   
  createEvent(3500, "jakku_weapons_facility_boss_6", "resetScreenplayStatus", pPlayer)
end
 
if (((bossHealth <= (bossMaxHealth *0.99))) and readData("jakku_weapons_facility_boss_6:spawnState") == 1) then
  spatialChat(pBoss, "Engaging hostility mode two. Activating reserve units.")
    writeData("jakku_weapons_facility_boss_6:spawnState", 2)
    local pJos = spawnMobile("jakku", "jakku_assassin_droid", 0, -28.5, -64, -7.0, 44, 610000138)
    ObjectManager.withCreatureObject(pJos, function(firstTime)
    firstTime:engageCombat(pPlayer)
    end)
  spatialChat(pJos, "Systems online... Activating asssasination protocols.")
 
end
 
if (((bossHealth <= (bossMaxHealth *0.99))) and readData("jakku_weapons_facility_boss_6:spawnState") == 2) then
 -- spatialChat(pBoss, "Once again, to my side!")
    writeData("jakku_weapons_facility_boss_6:spawnState", 3)
    local pJosTwo = spawnMobile("jakku", "jakku_assassin_droid", 0, -28.5, -64, 16.9, 133, 610000138)
    ObjectManager.withCreatureObject(pJosTwo, function(secondTime)
    secondTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosTwo, "Systems online... Activating asssasination protocols.")
 
end


if (((bossHealth <= (bossMaxHealth *0.99))) and readData("jakku_weapons_facility_boss_6:spawnState") == 3) then
--  spatialChat(pBoss, "Prophets of the dark side, kill these intruders!")
    writeData("jakku_weapons_facility_boss_6:spawnState", 4)
    local pJosThree = spawnMobile("jakku", "jakku_assassin_droid", 0, -4.7, -64, 16.9, -133, 610000138)
    ObjectManager.withCreatureObject(pJosThree, function(thirdTime)
    thirdTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosThree, "Systems online... Activating asssasination protocols.")
 
end

if (((bossHealth <= (bossMaxHealth *0.99))) and readData("jakku_weapons_facility_boss_6:spawnState") == 4) then
 -- spatialChat(pBoss, "Protocol-77 has been breached.  All remaining sentients within the facility must be eliminated.")
    writeData("jakku_weapons_facility_boss_6:spawnState", 5)
    local pJosFour = spawnMobile("jakku", "jakku_assassin_droid", 0, -4.7, -64, -6.9, -47, 610000138)
    ObjectManager.withCreatureObject(pJosFour, function(fourthTime)
    fourthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosFour, "Systems online... Activating asssasination protocols.")
 
end

if (((bossHealth <= (bossMaxHealth * 0.5))) and readData("jakku_weapons_facility_boss_6:spawnState") == 5) then
  spatialChat(pBoss,"Engaging Hostility Mode Three.  Rapid response droids initializing.")
    writeData("jakku_weapons_facility_boss_6:spawnState", 6)
    local pJosFive = spawnMobile("jakku", "jakku_battle_droid", 0, -18.5, -64, 16.2, 180, 610000138)
    ObjectManager.withCreatureObject(pJosFive, function(fifthTime)
    fifthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosFive, "Roger, Roger!")
 
end

if (((bossHealth <= (bossMaxHealth * 0.5))) and readData("jakku_weapons_facility_boss_6:spawnState") == 6) then
 -- spatialChat(pBoss,"Level 2 Cloning Laboratory compromised.  Additional security required in Level 4 production center.  Droid production set to highest affinity.")
    writeData("jakku_weapons_facility_boss_6:spawnState", 7)
    local pJosSix = spawnMobile("jakku", "jakku_battle_droid", 0, -14.4, -64, 16.2, 180, 610000138)
    ObjectManager.withCreatureObject(pJosSix, function(sixthTime)
    sixthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosSix, "Roger, Roger!")
 
end

if (((bossHealth <= (bossMaxHealth * 0.5))) and readData("jakku_weapons_facility_boss_6:spawnState") == 7) then
 -- spatialChat(pBoss,"Level 2 Cloning Laboratory compromised.  Additional security required in Level 4 production center.  Droid production set to highest affinity.")
    writeData("jakku_weapons_facility_boss_6:spawnState", 8)
    local pJosSeven = spawnMobile("jakku", "jakku_battle_droid", 0, -14.4, -64, -6.2, 0, 610000138)
    ObjectManager.withCreatureObject(pJosSeven, function(seventhTime)
    seventhTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosSeven, "Roger, Roger!")
 
end

if (((bossHealth <= (bossMaxHealth * 0.5))) and readData("jakku_weapons_facility_boss_6:spawnState") == 8) then
 -- spatialChat(pBoss,"Level 2 Cloning Laboratory compromised.  Additional security required in Level 4 production center.  Droid production set to highest affinity.")
    writeData("jakku_weapons_facility_boss_6:spawnState", 9)
    local pJosEight = spawnMobile("jakku", "jakku_battle_droid", 0, -18.5, -64, -6.2, 0, 610000138)
    ObjectManager.withCreatureObject(pJosEight, function(eighthTime)
    eighthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosEight, "Roger, Roger!")
 
end
 
if (((bossHealth <= (bossMaxHealth * 0.02))) and readData("jakku_weapons_facility_boss_6:spawnState") == 9) then
  spatialChat(pBoss, "Critical Failure.  Reactor shutdown engaged.  Protocol-77 deactivated.")
      end 
    end
  return 0
end
 
function jakku_weapons_facility_boss_6:resetScreenplayStatus(pPlayer)
  writeData("jakku_weapons_facility_boss_6:spawnState", 1)
end
 

