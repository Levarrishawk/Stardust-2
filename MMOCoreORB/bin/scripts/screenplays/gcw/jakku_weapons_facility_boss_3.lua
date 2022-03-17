local ObjectManager = require("managers.object.object_manager")



jakku_weapons_facility_boss_3 = ScreenPlay:new {
  numberOfActs = 1,

}

registerScreenPlay("jakku_weapons_facility_boss_3", true)

function jakku_weapons_facility_boss_3:start()
  if (isZoneEnabled("jakku")) then
    self:spawnMobiles()
  end
end

function jakku_weapons_facility_boss_3:spawnMobiles()

  local pTrigger = spawnMobile("jakku", "jakku_probot", 10800, 123.8, -56, 6.2, 172, 610000123)
        if (pTrigger ~= nil ) then
        createObserver(OBJECTDESTRUCTION, "jakku_weapons_facility_boss_3", "notifyTriggerDead", pTrigger)
        end
 
      writeData("jakku_weapons_facility_boss_3:spawnState",0)
    return 0
end
 
function jakku_weapons_facility_boss_3:notifyTriggerDead(pTrigger, pPlayer)
        local pBoss = spawnMobile("jakku", "jakku_black_trooper_1", 0, 120, -56, 2.2, 90, 610000123)
        ObjectManager.withCreatureObject(pBoss, function(nBoss)
        writeData("jakku_weapons_facility_boss_3:spawnState", 1)
        writeData("facilityboss2", nBoss:getObjectID())
          spatialChat(pBoss, "WARNING Protocol-77 has been breached.  Incursion in Level 2 Cloning Laboratory.  This unit has been directed to eliminate all sentients.")
            createObserver(DAMAGERECEIVED,"jakku_weapons_facility_boss_3","boss_damage", pBoss)
            createObserver(OBJECTDESTRUCTION, "jakku_weapons_facility_boss_3", "notifyBossDead", pBoss)
          createEvent(1800000, "jakku_weapons_facility_boss_3", "despawnBoss", pBoss, "")
   
        end)
  return 0
end
 
function jakku_weapons_facility_boss_3:notifyBossDead(pBoss, pPlayer)
      writeData("jakku_weapons_facility_boss_3:spawnState", 0)
    return 0
end
 
 
function jakku_weapons_facility_boss_3:despawnBoss(pBoss, pPlayer)
      forcePeace(pBoss)
        spHelper.destroy(readData("facilityboss2"),true)
      writeData("jakku_weapons_facility_boss_3:spawnState", 0)
    return 0
end
 
function jakku_weapons_facility_boss_3:boss_damage(pBoss, pPlayer)
 
  local player = LuaCreatureObject(pPlayer)
  local boss = LuaCreatureObject(pBoss)
  if ( boss ~= nil ) then
  local bossHealth = boss:getHAM(0)
  local bossAction = boss:getHAM(3)
  local bossMind = boss:getHAM(6)
  local bossMaxHealth = boss:getMaxHAM(0)
  local bossMaxAction = boss:getMaxHAM(3)
  local bossMaxMind = boss:getMaxHAM(6)
   
  local x1 = 120
  local y1 = 2.2
  local x2 = boss:getPositionX()
  local y2 = boss:getPositionY()
   
  local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
  local maxDistance = 45
   
  if distance > (maxDistance * maxDistance) then
  spatialChat(pBoss, "Hostiles retreating. Unit Standing down.")
 

  -- boss:setPvpStatusBitmask(0)
  forcePeace(pBoss)
  -- boss:setOptionsBitmask(128)
   
  createEvent(3500, "jakku_weapons_facility_boss_3", "resetScreenplayStatus", pPlayer)
end
 
if (((bossHealth <= (bossMaxHealth *0.9))) and readData("jakku_weapons_facility_boss_3:spawnState") == 1) then
  spatialChat(pBoss, "Sentient resistance exceeding tolerance levels.")
    writeData("jakku_weapons_facility_boss_3:spawnState", 2)
    local pJos = spawnMobile("jakku", "jakku_probot", 0, 123.9, -56, 6.8, 179, 610000123)
    ObjectManager.withCreatureObject(pJos, function(firstTime)
    firstTime:engageCombat(pPlayer)
    end)
  spatialChat(pJos, "Protocol-77 breach.  Priority override dictated.  Eliminate sentient organisms.")
 
