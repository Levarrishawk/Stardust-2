-- Exar Kun Instanced Dungeon: by Levarris for use with Stardust.
local ObjectManager = require("managers.object.object_manager")

exarKun3 = ScreenPlay:new {
	

}

registerScreenPlay("exarKun3", true)

function exarKun3:start()
	if (isZoneEnabled("yavin4")) then
    self:spawnBossRoomOneActiveArea()
    writeData("exarKun3:trashSpawnState", 0)
    writeData("exarKun3:bossOneSpawnState", 0)
    writeData("exarKun3:bossOneTrashState", 0)
    writeData("exarKun3:bossOneDead", 0)
    writeData("exarKun3:bossTwoDead", 0) 
    writeData("exarKun3:bossThreeDead", 0) 
    writeData("exarKun3:bossFourDead", 0) 
    writeData("exarKun3:bossFiveDead", 0)   
	end
end


function exarKun3:activate(pPlayer)
	if (not isZoneEnabled("yavin4")) then
		CreatureObject(pPlayer):sendSystemMessage("That area is currently unavailable. Please try again later.") 
		return false
	end
	
	if (readData("exarKun3:occupiedState") == 1) then
	   CreatureObject(pPlayer):sendSystemMessage("That instance is currently occupied, please try a different instance.")
	   return false
	end   
	   
  
  local pexarKun3 = self:getBuildingObject()
  
  writeData("exarKun3StartTime", os.time()) 
  
  CreatureObject(pPlayer):sendSystemMessage("Instance Started: You have 60 minutes remaining to complete the instance.") 
  createEvent(1000, "exarKun3", "transportPlayer", pPlayer, "")
     
  createObserver(EXITEDBUILDING, "exarKun3", "resetInstanceA", pexarKun3, "")
  
	if (CreatureObject(pPlayer):isGrouped()) then
		local groupSize = CreatureObject(pPlayer):getGroupSize()

		for i = 0, groupSize - 1, 1 do
			local pMember = CreatureObject(pPlayer):getGroupMember(i)
			if pMember ~= nil and pMember ~= pPlayer and CreatureObject(pPlayer):isInRangeWithObject(pMember, 50) and not SceneObject(pMember):isAiAgent() then
				self:sendAuthorizationSui(pMember, pPlayer)
			end
		end
	end
	
	createEvent(100, "exarKun3", "spawnCheck", pPlayer, "")
	createEvent(100, "exarKun3", "spawnBossOneCheck", pPlayer, "")
	
	writeData("exarKun3:occupiedState", 1)  -- TO DO: Need to create the timer and conditions to reset the state of the instance.
	createEvent(1000, "exarKun3", "checkIfActiveForTimer", pPlayer, "")

	return true
end



function exarKun3:sendAuthorizationSui(pPlayer, pLeader)
	if (pPlayer == nil) then
		return
	end	

	local sui = SuiMessageBox.new("exarKun3", "authorizationSuiCallback")
    
	sui.setTitle("Exar Kun Catcombs")
	sui.setPrompt(CreatureObject(pLeader):getFirstName() .. " has granted you authorization to travel to the Exar Kun Catacombs.  Do you accept this travel offer?")
	sui.setOkButtonText("Yes")
	sui.setCancelButtonText("No")

	local pageId = sui.sendTo(pPlayer)

	createEvent(30 * 1000, "exarKun3", "closeAuthorizationSui", pPlayer, pageId)
	
end


function exarKun3:authorizationSuiCallback(pPlayer, pSui, eventIndex, args, ...)
  local cancelPressed = (eventIndex == 1)
  local args = {...}
 
  if (cancelPressed) then
    CreatureObject(pPlayer):sendSystemMessage("You decline to enter the instance.")   
    return 
  elseif (eventIndex == 0) then -- Teleport 
	 createEvent(1000, "exarKun3", "transportPlayer", pPlayer, "")
	end 
end


function exarKun3:closeAuthorizationSui(pPlayer, pageId)
	
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	PlayerObject(pGhost):removeSuiBox(pageId)

end




function exarKun3:transportPlayer(pPlayer)
	if pPlayer == nil then
		return
	end
  
  if (CreatureObject(pPlayer):isRidingMount()) then
    CreatureObject(pPlayer):sendSystemMessage("You fail to enter the instance because you are riding a mount.")  
    return 0
  else
	   SceneObject(pPlayer):switchZone("yavin4", -11.8, 0.2, -121.8, 480000309)
	end 
end



function exarKun3:handleTimer(pPlayer)  
  local startTime = readData("exarKun3StartTime")
  local timeLeftSecs = 3600 - (os.time() - startTime)
  local timeLeft = math.floor(timeLeftSecs / 60)
  
  if (timeLeft > 10) then    
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(5 * 60 * 1000, "exarKun3", "checkIfActiveForTimer", pPlayer, "")   
  elseif (timeLeft >= 3) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(60 * 1000, "exarKun3", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeft >= 2) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(30 * 1000, "exarKun3", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 90) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(30 * 1000, "exarKun3", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 60) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(30 * 1000, "exarKun3", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 30) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(20 * 1000, "exarKun3", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 10) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(10 * 1000, "exarKun3", "checkIfActiveForTimer", pPlayer, "")
  else
    self:checkIfActive(pPlayer)   
  end
