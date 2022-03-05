local ObjectManager = require("managers.object.object_manager")



kaas_city_ruins_mellichae = ScreenPlay:new {
  numberOfActs = 1,

}

registerScreenPlay("kaas_city_ruins_mellichae", true)

function kaas_city_ruins_mellichae:start()
  if (isZoneEnabled("kaas")) then
    self:spawnMobiles()
  end
end

function kaas_city_ruins_mellichae:spawnMobiles()

  local pTrigger = spawnMobile("kaas", "dark_jedi_voice", 10800, -0.2, -43.3, -150.7, 0, 36000020)
        if (pTrigger ~= nil ) then
        createObserver(OBJECTDESTRUCTION, "kaas_city_ruins_mellichae", "notifyTriggerDead", pTrigger)
        end
 
      writeData("kaas_city_ruins_mellichae:spawnState",0)
    return 0
end
 
function kaas_city_ruins_mellichae:notifyTriggerDead(pTrigger, pPlayer)
        local pBoss = spawnMobile("kaas", "vitiate", 0, -0.2, -43.3, -150.7, 0, 36000020)
        ObjectManager.withCreatureObject(pBoss, function(oBoss)
        writeData("kaas_city_ruins_mellichae:spawnState", 1)
        writeData("kaasboss1", oBoss:getObjectID())
          spatialChat(pBoss, "My life spans millennia. Legions have risen to test me.  My ascendance is inevitable. A day, a year, a millennium... it matters not. I hold the patience of stone and the will of stars. Your striving is insignificant. Let your death be the same..")
            createObserver(DAMAGERECEIVED,"kaas_city_ruins_mellichae","boss_damage", pBoss)
            createObserver(OBJECTDESTRUCTION, "kaas_city_ruins_mellichae", "notifyBossDead", pBoss)
          createEvent(1800000, "kaas_city_ruins_mellichae", "despawnBoss", pBoss, "")
   
        end)
  return 0
end
 
function kaas_city_ruins_mellichae:notifyBossDead(pBoss, pPlayer)
      writeData("kaas_city_ruins_mellichae:spawnState", 0)
    return 0
end
 
 
function kaas_city_ruins_mellichae:despawnBoss(pBoss, pPlayer)
      forcePeace(pBoss)
        spHelper.destroy(readData("kaasboss1"),true)
      writeData("kaas_city_ruins_mellichae:spawnState", 0)
    return 0
end

function kaas_city_ruins_mellichae:boss_damage(pBoss, pPlayer)
 
  local player = LuaCreatureObject(pPlayer)
  local boss = LuaCreatureObject(pBoss)
  if ( boss ~= nil ) then
  local bossHealth = boss:getHAM(0)
  local bossAction = boss:getHAM(3)
  local bossMind = boss:getHAM(6)
  local bossMaxHealth = boss:getMaxHAM(0)
  local bossMaxAction = boss:getMaxHAM(3)
  local bossMaxMind = boss:getMaxHAM(6)
   
  local x1 = -0.2
  local y1 = -150.7
  local x2 = boss:getPositionX()
  local y2 = boss:getPositionY()
   
  local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
  local maxDistance = 45
   
  if distance > (maxDistance * maxDistance) then
  spatialChat(pBoss, "Do not fear death...")
 


  forcePeace(pBoss)

   
  createEvent(3500, "kaas_city_ruins_mellichae", "resetScreenplayStatus", pPlayer)
end

if (((bossHealth <= (bossMaxHealth *0.95))) and readData("kaas_city_ruins_mellichae:spawnState") == 1) then
  spatialChat(pBoss, "You are mine. Servants. Slaves. Weapons. And you will obey…")
    writeData("kaas_city_ruins_mellichae:spawnState", 2)
    local pJos = spawnMobile("kaas", "sith_shadow_thug", 0, -0.2, -43.3, -141.0, 177, 36000020)
    ObjectManager.withCreatureObject(pJos, function(firstTime)
    firstTime:engageCombat(pPlayer)
    end)
  spatialChat(pJos, "I hear the master's command.")
 
end
 
if (((bossHealth <= (bossMaxHealth *0.89))) and readData("kaas_city_ruins_mellichae:spawnState") == 2) then
  spatialChat(pBoss, "So many vessels to enslave.  Your resistance is amusing.")
    writeData("kaas_city_ruins_mellichae:spawnState", 3)
    local pJosTwo = spawnMobile("kaas", "dark_jedi_knight", 0, -0.2, -43.3, -141.0, 177, 36000020)
    ObjectManager.withCreatureObject(pJosTwo, function(secondTime)
    secondTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosTwo, "As you will it, master.")
 
end
 
if (((bossHealth <= (bossMaxHealth *0.85))) and readData("kaas_city_ruins_mellichae:spawnState") == 3) then
  spatialChat(pBoss, "Another willing vessel to carry out my bidding..")
    writeData("kaas_city_ruins_mellichae:spawnState", 4)
    local pJosThree = spawnMobile("kaas", "dark_jedi_knight", 0, -0.2, -43.3, -141.0, 177, 36000020)
    ObjectManager.withCreatureObject(pJosThree, function(thirdTime)
    thirdTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosThree, "Yes... master.")
 
end

if (((bossHealth <= (bossMaxHealth *0.84))) and readData("kaas_city_ruins_mellichae:spawnState") == 4) then
  spatialChat(pBoss, "This one is weak, but willing to serve.")
    writeData("kaas_city_ruins_mellichae:spawnState", 5)
    local pJosFour = spawnMobile("kaas", "dark_adept", 0, -0.2, -43.3, -141.0, 177, 36000020)
    ObjectManager.withCreatureObject(pJosFour, function(fourthTime)
    fourthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosFour, "I... can't control myself!")
 
end

if (((bossHealth <= (bossMaxHealth * 0.5))) and readData("kaas_city_ruins_mellichae:spawnState") == 5) then
  spatialChat(pBoss,"For a very long time I have watched the galaxy unfold before me.  I watched the one who called himself Emperor let his empire slip through his fingers.  He was unworthy of the title.")
    writeData("kaas_city_ruins_mellichae:spawnState", 6)
    local pJosFive = spawnMobile("kaas", "dark_jedi_knight", 0, -0.2, -43.3, -141.0, 177, 36000020)
    ObjectManager.withCreatureObject(pJosFive, function(fifthTime)
    fifthTime:engageCombat(pPlayer)
    end)
  spatialChat(pJosFive, "Let me be your vessel, master.")
 
end

if (((bossHealth <= (bossMaxHealth * 0.25))) and readData("kaas_city_ruins_mellichae:spawnState") == 6) then
  spatialChat(pBoss,"When will you understand that you can not destroy me?  I am eternal.")
    writeData("kaas_city_ruins_mellichae:spawnState", 7)
    local pJosSix = spawnMobile("kaas", "dark_adept", 0, -0.2, -43.3, -141.0, 177, 36000020)
    ObjectManager.withCreatureObject(pJosSix, function(sixthTime)
    sixthTime:engageCombat(pPlayer)
    end)
 -- spatialChat(pJosSix, "Eliminating Threat.")
 
end

 
if (((bossHealth <= (bossMaxHealth * 0.02))) and readData("kaas_city_ruins_mellichae:spawnState") == 7) then
  spatialChat(pBoss, "You still do not understand...  So long as there are people on Dromund Kaas, I will ALWAYS find another vessel to be my voice.")
      end 
    end
  return 0
end
 
function kaas_city_ruins_mellichae:resetScreenplayStatus(pPlayer)
  writeData("kaas_city_ruins_mellichae:spawnState", 1)
end
 