end
 
if (((bossHealth <= (bossMaxHealth *0.89))) and readData("jakku_weapons_facility_boss_3:spawnState") == 2) then
 -- spatialChat(pBoss, "Once again, to my side!")
    writeData("jakku_weapons_facility_boss_3:spawnState", 3)
    local pJosTwo = spawnMobile("jakku", "jakku_probot", 0, 125.9, -56, 2.5, -90, 610000123)
    ObjectManager.withCreatureObject(pJosTwo, function(secondTime)
    secondTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosTwo, "Protocol-77 breach.  Priority override dictated.  Eliminate sentient organisms.")
 
end


if (((bossHealth <= (bossMaxHealth *0.88))) and readData("jakku_weapons_facility_boss_3:spawnState") == 3) then
--  spatialChat(pBoss, "Prophets of the dark side, kill these intruders!")
    writeData("jakku_weapons_facility_boss_3:spawnState", 4)
    local pJosThree = spawnMobile("jakku", "jakku_fast_battle_droid", 0, 124.4, -56, -1.4, 0, 610000123)
    ObjectManager.withCreatureObject(pJosThree, function(thirdTime)
    thirdTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosThree, "Protocol-77 breach.  Priority override dictated.  Eliminate sentient organisms.")
 
end

if (((bossHealth <= (bossMaxHealth *0.84))) and readData("jakku_weapons_facility_boss_3:spawnState") == 4) then
  spatialChat(pBoss, "Protocol-77 has been breached.  All remaining sentients within the facility must be eliminated.")
    writeData("jakku_weapons_facility_boss_3:spawnState", 5)
    local pJosFour = spawnMobile("jakku", "jakku_battle_droid", 0, 116, -56, -3.2, 90, 610000123)
    ObjectManager.withCreatureObject(pJosFour, function(fourthTime)
    fourthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosFour, "Protocol-77 Directive: Terminate all sentients.")
 
end

if (((bossHealth <= (bossMaxHealth * 0.5))) and readData("jakku_weapons_facility_boss_3:spawnState") == 5) then
  spatialChat(pBoss,"Incursion in Level 2 Cloning Laboratory.  Protocol-77 Breached.  Additional security required in Level 3.")
    writeData("jakku_weapons_facility_boss_3:spawnState", 6)
    local pJosFive = spawnMobile("jakku", "jakku_fast_battle_droid", 0, 123.9, -56, -6, -3, 610000123)
    ObjectManager.withCreatureObject(pJosFive, function(fifthTime)
    fifthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosFive, "Directive: Protocol-77 breached.  Terminate all sentients.")
 
end

if (((bossHealth <= (bossMaxHealth * 0.4))) and readData("jakku_weapons_facility_boss_3:spawnState") == 6) then
  spatialChat(pBoss,"Level 2 Cloning Laboratory compromised.  Additional security required in Level 4 production center.  Droid production set to highest affinity.")
    writeData("jakku_weapons_facility_boss_3:spawnState", 7)
    local pJosSix = spawnMobile("jakku", "jakku_battle_droid", 0, 123.6, -56, 7.7, 179, 610000123)
    ObjectManager.withCreatureObject(pJosSix, function(sixthTime)
    sixthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosSix, "Directive: Protocol-77 breached.  Terminate all sentients.")
 
end

 
if (((bossHealth <= (bossMaxHealth * 0.02))) and readData("jakku_weapons_facility_boss_3:spawnState") == 7) then
  spatialChat(pBoss, "Critical systems failure.  Additional Security to Level 4 administration.")
      end 
    end
  return 0
end
 
function jakku_weapons_facility_boss_3:resetScreenplayStatus(pPlayer)
  writeData("jakku_weapons_facility_boss_3:spawnState", 1)
end
 