end

function exarKun3:checkIfActiveForTimer(pPlayer)
  if (readData("exarKun3:occupiedState") == 1) then
    createEvent(1, "exarKun3", "handleTimer", pPlayer, "")
  else
    --self:ejectAllGroupMembers(pPlayer)
    self:resetInstance(pPlayer)    
  end      
end

function exarKun3:spawnCheck()
  if (readData("exarKun3:trashSpawnState") == 1) then
    return
  else
    self:spawnTrashMobs()
    writeData("exarKun3:trashSpawnState", 1)       
  end 
end



function exarKun3:spawnTrashMobs()  -- Each instance script needs assigned cells.
  -- Trash pack 1: Hallway 1
   local mob1 = spawnMobile("yavin4", "exar_kun_cultist", 0, 43.3, 0, -48.1, 116, 480000311)
   local mob2 = spawnMobile("yavin4", "exar_kun_cultist", 0, 51.5, 0, -53.8, -37, 480000311)
   local mob3 = spawnMobile("yavin4", "exar_kun_cultist", 0, 50.7, 0, -46.1, -140, 480000311)
  -- Trash pack 2: Hallway 1
   local mob4 = spawnMobile("yavin4", "exar_kun_cultist", 0, 59.1, 0, -20.4, -174, 480000311)
   local mob5 = spawnMobile("yavin4", "exar_kun_cultist", 0, 56.7, 0, -20.2, -171, 480000311)
   local mob6 = spawnMobile("yavin4", "exar_kun_cultist", 0, 52.2, 0, -21.0, 176, 480000311)
  -- Trash pack 3: hallway 1
   local mob7 = spawnMobile("yavin4", "exar_kun_cultist", 0, 38.6, -0.1, -1.4, 101, 480000311)
   local mob8 = spawnMobile("yavin4", "exar_kun_cultist", 0, 41.1, -0.2, 1.9, 117, 480000311)
   local mob9 = spawnMobile("yavin4", "exar_kun_cultist", 0, 44.6, -0.4, 4.5, 150, 480000311)
   -- Trash pack 4: hallway 2
   local mob10 = spawnMobile("yavin4", "exar_kun_cultist", 0, -38.1, 0, 11.1, -172, 480000313)
   local mob11 = spawnMobile("yavin4", "exar_kun_cultist", 0, -31.9, 0, 11.8, -174, 480000313)
   local mob12 = spawnMobile("yavin4", "exar_kun_cultist", 0, -34.7, 0, 12.5, -179, 480000313)
   -- Trash pack 5: hallway 2
   local mob13 = spawnMobile("yavin4", "exar_kun_cultist", 0, -22.4, -0.2, 40.9, 144, 480000313)
   local mob14 = spawnMobile("yavin4", "exar_kun_cultist", 0, -16.3, 0, 39.7, -125, 480000313)
   local mob15 = spawnMobile("yavin4", "exar_kun_cultist", 0, -15.5, 0, 35.3, -51, 480000313)
   -- Trash pack 6: hallway 2 cell 2
   local mob16 = spawnMobile("yavin4", "exar_kun_cultist", 0, 7.7, 0.3, 50, 141, 480000314)
   local mob17 = spawnMobile("yavin4", "exar_kun_cultist", 0, 23.3, 0.3, 49.7, -113, 480000314)
   local mob18 = spawnMobile("yavin4", "exar_kun_cultist", 0, 16.7, 0.3, 39.9, -4, 480000314)
end

function exarKun3:spawnBossOneCheck()
  if (readData("exarKun3:bossOneSpawnState") == 1) then
    return
  else
    self:spawnBossRoomOne()
    writeData("exarKun3:bossOneSpawnState", 1)       
  end 
end

function exarKun3:spawnBossRoomOne()
  local boss1 = spawnMobile("yavin4", "exar_kun_open_hand", 0, -12.2, -0.1, -47.9, 171, 480000310)
    createObserver(OBJECTDESTRUCTION, "exarKun3", "bossOneKilled", boss1)
    createObserver(DAMAGERECEIVED,"exarKun3","boss1_damage", boss1)
    writeData("exarKun3:bossOneFightState", 0) 
end

