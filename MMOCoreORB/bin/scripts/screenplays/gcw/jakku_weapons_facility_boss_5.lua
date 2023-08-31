local ObjectManager = require("managers.object.object_manager")



jakku_weapons_facility_boss_5 = ScreenPlay:new {
  numberOfActs = 1,

}

registerScreenPlay("jakku_weapons_facility_boss_5", true)

function jakku_weapons_facility_boss_5:start()
  if (isZoneEnabled("jakku")) then
    self:spawnMobiles()
  end
end

function jakku_weapons_facility_boss_5:spawnMobiles()

  local pTrigger = spawnMobile("jakku", "jakku_r5", 10800, 83.4, -74, -82.9, 0, 610000131)
        if (pTrigger ~= nil ) then
        createObserver(OBJECTDESTRUCTION, "jakku_weapons_facility_boss_5", "notifyTriggerDead", pTrigger)
        end
 
      writeData("jakku_weapons_facility_boss_5:spawnState",0)
    return 0
end
 
function jakku_weapons_facility_boss_5:notifyTriggerDead(pTrigger, pPlayer)
        local pBoss = spawnMobile("jakku", "jakku_s_battle_droid", 0, 82.8, -74, -57.7, 180, 610000130)      
        writeData("jakku_weapons_facility_boss_5:spawnState", 1)        
          spatialChat(pBoss, "Protocol-77 Breach! Administration compromised.  Activating Duplicate unit.. Synchonizing..")
            createObserver(DAMAGERECEIVED,"jakku_weapons_facility_boss_5","boss_damage", pBoss)
            createObserver(OBJECTDESTRUCTION, "jakku_weapons_facility_boss_5", "notifyBossDead", pBoss)         
end
 
function jakku_weapons_facility_boss_5:notifyBossDead(pBoss, pPlayer)
      writeData("jakku_weapons_facility_boss_5:spawnState", 0)
    return 0
end
 
 
function jakku_weapons_facility_boss_5:despawnBoss(pBoss, pPlayer)
      forcePeace(pBoss)
        SceneObject(pBoss):destroyObjectFromWorld()
      writeData("jakku_weapons_facility_boss_5:spawnState", 0)
    return 0
end
 
function jakku_weapons_facility_boss_5:boss_damage(pBoss, pPlayer)
 
  local player = LuaCreatureObject(pPlayer)
  local boss = LuaCreatureObject(pBoss)
  if ( boss ~= nil ) then
  local bossHealth = boss:getHAM(0)
  local bossAction = boss:getHAM(3)
  local bossMind = boss:getHAM(6)
  local bossMaxHealth = boss:getMaxHAM(0)
  local bossMaxAction = boss:getMaxHAM(3)
  local bossMaxMind = boss:getMaxHAM(6)
   
  local x1 = 82.8
  local y1 = -57.7
  local x2 = boss:getPositionX()
  local y2 = boss:getPositionY()
   
  local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
  local maxDistance = 45
   
  if distance > (maxDistance * maxDistance) then
  spatialChat(pBoss, "Hostiles retreating. Unit Standing down.")
  forcePeace(pBoss) 
 -- createEvent(3500, "jakku_weapons_facility_boss_5", "resetScreenplayStatus", pPlayer)
end
 
if (((bossHealth <= (bossMaxHealth *0.99))) and readData("jakku_weapons_facility_boss_5:spawnState") == 1) then
  spatialChat(pBoss, "Synchronization Completed.")
    writeData("jakku_weapons_facility_boss_5:spawnState", 2)
    local pJos = spawnMobile("jakku", "jakku_s_battle_droid", 0, 68.5, -74, -68.7, 0, 610000130)    
  spatialChat(pJos, "Synchronization Complete: Protocol-77 breach... Systems online... Executing directive...  Eliminate sentient organisms.")
 
end
 
if (((bossHealth <= (bossMaxHealth *0.9))) and readData("jakku_weapons_facility_boss_5:spawnState") == 2) then
 -- spatialChat(pBoss, "Once again, to my side!")
    writeData("jakku_weapons_facility_boss_5:spawnState", 3)
    local pJosTwo = spawnMobile("jakku", "jakku_battle_droid", 0, 83.6, -74, -42.9, -129, 610000130)   
  spatialChat(pJosTwo, "Protocol-77 breach.  Priority override dictated.  Eliminate sentient organisms.")
 
