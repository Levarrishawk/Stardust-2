local ObjectManager = require("managers.object.object_manager")



jakku_weapons_facility_boss_2 = ScreenPlay:new {
  numberOfActs = 1,

}

registerScreenPlay("jakku_weapons_facility_boss_2", true)

function jakku_weapons_facility_boss_2:start()
  if (isZoneEnabled("jakku")) then
    self:spawnMobiles()
  end
end

function jakku_weapons_facility_boss_2:spawnMobiles()

  local pTrigger = spawnMobile("jakku", "jakku_r5", 10800, 14.0, -48, -17, -70, 610000144)
        if (pTrigger ~= nil ) then
        createObserver(OBJECTDESTRUCTION, "jakku_weapons_facility_boss_2", "notifyTriggerDead", pTrigger)
        end
 
      writeData("jakku_weapons_facility_boss_2:spawnState",0)
    return 0
end
 
function jakku_weapons_facility_boss_2:notifyTriggerDead(pTrigger, pPlayer)
        local pBoss = spawnMobile("jakku", "jakku_black_trooper_1", 0, 23.6, -48, -19, -90, 610000144)
        ObjectManager.withCreatureObject(pBoss, function(nBoss)
        writeData("jakku_weapons_facility_boss_2:spawnState", 1)
        writeData("facilityboss2", nBoss:getObjectID())
          spatialChat(pBoss, "WARNING Protocol-77 has been breached.  This unit has been directed to terminate all sentients within the facility.")
            createObserver(DAMAGERECEIVED,"jakku_weapons_facility_boss_2","boss_damage", pBoss)
            createObserver(OBJECTDESTRUCTION, "jakku_weapons_facility_boss_2", "notifyBossDead", pBoss)
          createEvent(1800000, "jakku_weapons_facility_boss_2", "despawnBoss", pBoss, "")
   
        end)
  return 0
end
 
function jakku_weapons_facility_boss_2:notifyBossDead(pBoss, pPlayer)
      writeData("jakku_weapons_facility_boss_2:spawnState", 0)
    return 0
end
 
 
function jakku_weapons_facility_boss_2:despawnBoss(pBoss, pPlayer)
      forcePeace(pBoss)
        spHelper.destroy(readData("facilityboss2"),true)
      writeData("jakku_weapons_facility_boss_2:spawnState", 0)
    return 0
end
 
function jakku_weapons_facility_boss_2:boss_damage(pBoss, pPlayer)
 
  local player = LuaCreatureObject(pPlayer)
  local boss = LuaCreatureObject(pBoss)
  if ( boss ~= nil ) then
  local bossHealth = boss:getHAM(0)
  local bossAction = boss:getHAM(3)
  local bossMind = boss:getHAM(6)
  local bossMaxHealth = boss:getMaxHAM(0)
  local bossMaxAction = boss:getMaxHAM(3)
  local bossMaxMind = boss:getMaxHAM(6)
   
  local x1 = 23.6
  local y1 = -19.0
  local x2 = boss:getPositionX()
  local y2 = boss:getPositionY()
   
  local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
  local maxDistance = 45
   
  if distance > (maxDistance * maxDistance) then
  spatialChat(pBoss, "Hostiles retreating. Unit Standing down.")
 

  -- boss:setPvpStatusBitmask(0)
  forcePeace(pBoss)
  -- boss:setOptionsBitmask(128)
   
  createEvent(3500, "jakku_weapons_facility_boss_2", "resetScreenplayStatus", pPlayer)
end
 
if (((bossHealth <= (bossMaxHealth *0.9))) and readData("jakku_weapons_facility_boss_2:spawnState") == 1) then
  spatialChat(pBoss, "Sentient resistance exceeding tolerance levels.")
    writeData("jakku_weapons_facility_boss_2:spawnState", 2)
    local pJos = spawnMobile("jakku", "jakku_fast_battle_droid", 0, 23.5, -48.0, -21, -90, 610000144)
    ObjectManager.withCreatureObject(pJos, function(firstTime)
    firstTime:engageCombat(pPlayer)
    end)
  spatialChat(pJos, "Roger Roger.")
 