function exarKun3:boss1_damage(boss1, pPlayer)
 
    local player = LuaCreatureObject(pPlayer)
    local boss = LuaCreatureObject(boss1)
    if ( boss ~= nil ) then
      local bossHealth = boss:getHAM(0)
      local bossAction = boss:getHAM(3)
      local bossMind = boss:getHAM(6)
      local bossMaxHealth = boss:getMaxHAM(0)
      local bossMaxAction = boss:getMaxHAM(3)
      local bossMaxMind = boss:getMaxHAM(6)
   
  
      if (((bossHealth <= (bossMaxHealth *0.99))) and readData("exarKun3:bossOneFightState") == 0) then
      spatialChat(boss1, "You come seeking the wisdom of the master?  Very well. There is much to learn.  I will show you!")
      CreatureObject(boss1):playEffect("clienteffect/space_command/shp_shocked_01.cef", "")
        writeData("exarKun3:bossOneFightState", 1)        
      end 
      
      if (((bossAction <= (bossMaxAction *0.3)))) then
           CreatureObject(boss1):setHAM(3, bossMaxAction)
           CreatureObject(boss1):playEffect("clienteffect/pl_force_channel_self.cef", "")
           spatialChat(boss1, "My strength is renewed.  Thank you master!")   
      end 
      
      if (((bossHealth <= (bossMaxHealth *0.75))) and readData("exarKun3:bossOneFightState") == 1) then
      spatialChat(boss1, "We have barely begun to probe the depths of the knowledge in this place.")
      CreatureObject(boss1):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        writeData("exarKun3:bossOneFightState", 2)               
      end
      
      if (((bossHealth <= (bossMaxHealth *0.50))) and readData("exarKun3:bossOneFightState") == 2) then
      spatialChat(boss1, "Before the master, I was a simple scientist.  Do you not appreciate the gifts he bestows?")
        CreatureObject(boss1):playEffect("clienteffect/pl_force_resist_states_self.cef", "")
        writeData("exarKun3:bossOneFightState", 3)
        local add1a = spawnMobile("yavin4", "exar_kun_cultist", 0, 5.3, -0.1, -46.5, -147, 480000310)
          CreatureObject(add1a):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(add1a, "My life for the master!")
        local add2a = spawnMobile("yavin4", "exar_kun_cultist", 0, -28.4, -0.1, -46.4, 130, 480000310)
          CreatureObject(add2a):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(add2a, "My life for the master!")
        local add3a = spawnMobile("yavin4", "exar_kun_cultist", 0, -32.2, -0.1, -51.9, 109, 480000310)
          CreatureObject(add3a):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(add3a, "My life for the master!")
        local add4a = spawnMobile("yavin4", "exar_kun_cultist", 0, 9.2, -0.1, -51.8, -121, 480000310)
          CreatureObject(add4a):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(add4a, "My life for the master!")
        local add5a = spawnMobile("yavin4", "exar_kun_cultist", 0, 9.1, -0.1, -77.7, -55, 480000310)
          CreatureObject(add5a):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(add5a, "My life for the master!")
        local add6a = spawnMobile("yavin4", "exar_kun_cultist", 0, 5.3, -0.1, -82.3, -37, 480000310)
          CreatureObject(add6a):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(add6a, "My life for the master!")
        local add7a = spawnMobile("yavin4", "exar_kun_cultist", 0, -28.4, -0.1, -82.7, 40, 480000310)
          CreatureObject(add7a):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(add7a, "My life for the master!")
        local add8a = spawnMobile("yavin4", "exar_kun_cultist", 0, -32.3, -0.1, -77.2, 59, 480000310)
          CreatureObject(add8a):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(add8a, "My life for the master!")          
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.25))) and readData("exarKun3:bossOneFightState") == 3) then
      spatialChat(boss1, "You do not understand, all this can be yours too if you just devote yourselves to him!")
      CreatureObject(boss1):playEffect("clienteffect/pl_force_resist_bleeding_self.cef", "")
        writeData("exarKun3:bossOneFightState", 4)        
      end
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun3:bossOneFightState") == 4) then
      spatialChat(boss1, "You had the chance to learn, now your only choice is death at the hand of the master.")
      CreatureObject(boss1):playEffect("clienteffect/pl_storm_lord_special.cef", "")
      CreatureObject(boss1):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        writeData("exarKun3:bossOneFightState", 5)        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun3:bossOneFightState") == 5) then      
        writeData("exarKun3:bossOneFightState", 6)        
      end
    end
    return 0
end

function exarKun3:spawnBossRoomOneActiveArea()  -- Active areas use world coords.   Set to actual world coord in each instance manually.
  local pActiveArea1 = spawnActiveArea("yavin4", "object/active_area.iff", 3682, 792, -2168, 15, 480000310)
  if pActiveArea1 ~= nil then    
          createObserver(ENTEREDAREA, "exarKun3", "notifyBossRoomOneActiveArea", pActiveArea1)                  
      end
end

function exarKun3:notifyBossRoomOneActiveArea(pActiveArea1, pMovingObject, pPlayer)
  
    
  if (not SceneObject(pMovingObject):isPlayerCreature()) then
    return 0
  else      
     self:spawnBossRoomOneTrash()
     return 0
  end
  return 0
end

function exarKun3:spawnBossRoomOneTrash()
  if (readData("exarKun3:bossOneTrashState") == 1) then
    return
  else
    local add1 = spawnMobile("yavin4", "exar_kun_cultist", 0, 5.3, -0.1, -46.5, -147, 480000310)
      spatialChat(add1, "My life for the master!")
    local add2 = spawnMobile("yavin4", "exar_kun_cultist", 0, -28.4, -0.1, -46.4, 130, 480000310)
      spatialChat(add2, "My life for the master!")
    local add3 = spawnMobile("yavin4", "exar_kun_cultist", 0, -32.2, -0.1, -51.9, 109, 480000310)
      spatialChat(add3, "My life for the master!")
    local add4 = spawnMobile("yavin4", "exar_kun_cultist", 0, 9.2, -0.1, -51.8, -121, 480000310)
      spatialChat(add4, "My life for the master!")
    local add5 = spawnMobile("yavin4", "exar_kun_cultist", 0, 9.1, -0.1, -77.7, -55, 480000310)
      spatialChat(add5, "My life for the master!")
    local add6 = spawnMobile("yavin4", "exar_kun_cultist", 0, 5.3, -0.1, -82.3, -37, 480000310)
      spatialChat(add6, "My life for the master!")
    local add7 = spawnMobile("yavin4", "exar_kun_cultist", 0, -28.4, -0.1, -82.7, 40, 480000310)
      spatialChat(add7, "My life for the master!")
    local add8 = spawnMobile("yavin4", "exar_kun_cultist", 0, -32.3, -0.1, -77.2, 59, 480000310)
      spatialChat(add8, "My life for the master!")    
  end 
  writeData("exarKun3:bossOneTrashState", 1) 
