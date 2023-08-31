local ObjectManager = require("managers.object.object_manager")



jakku_weapons_facility_boss_1 = ScreenPlay:new {
  numberOfActs = 1,

}

registerScreenPlay("jakku_weapons_facility_boss_1", true)

function jakku_weapons_facility_boss_1:start()
  if (isZoneEnabled("jakku")) then
    self:spawnMobiles()
  end
end

function jakku_weapons_facility_boss_1:spawnMobiles()

  local pTrigger = spawnMobile("jakku", "jakku_battle_droid", 10800, -32.5, -28, -28.1, -6, 610000119)
        if (pTrigger ~= nil ) then
        createObserver(OBJECTDESTRUCTION, "jakku_weapons_facility_boss_1", "notifyTriggerDead", pTrigger)
        end
      writeData("jakku_weapons_facility_boss_1:spawnState",0)
    return 0
end
 
function jakku_weapons_facility_boss_1:notifyTriggerDead(pTrigger, pPlayer)
   local pBoss = spawnMobile("jakku", "jakku_black_trooper_1", 0, -32.6, -28, -17.9, 180, 610000119)                  
     spatialChat(pBoss, "WARNING, this facility is under a protocol 77 emergency evacuation lockdown. You are not authorized and will be terminated.")
     createObserver(DAMAGERECEIVED,"jakku_weapons_facility_boss_1","boss_damage", pBoss)
     createObserver(OBJECTDESTRUCTION, "jakku_weapons_facility_boss_1", "notifyBossDead", pBoss)
     writeData("jakku_weapons_facility_boss_1:spawnState", 1)                
end
 
function jakku_weapons_facility_boss_1:notifyBossDead(pBoss, pPlayer)
      writeData("jakku_weapons_facility_boss_1:spawnState", 0)
    return 0
end
 
 
function jakku_weapons_facility_boss_1:despawnBoss(pBoss, pPlayer)
      forcePeace(pBoss)
        SceneObject(pBoss):destroyObjectFromWorld()
      writeData("jakku_weapons_facility_boss_1:spawnState", 0)
    return 0
end
 
function jakku_weapons_facility_boss_1:boss_damage(pBoss, pPlayer)
 
   local player = LuaCreatureObject(pPlayer)
   local boss = LuaCreatureObject(pBoss)
   if ( boss ~= nil ) then
    local bossHealth = boss:getHAM(0)
    local bossAction = boss:getHAM(3)
    local bossMind = boss:getHAM(6)
    local bossMaxHealth = boss:getMaxHAM(0)
    local bossMaxAction = boss:getMaxHAM(3)
    local bossMaxMind = boss:getMaxHAM(6)
     
    local x1 = -32.6
    local y1 = -17.9
    local x2 = boss:getPositionX()
    local y2 = boss:getPositionY()
     
    local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
    local maxDistance = 45
     
    if distance > (maxDistance * maxDistance) then
      spatialChat(pBoss, "Hostiles retreating. Protocol-77 remains in effect. Unit Standing down.")
      forcePeace(pBoss)      
   end
 
    if (((bossHealth <= (bossMaxHealth *0.9))) and readData("jakku_weapons_facility_boss_1:spawnState") == 1) then
      spatialChat(pBoss, "Resistance levels exceeding maximum acceptable value. Reinforcement required.")
        writeData("jakku_weapons_facility_boss_1:spawnState", 2)
        local pJos = spawnMobile("jakku", "jakku_fast_battle_droid", 0, -27.9, -28.0, -23.1, -90, 610000119)     
      spatialChat(pJos, "Roger Roger.")
     
    end
     
    if (((bossHealth <= (bossMaxHealth *0.89))) and readData("jakku_weapons_facility_boss_1:spawnState") == 2) then
        writeData("jakku_weapons_facility_boss_1:spawnState", 3)
        local pJosTwo = spawnMobile("jakku", "jakku_fast_battle_droid", 0, -37.7, -28, -23.1, 0, 610000119)    
      spatialChat(pJosTwo, "Freeze Intruders!")
    end
     
    if (((bossHealth <= (bossMaxHealth *0.85))) and readData("jakku_weapons_facility_boss_1:spawnState") == 3) then
        writeData("jakku_weapons_facility_boss_1:spawnState", 4)
        local pJosThree = spawnMobile("jakku", "jakku_fast_battle_droid", 0, -32.4, -28, -28.5, -3, 610000119)
      spatialChat(pJosThree, "This is a restricted area!")
    end
    
    if (((bossHealth <= (bossMaxHealth *0.84))) and readData("jakku_weapons_facility_boss_1:spawnState") == 4) then
      spatialChat(pBoss, "WARNING, the facility is now under incursion. Protocol-77 under threat. Requesting additional droid reinforcement.")
        writeData("jakku_weapons_facility_boss_1:spawnState", 5)
        local pJosFour = spawnMobile("jakku", "jakku_fast_battle_droid", 0, -32.6, -28, -15.4, 180, 610000119)    
      spatialChat(pJosFour, "Protocol-77 in effect. Eliminating threat.")
    end
    
    if (((bossHealth <= (bossMaxHealth * 0.5))) and readData("jakku_weapons_facility_boss_1:spawnState") == 5) then
      spatialChat(pBoss,"WARNING, this incursion must not be allowed to succeed.  By special decree of Emperor Palpatine this facility will be destroyed if Protocol-77 is breached.")
        writeData("jakku_weapons_facility_boss_1:spawnState", 6)
        local pJosFive = spawnMobile("jakku", "jakku_fast_battle_droid", 0, -32.6, -28, -15.4, 180, 610000119)
      spatialChat(pJosFive, "Directive: Protocol-77 Must not be compromised.")
    end
    
    if (((bossHealth <= (bossMaxHealth * 0.4))) and readData("jakku_weapons_facility_boss_1:spawnState") == 6) then
      spatialChat(pBoss,"WARNING, Protocol-77 nearing compromise.  Incursion on facility level 1.   Intruders, this facility has been programmed to self destruct if Protocol-77 is breached.  Cease hostilities and submit at once.")
        writeData("jakku_weapons_facility_boss_1:spawnState", 7)
        local pJosSix = spawnMobile("jakku", "jakku_battle_droid", 0, -32.6, -28, -15.4, 180, 610000119)
      spatialChat(pJosSix, "Eliminating Threat.")
    end
    
     
    if (((bossHealth <= (bossMaxHealth * 0.02))) and readData("jakku_weapons_facility_boss_1:spawnState") == 7) then
      spatialChat(pBoss, "WARNING, intruders.  Protocol-77 has been breached.  Facility self destruct has been initiated.  Catastrophic reactor overload will occur in 4 hours.  This facility must not be compromised.  You are advised to vacate the area.  Reactor overload will destroy this planet.")
        end 
    end
   return 0
end
 
function jakku_weapons_facility_boss_1:resetScreenplayStatus(pPlayer)
  writeData("jakku_weapons_facility_boss_1:spawnState", 1)
end
 