end
 
if (((bossHealth <= (bossMaxHealth *0.89))) and readData("jakku_weapons_facility_boss_2:spawnState") == 2) then
 -- spatialChat(pBoss, "Once again, to my side!")
    writeData("jakku_weapons_facility_boss_2:spawnState", 3)
    local pJosTwo = spawnMobile("jakku", "jakku_fast_battle_droid", 0, 23.5, -48, -17, -90, 610000144)
    ObjectManager.withCreatureObject(pJosTwo, function(secondTime)
    secondTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosTwo, "Freeze Intruders!")
 
end
 
if (((bossHealth <= (bossMaxHealth *0.85))) and readData("jakku_weapons_facility_boss_2:spawnState") == 3) then
--  spatialChat(pBoss, "Prophets of the dark side, kill these intruders!")
    writeData("jakku_weapons_facility_boss_2:spawnState", 4)
    local pJosThree = spawnMobile("jakku", "jakku_fast_battle_droid", 0, 25.6, -48, -19, -90, 610000144)
    ObjectManager.withCreatureObject(pJosThree, function(thirdTime)
    thirdTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosThree, "Directive: Terminate all sentients.")
 
end

if (((bossHealth <= (bossMaxHealth *0.84))) and readData("jakku_weapons_facility_boss_2:spawnState") == 4) then
  spatialChat(pBoss, "Protocol-77 has been breached.  All remaining sentients within the facility must be eliminated.")
    writeData("jakku_weapons_facility_boss_2:spawnState", 5)
    local pJosFour = spawnMobile("jakku", "jakku_fast_battle_droid", 0, 25.6, -48, -19, -90, 610000144)
    ObjectManager.withCreatureObject(pJosFour, function(fourthTime)
    fourthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosFour, "Directive: Terminate all sentients.")
 
end

if (((bossHealth <= (bossMaxHealth * 0.5))) and readData("jakku_weapons_facility_boss_2:spawnState") == 5) then
  spatialChat(pBoss,"Facility self destruct has been initiated.  Directive: Eliminate all sentients to prevent escape.")
    writeData("jakku_weapons_facility_boss_2:spawnState", 6)
    local pJosFive = spawnMobile("jakku", "jakku_fast_battle_droid", 0, 25.6, -48, -19, -90, 610000144)
    ObjectManager.withCreatureObject(pJosFive, function(fifthTime)
    fifthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosFive, "Directive: Protocol-77 breached.  Terminate all sentients.")
 
end

if (((bossHealth <= (bossMaxHealth * 0.4))) and readData("jakku_weapons_facility_boss_2:spawnState") == 6) then
  spatialChat(pBoss,"WARNING, Protocol-77 nearing compromise.  Incursion on facility level 1.   Intruders, this facility has been programmed to self destruct if Protocol-77 is breached.  Cease hostilities and submit at once.")
    writeData("jakku_weapons_facility_boss_2:spawnState", 7)
    local pJosSix = spawnMobile("jakku", "jakku_battle_droid", 0, 25.6, -48, -19, -90, 610000144)
    ObjectManager.withCreatureObject(pJosSix, function(sixthTime)
    sixthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosSix, "Directive: Protocol-77 breached.  Terminate all sentients.")
 
end

 
if (((bossHealth <= (bossMaxHealth * 0.02))) and readData("jakku_weapons_facility_boss_2:spawnState") == 7) then
  spatialChat(pBoss, "WARNING, Protocol-77 has been breached.  Facility self destruct has been initiated.  Catastrophic reactor overload will occur.  This facility must not be comprimised.")
      end 
    end
  return 0
end
 
function jakku_weapons_facility_boss_2:resetScreenplayStatus(pPlayer)
  writeData("jakku_weapons_facility_boss_2:spawnState", 1)
end
 