end

function exarKun3:bossOneKilled(boss1) 
  writeData("exarKun3:bossOneDead", 1) 
  self:spawnBossRoomTwo()
  return 0
end

function exarKun3:spawnBossRoomTwo()
  local boss2 = spawnMobile("yavin4", "exar_kun_minder", 0, -1.9, 0.1, -2.7, 85, 480000312)
    createObserver(OBJECTDESTRUCTION, "exarKun3", "bossTwoKilled", boss2) 
    createObserver(DAMAGERECEIVED,"exarKun3","boss2_damage", boss2)
    writeData("exarKun3:bossTwoFightState", 0) 
end

function exarKun3:boss2_damage(boss2, pPlayer)
 
    local player = LuaCreatureObject(pPlayer)
    local boss = LuaCreatureObject(boss2)
    if ( boss ~= nil ) then
      local bossHealth = boss:getHAM(0)
      local bossAction = boss:getHAM(3)
      local bossMind = boss:getHAM(6)
      local bossMaxHealth = boss:getMaxHAM(0)
      local bossMaxAction = boss:getMaxHAM(3)
      local bossMaxMind = boss:getMaxHAM(6)
   
  
      if (((bossHealth <= (bossMaxHealth *0.99))) and readData("exarKun3:bossTwoFightState") == 0) then
      spatialChat(boss2, "I will test the mettle of your will against the metal of my blade, for the glory of the master!")
        CreatureObject(boss2):playEffect("clienteffect/space_command/shp_shocked_01.cef", "")
        writeData("exarKun3:bossTwoFightState", 1)        
      end 
      
      if (((bossAction <= (bossMaxAction *0.3)))) then
           CreatureObject(boss2):setHAM(3, bossMaxAction)
           CreatureObject(boss2):playEffect("clienteffect/pl_force_channel_self.cef", "")
           spatialChat(boss2, "My strength is renewed.  Thank you master!")   
      end 
      
      if (((bossHealth <= (bossMaxHealth *0.75))) and readData("exarKun3:bossTwoFightState") == 1) then
      spatialChat(boss2, "You are all weak, and as the master says... The weak deserve their fate!")
        writeData("exarKun3:bossTwoFightState", 2)
        local add1 = spawnMobile("yavin4", "exar_kun_cultist", 0, 8.3, 0.1, -13.2, 0, 480000312)
          spatialChat(add1, "The weak deserve their fate!")
          CreatureObject(add1):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
        local add2 = spawnMobile("yavin4", "exar_kun_cultist", 0, 8.3, 0.1, 8.2, 180, 480000312)
          spatialChat(add2, "The weak deserve their fate!")
          CreatureObject(add2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")        
      end
      
      if (((bossHealth <= (bossMaxHealth *0.50))) and readData("exarKun3:bossTwoFightState") == 2) then
      spatialChat(boss2, "Why do you persist?  You can't possibly believe you will win?")
        CreatureObject(boss2):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss2):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        writeData("exarKun3:bossTwoFightState", 3)        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.25))) and readData("exarKun3:bossTwoFightState") == 3) then
      spatialChat(boss2, "This is impossible, I serve the master in all things.")
        CreatureObject(boss2):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss2):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        writeData("exarKun3:bossTwoFightState", 4)
        local add3 = spawnMobile("yavin4", "exar_kun_cultist", 0, 8.3, 0.1, -13.2, 0, 480000312)
          spatialChat(add3, "The weak deserve their fate!")
          CreatureObject(add3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
        local add4 = spawnMobile("yavin4", "exar_kun_cultist", 0, 8.3, 0.1, 8.2, 180, 480000312)
          spatialChat(add4, "The weak deserve their fate!")
          CreatureObject(add4):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")         
      end
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun3:bossTwoFightState") == 4) then
      spatialChat(boss2, "Perhaps you were not as weak as I thought. I deserve to die for failing the master.")
        writeData("exarKun3:bossTwoFightState", 5)        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun3:bossTwoFightState") == 5) then      
        writeData("exarKun3:bossTwoFightState", 6)        
      end
    end
    return 0
end

function exarKun3:bossTwoKilled(boss2)
  writeData("exarKun3:bossTwoDead", 1) 
  self:spawnBossRoomThree()
  return 0
end

function exarKun3:spawnBossRoomThree()  -- Adds for this phase:   exar_kun_warrior (A Caretaker Protector) , exar_kun_warrior_f (The Executioner)
  local boss3 = spawnMobile("yavin4", "exar_kun_caretaker", 0, 18.1, 0.1, -2.0, -90, 480000312)
    CreatureObject(boss3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
    spatialChat(boss3, "The secrets of the master's sanctum are not for you.  This is as far as you come.")
    createObserver(OBJECTDESTRUCTION, "exarKun3", "bossThreeKilled", boss3) 
    createObserver(DAMAGERECEIVED,"exarKun3","boss3_damage", boss3)
    writeData("exarKun3:bossThreeFightState", 0)
end

function exarKun3:boss3_damage(boss3, pPlayer)
 
    local player = LuaCreatureObject(pPlayer)
    local boss = LuaCreatureObject(boss3)
    if ( boss ~= nil ) then
      local bossHealth = boss:getHAM(0)
      local bossAction = boss:getHAM(3)
      local bossMind = boss:getHAM(6)
      local bossMaxHealth = boss:getMaxHAM(0)
      local bossMaxAction = boss:getMaxHAM(3)
      local bossMaxMind = boss:getMaxHAM(6)
   
  
      if (((bossHealth <= (bossMaxHealth *0.99))) and readData("exarKun3:bossThreeFightState") == 0) then
      spatialChat(boss3, "Execute them!")
        writeData("exarKun3:bossThreeFightState", 1)
        local pAdd1 = spawnMobile("yavin4", "exar_kun_warrior_f", 0, -1.7, 0.1, 10.1, 128, 480000312)
        CreatureObject(pAdd1, function(firstAdd)
        firstAdd:engageCombat(pPlayer)
        end)
        CreatureObject(pAdd1):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
        spatialChat(pAdd1, "Death!")         
      end 
      
      if (((bossAction <= (bossMaxAction *0.3)))) then
           CreatureObject(boss3):setHAM(3, bossMaxAction)
           CreatureObject(boss3):playEffect("clienteffect/pl_force_channel_self.cef", "")
           spatialChat(boss3, "My strength is renewed.  Thank you master!")   
      end 
      
      if (((bossHealth <= (bossMaxHealth *0.75))) and readData("exarKun3:bossThreeFightState") == 1) then
      spatialChat(boss3, "You are unworthy of the gifts of the master.")
        writeData("exarKun3:bossThreeFightState", 2)
        local pAdd2 = spawnMobile("yavin4", "exar_kun_warrior", 0, -2.0, 0.1, -16.0, 43, 480000312)
        CreatureObject(pAdd2, function(secondAdd)
        secondAdd:engageCombat(pPlayer)
        end)
        CreatureObject(pAdd2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
        spatialChat(pAdd2, "Unworthy!")         
      end
      
      if (((bossHealth <= (bossMaxHealth *0.50))) and readData("exarKun3:bossThreeFightState") == 2) then
      spatialChat(boss3, "Execute them!")
        writeData("exarKun3:bossThreeFightState", 3)
        local pAdd3 = spawnMobile("yavin4", "exar_kun_warrior_f", 0, -1.7, 0.1, 10.1, 128, 480000312)
        CreatureObject(pAdd3, function(thirdAdd)
        thirdAdd:engageCombat(pPlayer)
        end)
        CreatureObject(pAdd3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
        spatialChat(pAdd3, "Death!")         
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.25))) and readData("exarKun3:bossThreeFightState") == 3) then
      spatialChat(boss3, "I will not fail the Master. His power is undeniable!")
        writeData("exarKun3:bossThreeFightState", 4)
        CreatureObject(boss3):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss3):playEffect("clienteffect/combat_pt_electricalfield.cef", "")        
      end
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun3:bossThreeFightState") == 4) then
      spatialChat(boss3, "Master, I could not stop them...")
        writeData("exarKun3:bossThreeFightState", 5)        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun3:bossThreeFightState") == 5) then      
        writeData("exarKun3:bossThreeFightState", 6)        
      end
    end
    return 0
