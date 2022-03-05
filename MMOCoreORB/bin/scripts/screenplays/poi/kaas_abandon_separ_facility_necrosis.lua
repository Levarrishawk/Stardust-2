local ObjectManager = require("managers.object.object_manager")



kaas_abandon_separ_facility_necrosis = ScreenPlay:new {
  numberOfActs = 1,

}

registerScreenPlay("kaas_abandon_separ_facility_necrosis", true)

function kaas_abandon_separ_facility_necrosis:start()
  if (isZoneEnabled("kaas")) then
    self:spawnMobiles()
  end
end

function kaas_abandon_separ_facility_necrosis:spawnMobiles()

  local pTrigger = spawnMobile("kaas", "cyborg_engineer_trigger", 10800, 13.4, -22, -338.3, 180, 36000144)
        if (pTrigger ~= nil ) then
        createObserver(OBJECTDESTRUCTION, "kaas_abandon_separ_facility_necrosis", "notifyTriggerDead", pTrigger)
        end
 
      writeData("kaas_abandon_separ_facility_necrosis:spawnState",0)
    return 0
end
 
function kaas_abandon_separ_facility_necrosis:notifyTriggerDead(pTrigger, pPlayer)
        local pBoss = spawnMobile("kaas", "nk_necrosis", 0, 18.0, -34, -372.9, 0, 36000144)
        ObjectManager.withCreatureObject(pBoss, function(oBoss)
        writeData("kaas_abandon_separ_facility_necrosis:spawnState", 1)
        writeData("kaasboss1", oBoss:getObjectID())
          spatialChat(pBoss, "Whether you have brought an entire army with you or not.  You are doomed!")
            createObserver(DAMAGERECEIVED,"kaas_abandon_separ_facility_necrosis","boss_damage", pBoss)
            createObserver(OBJECTDESTRUCTION, "kaas_abandon_separ_facility_necrosis", "notifyBossDead", pBoss)
          createEvent(1800000, "kaas_abandon_separ_facility_necrosis", "despawnBoss", pBoss, "")
   
        end)
  return 0
end
 
function kaas_abandon_separ_facility_necrosis:notifyBossDead(pBoss, pPlayer)
      writeData("kaas_abandon_separ_facility_necrosis:spawnState", 0)
    return 0
end
 
 
function kaas_abandon_separ_facility_necrosis:despawnBoss(pBoss, pPlayer)
      forcePeace(pBoss)
       -- spHelper.destroy(readData("kaasboss1"),true)
      --writeData("kaas_abandon_separ_facility_necrosis:spawnState", 0)
    return 0
end

function kaas_abandon_separ_facility_necrosis:boss_damage(pBoss, pPlayer)
 
  local player = LuaCreatureObject(pPlayer)
  local boss = LuaCreatureObject(pBoss)
  if ( boss ~= nil ) then
  local bossHealth = boss:getHAM(0)
  local bossAction = boss:getHAM(3)
  local bossMind = boss:getHAM(6)
  local bossMaxHealth = boss:getMaxHAM(0)
  local bossMaxAction = boss:getMaxHAM(3)
  local bossMaxMind = boss:getMaxHAM(6)
   
  local x1 = 17.8
  local y1 = -372.5
  local x2 = boss:getPositionX()
  local y2 = boss:getPositionY()
   
  local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
  local maxDistance = 60
   
  if distance > (maxDistance * maxDistance) then
  spatialChat(pBoss, "You coward!  Run if you must.")
 


  forcePeace(pBoss)

   
  createEvent(3500, "kaas_abandon_separ_facility_necrosis", "resetScreenplayStatus", pPlayer)
end

if (((bossHealth <= (bossMaxHealth *0.91))) and readData("kaas_abandon_separ_facility_necrosis:spawnState") == 1) then
  spatialChat(pBoss, "Droids, deal with this scum!")
    writeData("kaas_abandon_separ_facility_necrosis:spawnState", 2)
    local pJos = spawnMobile("kaas", "kaas_battle_droid", 0, 18.1, -34, -386.3, 0, 36000144)
    ObjectManager.withCreatureObject(pJos, function(firstTime)
    firstTime:engageCombat(pPlayer)
    end)
  spatialChat(pJos, "Roger Roger.")
 
end
 
if (((bossHealth <= (bossMaxHealth *0.9))) and readData("kaas_abandon_separ_facility_necrosis:spawnState") == 2) then
  --spatialChat(pBoss, "Droids, deal with this scum!")
    writeData("kaas_abandon_separ_facility_necrosis:spawnState", 3)
    local pJosTwo = spawnMobile("kaas", "kaas_battle_droid", 0, 18.1, -34, -386.3, 0, 36000144)
    ObjectManager.withCreatureObject(pJosTwo, function(secondTime)
    secondTime:engageCombat(pPlayer)
    end)
  --spatialChat(pJosTwo, "Roger Roger.")
 
end
 
if (((bossHealth <= (bossMaxHealth *0.80))) and readData("kaas_abandon_separ_facility_necrosis:spawnState") == 3) then
  spatialChat(pBoss, "Droids, deal with this scum!")
    writeData("kaas_abandon_separ_facility_necrosis:spawnState", 4)
    local pJosThree = spawnMobile("kaas", "kaas_battle_droid", 0, 18.1, -34, -386.3, 0, 36000144)
    ObjectManager.withCreatureObject(pJosThree, function(thirdTime)
    thirdTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosThree, "Roger Roger.")
 
end

if (((bossHealth <= (bossMaxHealth *0.75))) and readData("kaas_abandon_separ_facility_necrosis:spawnState") == 4) then
  spatialChat(pBoss, "Droids, deal with this scum!")
    writeData("kaas_abandon_separ_facility_necrosis:spawnState", 5)
    local pJosFour = spawnMobile("kaas", "kaas_battle_droid", 0, 18.1, -34, -386.3, 0, 36000144)
    ObjectManager.withCreatureObject(pJosFour, function(fourthTime)
    fourthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosFour, "Roger Roger.")
 
end

if (((bossHealth <= (bossMaxHealth * 0.5))) and readData("kaas_abandon_separ_facility_necrosis:spawnState") == 5) then
  spatialChat(pBoss, "Droids, deal with this scum!")
    writeData("kaas_abandon_separ_facility_necrosis:spawnState", 6)
    local pJosFive = spawnMobile("kaas", "kaas_battle_droid", 0, 18.1, -34, -386.3, 0, 36000144)
    ObjectManager.withCreatureObject(pJosFive, function(fifthTime)
    fifthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosFive, "Roger Roger.")
 
end

if (((bossHealth <= (bossMaxHealth * 0.25))) and readData("kaas_abandon_separ_facility_necrosis:spawnState") == 6) then
  spatialChat(pBoss, "Droids, deal with this scum!")
    writeData("kaas_abandon_separ_facility_necrosis:spawnState", 7)
    local pJosSix = spawnMobile("kaas", "kaas_battle_droid", 0, 18.1, -34, -386.3, 0, 36000144)
    ObjectManager.withCreatureObject(pJosSix, function(sixthTime)
    sixthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosSix, "Roger Roger.")
 
end

 
if (((bossHealth <= (bossMaxHealth * 0.01))) and readData("kaas_abandon_separ_facility_necrosis:spawnState") == 7) then
 spatialChat(pBoss, "They will just rebuild me again you fool...")
      end 
    end
  return 0
end
 
function kaas_abandon_separ_facility_necrosis:resetScreenplayStatus(pPlayer)
  writeData("kaas_abandon_separ_facility_necrosis:spawnState", 1)
end
 