end


if (((bossHealth <= (bossMaxHealth *0.8))) and readData("jakku_weapons_facility_boss_5:spawnState") == 3) then
--  spatialChat(pBoss, "Prophets of the dark side, kill these intruders!")
    writeData("jakku_weapons_facility_boss_5:spawnState", 4)
    local pJosThree = spawnMobile("jakku", "jakku_battle_droid", 0, 83.4, -74, -67.8, 0, 610000130)   
  spatialChat(pJosThree, "Protocol-77 breach.  Priority override dictated.  Eliminate sentient organisms.")
 
end

if (((bossHealth <= (bossMaxHealth *0.7))) and readData("jakku_weapons_facility_boss_5:spawnState") == 4) then
 -- spatialChat(pBoss, "Protocol-77 has been breached.  All remaining sentients within the facility must be eliminated.")
    writeData("jakku_weapons_facility_boss_5:spawnState", 5)
    local pJosFour = spawnMobile("jakku", "jakku_battle_droid", 0, 90.5, -74, -58.3, -90, 610000130)    
  spatialChat(pJosFour, "Protocol-77 breach.  Priority override dictated.  Eliminate sentient organisms.")
 
end

if (((bossHealth <= (bossMaxHealth * 0.5))) and readData("jakku_weapons_facility_boss_5:spawnState") == 5) then
  spatialChat(pBoss,"Alert! Administration compromised. Requesting additional Units!")
    writeData("jakku_weapons_facility_boss_5:spawnState", 6)
    local pJosFive = spawnMobile("jakku", "jakku_fast_battle_droid", 0, 79.3, -74, -60.5, 90, 610000130)    
  spatialChat(pJosFive, "Roger, Roger!")
 
end

if (((bossHealth <= (bossMaxHealth * 0.49))) and readData("jakku_weapons_facility_boss_5:spawnState") == 6) then
 -- spatialChat(pBoss,"Level 2 Cloning Laboratory compromised.  Additional security required in Level 4 production center.  Droid production set to highest affinity.")
    writeData("jakku_weapons_facility_boss_5:spawnState", 7)
    local pJosSix = spawnMobile("jakku", "jakku_fast_battle_droid", 0, 78.6, -74, -58.2, 90, 610000130)    
  spatialChat(pJosSix, "Roger, Roger!")
 
end

if (((bossHealth <= (bossMaxHealth * 0.48))) and readData("jakku_weapons_facility_boss_5:spawnState") == 7) then
 -- spatialChat(pBoss,"Level 2 Cloning Laboratory compromised.  Additional security required in Level 4 production center.  Droid production set to highest affinity.")
    writeData("jakku_weapons_facility_boss_5:spawnState", 8)
    local pJosSeven = spawnMobile("jakku", "jakku_fast_battle_droid", 0, 77.8, -74, -53.9, 90, 610000130)   
  spatialChat(pJosSeven, "Roger, Roger!")
 
end

if (((bossHealth <= (bossMaxHealth * 0.47))) and readData("jakku_weapons_facility_boss_5:spawnState") == 8) then
 -- spatialChat(pBoss,"Level 2 Cloning Laboratory compromised.  Additional security required in Level 4 production center.  Droid production set to highest affinity.")
    writeData("jakku_weapons_facility_boss_5:spawnState", 9)
    local pJosEight = spawnMobile("jakku", "jakku_fast_battle_droid", 0, 78.9, -74, -51.9, 90, 610000130)   
  spatialChat(pJosEight, "Roger, Roger!")
 
end
 
if (((bossHealth <= (bossMaxHealth * 0.02))) and readData("jakku_weapons_facility_boss_5:spawnState") == 9) then
  spatialChat(pBoss, "Critical Failure.  Administration compromised.")
      end 
    end
  return 0
end
 
function jakku_weapons_facility_boss_5:resetScreenplayStatus(pPlayer)
  writeData("jakku_weapons_facility_boss_5:spawnState", 1)
end
 