end

function exarKun3:bossThreeKilled(boss3)
  writeData("exarKun3:bossThreeDead", 1) 
  self:spawnBossRoomFour()
  return 0
end

function exarKun3:spawnBossRoomFour()
  local boss4 = spawnMobile("yavin4", "exar_kun_fist_of_hate", 0, 15.6, 0.0, 92.8, 178, 480000315)
    
    spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 71.4, -90, 480000315)
    spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 75.4, -90, 480000315)
    spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 79.4, -90, 480000315)
    spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 83.4, -90, 480000315)
    spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 87.4, -90, 480000315)
    
    spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 71.4, 90, 480000315)
    spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 75.4, 90, 480000315)
    spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 79.4, 90, 480000315)
    spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 83.4, 90, 480000315)
    spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 87.4, 90, 480000315)
    
    createObserver(OBJECTDESTRUCTION, "exarKun3", "bossFourKilled", boss4) 
    createObserver(DAMAGERECEIVED,"exarKun3","boss4_damage", boss4)
    writeData("exarKun3:bossFourFightState", 0)
end

function exarKun3:boss4_damage(boss4, pPlayer)
 
    local player = LuaCreatureObject(pPlayer)
    local boss = LuaCreatureObject(boss4)
    if ( boss ~= nil ) then
      local bossHealth = boss:getHAM(0)
      local bossAction = boss:getHAM(3)
      local bossMind = boss:getHAM(6)
      local bossMaxHealth = boss:getMaxHAM(0)
      local bossMaxAction = boss:getMaxHAM(3)
      local bossMaxMind = boss:getMaxHAM(6)
   
  
      if (((bossHealth <= (bossMaxHealth *0.995))) and readData("exarKun3:bossFourFightState") == 0) then
      spatialChat(boss4, "You stand before the Master, defiantly.  Pity for you to come so far only to die.")
        writeData("exarKun3:bossFourFightState", 1)
        CreatureObject(boss4):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss4):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        local pAdd1 = spawnMobile("yavin4", "exar_kun_cultist", 0, 15.5, -0.0, 59, 0, 480000315)
        CreatureObject(pAdd1, function(firstAdd)
        firstAdd:engageCombat(pPlayer)
        end)
        spatialChat(pAdd1, "No escape!")         
      end 
      
      if (((bossAction <= (bossMaxAction *0.3)))) then
           CreatureObject(boss4):setHAM(3, bossMaxAction)
           CreatureObject(boss4):playEffect("clienteffect/pl_force_channel_self.cef", "")
           spatialChat(boss4, "My strength is renewed.  Thank you master!")   
      end 
      
      if (((bossHealth <= (bossMaxHealth *0.75))) and readData("exarKun3:bossFourFightState") == 1) then
      spatialChat(boss4, "There is no way out for you but to embrace death.")
        writeData("exarKun3:bossFourFightState", 2)
        local pAdd2 = spawnMobile("yavin4", "exar_kun_cultist", 0, 15.5, -0.0, 59, 0, 480000315)
        CreatureObject(pAdd2, function(secondAdd)
        secondAdd:engageCombat(pPlayer)
        end)
        spatialChat(pAdd2, "No escape!")         
      end
      
      if (((bossHealth <= (bossMaxHealth *0.50))) and readData("exarKun3:bossFourFightState") == 2) then
      spatialChat(boss4, "It will be over soon, give in to the inevitable!")
        writeData("exarKun3:bossFourFightState", 3)
        local pAdd3 = spawnMobile("yavin4", "exar_kun_cultist", 0, 15.5, -0.0, 59, 0, 480000315)
        CreatureObject(pAdd3, function(thirdAdd)
        thirdAdd:engageCombat(pPlayer)
        end)
        spatialChat(pAdd3, "There is no Escape!")         
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.25))) and readData("exarKun3:bossFourFightState") == 3) then
      spatialChat(boss4, "Don't you see? He can not be destroyed.  He will purge you from this life like insects!")
        CreatureObject(boss4):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss4):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        writeData("exarKun3:bossFourFightState", 4)        
      end
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun3:bossFourFightState") == 4) then
      spatialChat(boss4, "Exar Kun...  lives....  he will destroy you all!")
        writeData("exarKun3:bossFourFightState", 5)        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun3:bossFourFightState") == 5) then      
        writeData("exarKun3:bossFourFightState", 6)        
      end
    end
    return 0
end

function exarKun3:bossFourKilled(boss4)
  writeData("exarKun3:bossFourDead", 1) 
  self:spawnBossRoomFive()
  return 0
end

function exarKun3:spawnBossRoomFive()
  local boss5 = spawnMobile("yavin4", "exar_kun", 0, 15.8, 4.7, 106.9, 179, 480000315)
    CreatureObject(boss5):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
    spatialChat(boss5, "You tread into the abyss, unknowingly you have stepped into my domain.   I was the greatest Dark Lord of the Sith.  I am Exar Kun.")
    createObserver(OBJECTDESTRUCTION, "exarKun3", "bossFiveKilled", boss5) 
    createObserver(DAMAGERECEIVED,"exarKun3","boss5_damage", boss5)
    writeData("exarKun3:bossFiveFightState", 0)
end

function exarKun3:boss5_damage(boss5, pPlayer)
 
    local player = LuaCreatureObject(pPlayer)
    local boss = LuaCreatureObject(boss5)
    if ( boss ~= nil ) then
      local bossHealth = boss:getHAM(0)
      local bossAction = boss:getHAM(3)
      local bossMind = boss:getHAM(6)
      local bossMaxHealth = boss:getMaxHAM(0)
      local bossMaxAction = boss:getMaxHAM(3)
      local bossMaxMind = boss:getMaxHAM(6)
   
  
      if (((bossHealth <= (bossMaxHealth *0.99))) and readData("exarKun3:bossFiveFightState") == 0) then
      spatialChat(boss5, "If you kneel before me now, I will end your life painlessly.  Refuse and there will be no end to your torment.")
      CreatureObject(boss5):playEffect("clienteffect/pl_storm_lord_special.cef", "")
      CreatureObject(boss5):playEffect("clienteffect/mustafar/som_dark_jedi_laugh.cef", "")
        writeData("exarKun3:bossFiveFightState", 1)        
      end 
      
      if (((bossAction <= (bossMaxAction *0.3)))) then
           CreatureObject(boss5):setHAM(3, bossMaxAction)
           CreatureObject(boss5):playEffect("clienteffect/pl_force_meditate_self.cef", "")
           spatialChat(boss5, "Behold my endless power!")   
      end 
      
      if (((bossHealth <= (bossMaxHealth *0.75))) and readData("exarKun3:bossFiveFightState") == 1) then
      spatialChat(boss5, "Time to make this more interesting...")
        CreatureObject(boss5):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss5):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        CreatureObject(boss5):playEffect("clienteffect/mustafar/som_dark_jedi_laugh.cef", "")
        writeData("exarKun3:bossFiveFightState", 2)
        local pAdd1 = spawnMobile("yavin4", "exar_kun_cultist", 0, 15.5, -0.0, 59, 0, 480000315)
        CreatureObject(pAdd1, function(firstAdd)
        firstAdd:engageCombat(pPlayer)
        end)
        spatialChat(pAdd1, "My life for the Master!")
        CreatureObject(pAdd1):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")        
      end
      
      if (((bossHealth <= (bossMaxHealth *0.50))) and readData("exarKun3:bossFiveFightState") == 2) then
        CreatureObject(boss5):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss5):playEffect("clienteffect/mustafar/som_dark_jedi_laugh.cef", "")
        writeData("exarKun3:bossFiveFightState", 3)
        
        local pCult1 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 71.4, -90, 480000315)
          CreatureObject(pCult1):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult2 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 75.4, -90, 480000315)
          CreatureObject(pCult2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult3 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 79.4, -90, 480000315)
          CreatureObject(pCult3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult4 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 83.4, -90, 480000315)
          CreatureObject(pCult4):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult5 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 87.4, -90, 480000315)
          CreatureObject(pCult5):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        
        local pCult6 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 71.4, 90, 480000315)
          CreatureObject(pCult6):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult7 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 75.4, 90, 480000315)
          CreatureObject(pCult7):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult8 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 79.4, 90, 480000315)
          CreatureObject(pCult8):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult9 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 83.4, 90, 480000315)
          CreatureObject(pCult9):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult10 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 87.4, 90, 480000315)
          CreatureObject(pCult10):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
        
        local pAdd2 = spawnMobile("yavin4", "exar_kun_cultist", 0, 15.5, -0.0, 59, 0, 480000315)
        CreatureObject(pAdd2, function(secondAdd)
        secondAdd:engageCombat(pPlayer)
        end)
        spatialChat(pAdd2, "You will die for the master's glory!")
        CreatureObject(pAdd2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.25))) and readData("exarKun3:bossFiveFightState") == 3) then
        CreatureObject(boss5):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss5):playEffect("clienteffect/mustafar/som_dark_jedi_laugh.cef", "")
        spatialChat(boss5, "How you must hate me.  I can feel your anger.")
        writeData("exarKun3:bossFiveFightState", 4)
        local pAdd3 = spawnMobile("yavin4", "exar_kun_cultist", 0, 15.5, -0.0, 59, 0, 480000315)
        CreatureObject(pAdd3, function(thirdAdd)
        thirdAdd:engageCombat(pPlayer)
        end)
        spatialChat(pAdd3, "You will die for the master's glory!") 
        CreatureObject(pAdd3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")        
      end
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun3:bossFiveFightState") == 4) then
      spatialChat(boss5, "My spirit will live forever!  Forever!")
        CreatureObject(boss5):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss5):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        CreatureObject(boss5):playEffect("clienteffect/mustafar/som_dark_jedi_laugh.cef", "")
        writeData("exarKun3:bossFiveFightState", 5)        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun3:bossFiveFightState") == 5) then      
        writeData("exarKun3:bossFiveFightState", 6)        
      end
    end
    return 0
end

function exarKun3:bossFiveKilled(boss5, pPlayer)  -- TODO Use this function to reset the instance on success.   Delay by 30 seconds to allow looting time.
    writeData("exarKun3:bossFiveDead", 1) 
    CreatureObject(pPlayer):sendSystemMessage("You and your group have defeated Exar Kun!  You will be removed from the instance in 120 seconds.")  
    createEvent(1000, "exarKun3", "awardBadgeToAll", pPlayer, "")
    createEvent(120000, "exarKun3", "handleVictory", pPlayer, "")
  return 0
end

function exarKun3:resetTrashMobs(mob1, mob2, mob3, mob4, mob5, mob6, mob7, mob8, mob9, mob10, mob11, mob12, mob13, mob14, mob15, mob16, mob17, mob18)
  if (mob1 == nil) then
    return
  else
    SceneObject(mob1):destroyObjectFromWorld()
  end
  if (mob2 == nil) then
    return
  else    
    SceneObject(mob2):destroyObjectFromWorld()
  end
  if (mob3 == nil) then
    return
  else    
    SceneObject(mob3):destroyObjectFromWorld()
  end
  if (mob4 == nil) then
    return
  else   
    SceneObject(mob4):destroyObjectFromWorld()
  end
  if (mob5 == nil) then
    return
  else   
    SceneObject(mob5):destroyObjectFromWorld()
  end
  if (mob6 == nil) then
    return
  else   
    SceneObject(mob6):destroyObjectFromWorld()
  end
  if (mob7 == nil) then
    return
  else   
    SceneObject(mob7):destroyObjectFromWorld()
  end
  if (mob8 == nil) then
    return
  else   
    SceneObject(mob8):destroyObjectFromWorld()
  end
  if (mob9 == nil) then
    return
  else   
    SceneObject(mob9):destroyObjectFromWorld()
  end
  if (mob10 == nil) then
    return
  else   
    SceneObject(mob10):destroyObjectFromWorld()
  end
  if (mob11 == nil) then
    return
  else   
    SceneObject(mob11):destroyObjectFromWorld()
  end
  if (mob12 == nil) then
    return
  else   
    SceneObject(mob12):destroyObjectFromWorld()
  end
  if (mob13 == nil) then
    return
  else   
    SceneObject(mob13):destroyObjectFromWorld()
  end
  if (mob14 == nil) then
    return
  else   
    SceneObject(mob14):destroyObjectFromWorld()
  end
  if (mob15 == nil) then
    return
  else   
    SceneObject(mob15):destroyObjectFromWorld()
  end
  if (mob16 == nil) then
    return
  else   
    SceneObject(mob16):destroyObjectFromWorld()
  end
  if (mob17 == nil) then
    return
  else   
    SceneObject(mob17):destroyObjectFromWorld()
  end
  if (mob18 == nil) then
    return
  else   
    SceneObject(mob18):destroyObjectFromWorld()
  end
end

function exarKun3:getBuildingObject()
  return getSceneObject(480000308)  -- Different parent for each instance script
end

function exarKun3:getCell(cellName)
  local pexarKun3 = self:getBuildingObject()
  
  if (pexarKun3 == nil) then
    printLuaError("unable to get building object.")
    return nil
  end
  
  return BuildingObject(pexarKun3):getNamedCell(cellName)  
end

function exarKun3:checkIfActive(pPlayer)
  if (readData("exarKun3:occupiedState") == 1) then
    writeData("exarKun3:trashSpawnState", 0)
    self:ejectAllPlayers(pPlayer)
    self:resetInstance(pPlayer)
    return true
  end
end

function exarKun3:ejectAllPlayers(pPlayer)

  createEvent(1000, "exarKun3", "ejectPlayer", pPlayer, "")
  
  if (CreatureObject(pPlayer):isGrouped()) then
    local groupSize = CreatureObject(pPlayer):getGroupSize()

    for i = 0, groupSize - 1, 1 do
      local pMember = CreatureObject(pPlayer):getGroupMember(i)
      if pMember ~= nil and pMember ~= pPlayer and CreatureObject(pPlayer):isInRangeWithObject(pMember, 300) and not SceneObject(pMember):isAiAgent() then
        self:ejectPlayer(pMember, pPlayer)
      end
    end
  end
end

function exarKun3:ejectAllGroupMembers(pPlayer)

  if (CreatureObject(pPlayer):isGrouped()) then
    local groupSize = CreatureObject(pPlayer):getGroupSize()

    for i = 0, groupSize - 1, 1 do
      local pMember = CreatureObject(pPlayer):getGroupMember(i)
      if pMember ~= nil and pMember ~= pPlayer and not SceneObject(pMember):isAiAgent() then
        self:ejectPlayer(pMember, pPlayer)
      end
    end
  end
end

function exarKun3:ejectPlayer(pPlayer)
  if pPlayer == nil then
    return
  end
  
  if (SceneObject(pPlayer):getZoneName() == "yavin4") then
    CreatureObject(pPlayer):sendSystemMessage("You are now being removed from the instance.")
    SceneObject(pPlayer):switchZone("yavin4", 5024.1, 73.2, 5585.1, 0)
  else
    return
  end
end



function exarKun3:resetInstanceA(pexarKun3, pPlayer)
  if not SceneObject(pPlayer):isPlayerCreature() then
    return 0
  end
  writeData("exarKun3:occupiedState", 0)
  
  CreatureObject(pPlayer):sendSystemMessage("One or more group members have left the dungeon.")
  self:resetInstance(pPlayer)
  self:ejectAllGroupMembers(pPlayer)  
  return 0
end

function exarKun3:resetInstance(pPlayer)
  CreatureObject(pPlayer):sendSystemMessage("The instance has been reset.")
  writeData("exarKun3:occupiedState", 0)
end

function exarKun3:awardBadge(pPlayer)
  local pGhost = CreatureObject(pPlayer):getPlayerObject()
  
  if (pGhost ~= nil and not PlayerObject(pGhost):hasBadge(152)) then
        PlayerObject(pGhost):awardBadge(152)
  end          
end

function exarKun3:awardBadgeToAll(pPlayer)

  createEvent(1000, "exarKun3", "awardBadge", pPlayer, "")
  
  if (CreatureObject(pPlayer):isGrouped()) then
    local groupSize = CreatureObject(pPlayer):getGroupSize()

    for i = 0, groupSize - 1, 1 do
      local pMember = CreatureObject(pPlayer):getGroupMember(i)
      if pMember ~= nil and pMember ~= pPlayer and CreatureObject(pPlayer):isInRangeWithObject(pMember, 300) and not SceneObject(pMember):isAiAgent() then
        self:awardBadge(pMember, pPlayer)
      end
    end
  end
end

function exarKun3:handleVictory(pPlayer) 
  self:resetInstance(pPlayer)
  self:ejectAllPlayers(pPlayer)
   writeData("exarKun3:bossOneDead", 0)
   writeData("exarKun3:bossTwoDead", 0) 
   writeData("exarKun3:bossThreeDead", 0) 
   writeData("exarKun3:bossFourDead", 0) 
   writeData("exarKun3:bossFiveDead", 0)  
   writeData("exarKun3:trashSpawnState", 0)
   writeData("exarKun3:bossOneSpawnState", 0)
   writeData("exarKun3:bossOneTrashState", 0) 
end
