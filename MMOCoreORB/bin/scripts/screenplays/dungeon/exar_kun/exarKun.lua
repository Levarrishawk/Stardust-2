-- Exar Kun Instanced Dungeon: by Levarris for use with Stardust.
local ObjectManager = require("managers.object.object_manager")

exarKun = ScreenPlay:new {
	

}

registerScreenPlay("exarKun", true)

function exarKun:start()
	if (isZoneEnabled("yavin4")) then
    self:spawnBossRoomOneActiveArea()
    writeData("exarKun:trashSpawnState", 0)
    writeData("exarKun:bossOneSpawnState", 0)
    writeData("exarKun:bossOneTrashState", 0)
    writeData("exarKun:bossOneDead", 0)
    writeData("exarKun:bossTwoDead", 0) 
    writeData("exarKun:bossThreeDead", 0) 
    writeData("exarKun:bossFourDead", 0) 
    writeData("exarKun:bossFiveDead", 0)   
	end
end


function exarKun:activate(pPlayer)
	if (not isZoneEnabled("yavin4")) then
		CreatureObject(pPlayer):sendSystemMessage("That area is currently unavailable. Please try again later.") 
		print("exarKun: Instance unavailable, Yavin4 is disabled.")
		return false
	end
	
	if (readData("exarKun:occupiedState") == 1) then
	   CreatureObject(pPlayer):sendSystemMessage("That instance is currently occupied, please try a different instance.")
	   print("exarKun: Instance occupied error.  Canceling initialization.")
	   return false
	end   
	   
  
  local pExarKun = self:getBuildingObject()
  
  writeData("exarKunStartTime", os.time()) 
  
  CreatureObject(pPlayer):sendSystemMessage("Instance Started: You have 60 minutes remaining to complete the instance.") 
  print("exarKun: Instance Starting...")
  createEvent(1000, "exarKun", "transportPlayer", pPlayer, "")
     
  createObserver(EXITEDBUILDING, "exarKun", "resetInstanceA", pExarKun, "")
  print("exarKun: Instance exit observer started.")
  
	if (CreatureObject(pPlayer):isGrouped()) then
		local groupSize = CreatureObject(pPlayer):getGroupSize()
  print("exarKun: Running group size checks to port group members into instance.")
		for i = 0, groupSize - 1, 1 do
			local pMember = CreatureObject(pPlayer):getGroupMember(i)
			if pMember ~= nil and pMember ~= pPlayer and CreatureObject(pPlayer):isInRangeWithObject(pMember, 50) and not SceneObject(pMember):isAiAgent() then
				self:sendAuthorizationSui(pMember, pPlayer)
			end
		end
	end
	
	createEvent(100, "exarKun", "spawnCheck", pPlayer, "")
	print("exarKun: Checking if trash spawns are active.")
	createEvent(100, "exarKun", "spawnBossOneCheck", pPlayer, "")
	print("exarKun: Checking if Boss 1 is spawned.")
	
	writeData("exarKun:occupiedState", 1)  -- TO DO: Need to create the timer and conditions to reset the state of the instance.
	print("exarKun: Instance set to occupied state")
	createEvent(1000, "exarKun", "checkIfActiveForTimer", pPlayer, "")
	print("exarKun: Checking if instance is occupied.")

	return true
end



function exarKun:sendAuthorizationSui(pPlayer, pLeader)
	if (pPlayer == nil) then
		return
	end	

	local sui = SuiMessageBox.new("exarKun", "authorizationSuiCallback")
    
	sui.setTitle("Exar Kun Catcombs")
	sui.setPrompt(CreatureObject(pLeader):getFirstName() .. " has granted you authorization to travel to the Exar Kun Catacombs.  Do you accept this travel offer?")
	sui.setOkButtonText("Yes")
	sui.setCancelButtonText("No")

	local pageId = sui.sendTo(pPlayer)

	createEvent(30 * 1000, "exarKun", "closeAuthorizationSui", pPlayer, pageId)
	
end


function exarKun:authorizationSuiCallback(pPlayer, pSui, eventIndex, args, ...)
  local cancelPressed = (eventIndex == 1)
  local args = {...}
 
  if (cancelPressed) then
    CreatureObject(pPlayer):sendSystemMessage("You decline to enter the instance.")   
    return 
  elseif (eventIndex == 0) then -- Teleport 
	 createEvent(1000, "exarKun", "transportPlayer", pPlayer, "")
	end 
end


function exarKun:closeAuthorizationSui(pPlayer, pageId)
	
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	PlayerObject(pGhost):removeSuiBox(pageId)

end




function exarKun:transportPlayer(pPlayer)
	if pPlayer == nil then
		return
	end
	
  if (CreatureObject(pPlayer):isRidingMount()) then
    CreatureObject(pPlayer):sendSystemMessage("You fail to enter the instance because you are riding a mount.")  
    return 0
  else
     SceneObject(pPlayer):switchZone("yavin4", -11.8, 0.2, -121.8, 480000293)
  end
end



function exarKun:handleTimer(pPlayer)  
  local startTime = readData("exarKunStartTime")
  local timeLeftSecs = 3600 - (os.time() - startTime)
  local timeLeft = math.floor(timeLeftSecs / 60)
  
  if (timeLeft > 10) then    
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    print("exarKun:handleTimer: Time check.  line 145")
    createEvent(5 * 60 * 1000, "exarKun", "checkIfActiveForTimer", pPlayer, "")   
  elseif (timeLeft >= 3) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    print("exarKun:handleTimer: Time check.  line 149")
    createEvent(60 * 1000, "exarKun", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeft >= 2) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    print("exarKun:handleTimer: Time check.  line 153")
    createEvent(30 * 1000, "exarKun", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 90) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    print("exarKun:handleTimer: Time check.  line 158")
    createEvent(30 * 1000, "exarKun", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 60) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    print("exarKun:handleTimer: Time check.  line 162")
    createEvent(30 * 1000, "exarKun", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 30) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    print("exarKun:handleTimer: Time check.  line 166")
    createEvent(20 * 1000, "exarKun", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 10) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    print("exarKun:handleTimer: Time check.  line 170")
    createEvent(10 * 1000, "exarKun", "checkIfActiveForTimer", pPlayer, "")
  else
    self:checkIfActive(pPlayer)   
    print("exarKun:handleTimer: Time elapsed.  sending to checkIfActive.")
  end
end

function exarKun:checkIfActiveForTimer(pPlayer)
  if (readData("exarKun:occupiedState") == 1) then
    createEvent(1, "exarKun", "handleTimer", pPlayer, "")
    print("exarKun:checkIfActiveForTimer: Checking instance timer.")
  else
    --self:ejectAllGroupMembers(pPlayer)
    self:resetInstance(pPlayer)    
    print("exarKun:checkIfActiveForTimer: Instance was unoccupied. Resetting.")
  end      
end

function exarKun:spawnCheck()
  if (readData("exarKun:trashSpawnState") == 1) then
    print("exarKun:spawnCheck: Trash Mobs already spawned, aborting.")
    return
  else
    print("exarKun:spawnCheck: Trash Mobs not spawned, sending to spawnTrashMobs.")
    self:spawnTrashMobs()
    writeData("exarKun:trashSpawnState", 1)       
  end 
end



function exarKun:spawnTrashMobs()  -- Each instance script needs assigned cells.
  -- Trash pack 1: Hallway 1
   local mob1 = spawnMobile("yavin4", "exar_kun_cultist", 0, 43.3, 0, -48.1, 116, 480000295)
   local mob2 = spawnMobile("yavin4", "exar_kun_cultist", 0, 51.5, 0, -53.8, -37, 480000295)
   local mob3 = spawnMobile("yavin4", "exar_kun_cultist", 0, 50.7, 0, -46.1, -140, 480000295)
  -- Trash pack 2: Hallway 1
   local mob4 = spawnMobile("yavin4", "exar_kun_cultist", 0, 59.1, 0, -20.4, -174, 480000295)
   local mob5 = spawnMobile("yavin4", "exar_kun_cultist", 0, 56.7, 0, -20.2, -171, 480000295)
   local mob6 = spawnMobile("yavin4", "exar_kun_cultist", 0, 52.2, 0, -21.0, 176, 480000295)
  -- Trash pack 3: hallway 1
   local mob7 = spawnMobile("yavin4", "exar_kun_cultist", 0, 38.6, -0.1, -1.4, 101, 480000295)
   local mob8 = spawnMobile("yavin4", "exar_kun_cultist", 0, 41.1, -0.2, 1.9, 117, 480000295)
   local mob9 = spawnMobile("yavin4", "exar_kun_cultist", 0, 44.6, -0.4, 4.5, 150, 480000295)
   -- Trash pack 4: hallway 2
   local mob10 = spawnMobile("yavin4", "exar_kun_cultist", 0, -38.1, 0, 11.1, -172, 480000297)
   local mob11 = spawnMobile("yavin4", "exar_kun_cultist", 0, -31.9, 0, 11.8, -174, 480000297)
   local mob12 = spawnMobile("yavin4", "exar_kun_cultist", 0, -34.7, 0, 12.5, -179, 480000297)
   -- Trash pack 5: hallway 2
   local mob13 = spawnMobile("yavin4", "exar_kun_cultist", 0, -22.4, -0.2, 40.9, 144, 480000297)
   local mob14 = spawnMobile("yavin4", "exar_kun_cultist", 0, -16.3, 0, 39.7, -125, 480000297)
   local mob15 = spawnMobile("yavin4", "exar_kun_cultist", 0, -15.5, 0, 35.3, -51, 480000297)
   -- Trash pack 6: hallway 2 cell 2
   local mob16 = spawnMobile("yavin4", "exar_kun_cultist", 0, 7.7, 0.3, 50, 141, 480000298)
   local mob17 = spawnMobile("yavin4", "exar_kun_cultist", 0, 23.3, 0.3, 49.7, -113, 480000298)
   local mob18 = spawnMobile("yavin4", "exar_kun_cultist", 0, 16.7, 0.3, 39.9, -4, 480000298)
   
   print("exarKun:spawnTrashMobs: Trash Mobs Spawned Successfully.")
end

function exarKun:spawnBossOneCheck()
  if (readData("exarKun:bossOneSpawnState") == 1) then
    print("exarKun:spawnBossOneCheck: Boss 1 is already spawned. Aborting.")
    return
  else
    print("exarKun:spawnBossOneCheck: Boss 1 is not spawned. sending to spawnBossRoomOne.")
    self:spawnBossRoomOne()
    print("exarKun:spawnBossOneCheck: setting bossOneSpawnState to 1")
    writeData("exarKun:bossOneSpawnState", 1)       
  end 
end

function exarKun:spawnBossRoomOne()
  local boss1 = spawnMobile("yavin4", "exar_kun_open_hand", 0, -12.2, -0.1, -47.9, 171, 480000294)
    print("exarKun:spawnBossRoomOne: Spawning Boss 1")
    createObserver(OBJECTDESTRUCTION, "exarKun", "bossOneKilled", boss1)
    print("exarKun:spawnBossRoomOne: Boss 1 Death Observer Started")
    createObserver(DAMAGERECEIVED,"exarKun","boss1_damage", boss1)
    print("exarKun:spawnBossRoomOne: Boss 1 Damage Observer Started")
    print("exarKun:spawnBossRoomOne: Boss 1 Fight State set to 0")
    writeData("exarKun:bossOneFightState", 0) 
end

function exarKun:boss1_damage(boss1, pPlayer)
 
    local player = LuaCreatureObject(pPlayer)
    local boss = LuaCreatureObject(boss1)
    if ( boss ~= nil ) then
      local bossHealth = boss:getHAM(0)
      local bossAction = boss:getHAM(3)
      local bossMind = boss:getHAM(6)
      local bossMaxHealth = boss:getMaxHAM(0)
      local bossMaxAction = boss:getMaxHAM(3)
      local bossMaxMind = boss:getMaxHAM(6)
   
  
      if (((bossHealth <= (bossMaxHealth *0.99))) and readData("exarKun:bossOneFightState") == 0) then
      spatialChat(boss1, "You come seeking the wisdom of the master?  Very well. There is much to learn.  I will show you!")
      CreatureObject(boss1):playEffect("clienteffect/space_command/shp_shocked_01.cef", "")
        writeData("exarKun:bossOneFightState", 1)        
        print("exarKun:boss1_damage: Boss 1 at 99% health")
      end 
      
      if (((bossAction <= (bossMaxAction *0.3)))) then
           CreatureObject(boss1):setHAM(3, bossMaxAction)
           CreatureObject(boss1):playEffect("clienteffect/pl_force_channel_self.cef", "")
           spatialChat(boss1, "My strength is renewed.  Thank you master!")   
           print("exarKun:boss1_damage: Boss 1 reached 30% action. Fully healing boss 1 action pool.")
      end 
      
      if (((bossHealth <= (bossMaxHealth *0.75))) and readData("exarKun:bossOneFightState") == 1) then
      spatialChat(boss1, "We have barely begun to probe the depths of the knowledge in this place.")
      CreatureObject(boss1):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        writeData("exarKun:bossOneFightState", 2)   
        print("exarKun:boss1_damage: Boss 1 reached 75% health")            
      end
      
      if (((bossHealth <= (bossMaxHealth *0.50))) and readData("exarKun:bossOneFightState") == 2) then
      print("exarKun:boss1_damage: Boss 1 reached 50% health.  Spawning Adds")
      spatialChat(boss1, "Before the master, I was a simple scientist.  Do you not appreciate the gifts he bestows?")
        CreatureObject(boss1):playEffect("clienteffect/pl_force_resist_states_self.cef", "")
        writeData("exarKun:bossOneFightState", 3)
        local add1a = spawnMobile("yavin4", "exar_kun_cultist", 0, 5.3, -0.1, -46.5, -147, 480000294)
          CreatureObject(add1a):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(add1a, "My life for the master!")
        local add2a = spawnMobile("yavin4", "exar_kun_cultist", 0, -28.4, -0.1, -46.4, 130, 480000294)
          CreatureObject(add2a):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(add2a, "My life for the master!")
        local add3a = spawnMobile("yavin4", "exar_kun_cultist", 0, -32.2, -0.1, -51.9, 109, 480000294)
          CreatureObject(add3a):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(add3a, "My life for the master!")
        local add4a = spawnMobile("yavin4", "exar_kun_cultist", 0, 9.2, -0.1, -51.8, -121, 480000294)
          CreatureObject(add4a):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(add4a, "My life for the master!")
        local add5a = spawnMobile("yavin4", "exar_kun_cultist", 0, 9.1, -0.1, -77.7, -55, 480000294)
          CreatureObject(add5a):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(add5a, "My life for the master!")
        local add6a = spawnMobile("yavin4", "exar_kun_cultist", 0, 5.3, -0.1, -82.3, -37, 480000294)
          CreatureObject(add6a):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(add6a, "My life for the master!")
        local add7a = spawnMobile("yavin4", "exar_kun_cultist", 0, -28.4, -0.1, -82.7, 40, 480000294)
          CreatureObject(add7a):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(add7a, "My life for the master!")
        local add8a = spawnMobile("yavin4", "exar_kun_cultist", 0, -32.3, -0.1, -77.2, 59, 480000294)
          CreatureObject(add8a):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(add8a, "My life for the master!")          
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.25))) and readData("exarKun:bossOneFightState") == 3) then
      print("exarKun:boss1_damage: Boss 1 reached 25% health.")
      spatialChat(boss1, "You do not understand, all this can be yours too if you just devote yourselves to him!")
      CreatureObject(boss1):playEffect("clienteffect/pl_force_resist_bleeding_self.cef", "")
        writeData("exarKun:bossOneFightState", 4)        
      end
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun:bossOneFightState") == 4) then
      print("exarKun:boss1_damage: Boss 1 reached 10% health.")
      spatialChat(boss1, "You had the chance to learn, now your only choice is death at the hand of the master.")
      CreatureObject(boss1):playEffect("clienteffect/pl_storm_lord_special.cef", "")
      CreatureObject(boss1):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        writeData("exarKun:bossOneFightState", 5)        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun:bossOneFightState") == 5) then      
        writeData("exarKun:bossOneFightState", 6)        
      end
    end
    return 0
end

function exarKun:spawnBossRoomOneActiveArea()  -- Active areas use world coords.   Set to actual world coord in each instance manually.
  local pActiveArea1 = spawnActiveArea("yavin4", "object/active_area.iff", -4423.0, 880, 7410.5, 15, 480000294)
  if pActiveArea1 ~= nil then
      print("exarKun:spawnBossRoomOneActiveArea: Spawning Active Area for Boss 1.  Creating entry observer.")
      createObserver(ENTEREDAREA, "exarKun", "notifyBossRoomOneActiveArea", pActiveArea1)               
      end
end

function exarKun:notifyBossRoomOneActiveArea(pActiveArea1, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isPlayerCreature()) then
    print("exarKun:notifyBossRoomOneActiveArea: Entering object was not a player.  Ignoring.")
    return 0
  else
     print("exarKun:notifyBossRoomOneActiveArea: Entering object was a player.  Sending to spawnBossRoomOneTrash.")       
     self:spawnBossRoomOneTrash()
     return 0
  end
  return 0
end

function exarKun:spawnBossRoomOneTrash()
  if (readData("exarKun:bossOneTrashState") == 1) then
    print("exarKun:spawnBossRoomOneTrash: Boss 1 Trash already spawned.  Ignoring.")
    return
  else
    local add1 = spawnMobile("yavin4", "exar_kun_cultist", 0, 5.3, -0.1, -46.5, -147, 480000294)
      spatialChat(add1, "My life for the master!")
    local add2 = spawnMobile("yavin4", "exar_kun_cultist", 0, -28.4, -0.1, -46.4, 130, 480000294)
      spatialChat(add2, "My life for the master!")
    local add3 = spawnMobile("yavin4", "exar_kun_cultist", 0, -32.2, -0.1, -51.9, 109, 480000294)
      spatialChat(add3, "My life for the master!")
    local add4 = spawnMobile("yavin4", "exar_kun_cultist", 0, 9.2, -0.1, -51.8, -121, 480000294)
      spatialChat(add4, "My life for the master!")
    local add5 = spawnMobile("yavin4", "exar_kun_cultist", 0, 9.1, -0.1, -77.7, -55, 480000294)
      spatialChat(add5, "My life for the master!")
    local add6 = spawnMobile("yavin4", "exar_kun_cultist", 0, 5.3, -0.1, -82.3, -37, 480000294)
      spatialChat(add6, "My life for the master!")
    local add7 = spawnMobile("yavin4", "exar_kun_cultist", 0, -28.4, -0.1, -82.7, 40, 480000294)
      spatialChat(add7, "My life for the master!")
    local add8 = spawnMobile("yavin4", "exar_kun_cultist", 0, -32.3, -0.1, -77.2, 59, 480000294)
      spatialChat(add8, "My life for the master!")    
    print("exarKun:spawnBossRoomOneTrash: Spawned Boss 1 Trash.  Setting bossOneTrashState to 1")  
  end 
  writeData("exarKun:bossOneTrashState", 1) 
end

function exarKun:bossOneKilled(boss1) 
  print("exarKun:bossOneKilled: Boss 1 has been killed.  sending to spawnBossRoomTwo.")
  writeData("exarKun:bossOneDead", 1) 
  self:spawnBossRoomTwo()
  return 0
end

function exarKun:spawnBossRoomTwo()
  local boss2 = spawnMobile("yavin4", "exar_kun_minder", 0, -1.9, 0.1, -2.7, 85, 480000296)
    createObserver(OBJECTDESTRUCTION, "exarKun", "bossTwoKilled", boss2) 
    createObserver(DAMAGERECEIVED,"exarKun","boss2_damage", boss2)
    writeData("exarKun:bossTwoFightState", 0) 
    print("exarKun:spawnBossRoomTwo: Boss 2 spawned.  Destruction and damage observers started.")
end

function exarKun:boss2_damage(boss2, pPlayer)
 
    local player = LuaCreatureObject(pPlayer)
    local boss = LuaCreatureObject(boss2)
    if ( boss ~= nil ) then
      local bossHealth = boss:getHAM(0)
      local bossAction = boss:getHAM(3)
      local bossMind = boss:getHAM(6)
      local bossMaxHealth = boss:getMaxHAM(0)
      local bossMaxAction = boss:getMaxHAM(3)
      local bossMaxMind = boss:getMaxHAM(6)
   
  
      if (((bossHealth <= (bossMaxHealth *0.99))) and readData("exarKun:bossTwoFightState") == 0) then
      spatialChat(boss2, "I will test the mettle of your will against the metal of my blade, for the glory of the master!")
        CreatureObject(boss2):playEffect("clienteffect/space_command/shp_shocked_01.cef", "")
        writeData("exarKun:bossTwoFightState", 1)   
        print("exarKun:boss2_damage: Boss 2 at 99% health")     
      end 
      
      if (((bossAction <= (bossMaxAction *0.3)))) then
           CreatureObject(boss2):setHAM(3, bossMaxAction)
           CreatureObject(boss2):playEffect("clienteffect/pl_force_channel_self.cef", "")
           spatialChat(boss2, "My strength is renewed.  Thank you master!")   
           print("exarKun:boss2_damage: Boss 2 at 30% action.  Healing boss 2 action.")  
      end 
      
      if (((bossHealth <= (bossMaxHealth *0.75))) and readData("exarKun:bossTwoFightState") == 1) then
      print("exarKun:boss2_damage: Boss 2 at 75% health")  
      spatialChat(boss2, "You are all weak, and as the master says... The weak deserve their fate!")
        writeData("exarKun:bossTwoFightState", 2)
        local add1 = spawnMobile("yavin4", "exar_kun_cultist", 0, 8.3, 0.1, -13.2, 0, 480000296)
          spatialChat(add1, "The weak deserve their fate!")
          CreatureObject(add1):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
        local add2 = spawnMobile("yavin4", "exar_kun_cultist", 0, 8.3, 0.1, 8.2, 180, 480000296)
          spatialChat(add2, "The weak deserve their fate!")
          CreatureObject(add2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")        
      end
      
      if (((bossHealth <= (bossMaxHealth *0.50))) and readData("exarKun:bossTwoFightState") == 2) then
      print("exarKun:boss2_damage: Boss 2 at 50% health")  
      spatialChat(boss2, "Why do you persist?  You can't possibly believe you will win?")
        CreatureObject(boss2):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss2):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        writeData("exarKun:bossTwoFightState", 3)        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.25))) and readData("exarKun:bossTwoFightState") == 3) then
      print("exarKun:boss2_damage: Boss 2 at 25% health")  
      spatialChat(boss2, "This is impossible, I serve the master in all things.")
        CreatureObject(boss2):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss2):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        writeData("exarKun:bossTwoFightState", 4)
        local add3 = spawnMobile("yavin4", "exar_kun_cultist", 0, 8.3, 0.1, -13.2, 0, 480000296)
          spatialChat(add3, "The weak deserve their fate!")
          CreatureObject(add3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
        local add4 = spawnMobile("yavin4", "exar_kun_cultist", 0, 8.3, 0.1, 8.2, 180, 480000296)
          spatialChat(add4, "The weak deserve their fate!")
          CreatureObject(add4):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")         
      end
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun:bossTwoFightState") == 4) then
      print("exarKun:boss2_damage: Boss 2 at 10% health")  
      spatialChat(boss2, "Perhaps you were not as weak as I thought. I deserve to die for failing the master.")
        writeData("exarKun:bossTwoFightState", 5)        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun:bossTwoFightState") == 5) then      
        writeData("exarKun:bossTwoFightState", 6)        
      end
    end
    return 0
end

function exarKun:bossTwoKilled(boss2)
  print("exarKun:boss2_damage: Boss 2 has been killed.  sending to spawnBossRoomThree")  
  writeData("exarKun:bossTwoDead", 1) 
  self:spawnBossRoomThree()
  return 0
end

function exarKun:spawnBossRoomThree()  -- Adds for this phase:   exar_kun_warrior (A Caretaker Protector) , exar_kun_warrior_f (The Executioner)
  local boss3 = spawnMobile("yavin4", "exar_kun_caretaker", 0, 18.1, 0.1, -2.0, -90, 480000296)
    CreatureObject(boss3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
    spatialChat(boss3, "The secrets of the master's sanctum are not for you.  This is as far as you come.")
    createObserver(OBJECTDESTRUCTION, "exarKun", "bossThreeKilled", boss3) 
    createObserver(DAMAGERECEIVED,"exarKun","boss3_damage", boss3)
    writeData("exarKun:bossThreeFightState", 0)
    print("exarKun:spawnBossRoomThree: Boss 3 spawned, damage and destruction observers activated.")  
end

function exarKun:boss3_damage(boss3, pPlayer)
 
    local player = LuaCreatureObject(pPlayer)
    local boss = LuaCreatureObject(boss3)
    if ( boss ~= nil ) then
      local bossHealth = boss:getHAM(0)
      local bossAction = boss:getHAM(3)
      local bossMind = boss:getHAM(6)
      local bossMaxHealth = boss:getMaxHAM(0)
      local bossMaxAction = boss:getMaxHAM(3)
      local bossMaxMind = boss:getMaxHAM(6)
   
  
      if (((bossHealth <= (bossMaxHealth *0.99))) and readData("exarKun:bossThreeFightState") == 0) then
      print("exarKun:boss3_damage: Boss 3 at 99% health.") 
      spatialChat(boss3, "Execute them!")
        writeData("exarKun:bossThreeFightState", 1)
        local pAdd1 = spawnMobile("yavin4", "exar_kun_warrior_f", 0, -1.7, 0.1, 10.1, 128, 480000296)
        CreatureObject(pAdd1, function(firstAdd)
        firstAdd:engageCombat(pPlayer)
        end)
        CreatureObject(pAdd1):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
        spatialChat(pAdd1, "Death!")         
      end 
      
      if (((bossAction <= (bossMaxAction *0.3)))) then
          print("exarKun:boss3_damage: Boss 3 at 30% action. Healing boss 3 action")
           CreatureObject(boss3):setHAM(3, bossMaxAction)
           CreatureObject(boss3):playEffect("clienteffect/pl_force_channel_self.cef", "")
           spatialChat(boss3, "My strength is renewed.  Thank you master!")   
      end 
      
      if (((bossHealth <= (bossMaxHealth *0.75))) and readData("exarKun:bossThreeFightState") == 1) then
      print("exarKun:boss3_damage: Boss 3 at 75% health.")
      spatialChat(boss3, "You are unworthy of the gifts of the master.")
        writeData("exarKun:bossThreeFightState", 2)
        local pAdd2 = spawnMobile("yavin4", "exar_kun_warrior", 0, -2.0, 0.1, -16.0, 43, 480000296)
        CreatureObject(pAdd2, function(secondAdd)
        secondAdd:engageCombat(pPlayer)
        end)
        CreatureObject(pAdd2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
        spatialChat(pAdd2, "Unworthy!")         
      end
      
      if (((bossHealth <= (bossMaxHealth *0.50))) and readData("exarKun:bossThreeFightState") == 2) then
      print("exarKun:boss3_damage: Boss 3 at 50% health.")
      spatialChat(boss3, "Execute them!")
        writeData("exarKun:bossThreeFightState", 3)
        local pAdd3 = spawnMobile("yavin4", "exar_kun_warrior_f", 0, -1.7, 0.1, 10.1, 128, 480000296)
        CreatureObject(pAdd3, function(thirdAdd)
        thirdAdd:engageCombat(pPlayer)
        end)
        CreatureObject(pAdd3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
        spatialChat(pAdd3, "Death!")         
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.25))) and readData("exarKun:bossThreeFightState") == 3) then
      print("exarKun:boss3_damage: Boss 3 at 25% health.")
      spatialChat(boss3, "I will not fail the Master. His power is undeniable!")
        writeData("exarKun:bossThreeFightState", 4)
        CreatureObject(boss3):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss3):playEffect("clienteffect/combat_pt_electricalfield.cef", "")        
      end
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun:bossThreeFightState") == 4) then
      print("exarKun:boss3_damage: Boss 3 at 10% health.")
      spatialChat(boss3, "Master, I could not stop them...")
        writeData("exarKun:bossThreeFightState", 5)        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun:bossThreeFightState") == 5) then      
        writeData("exarKun:bossThreeFightState", 6)        
      end
    end
    return 0
end

function exarKun:bossThreeKilled(boss3)
  print("exarKun:bossThreeKilled: Boss 3 has been killed.  sending to spawnBossRoomFour.")
  writeData("exarKun:bossThreeDead", 1) 
  self:spawnBossRoomFour()
  return 0
end

function exarKun:spawnBossRoomFour()
  local boss4 = spawnMobile("yavin4", "exar_kun_fist_of_hate", 0, 15.6, 0.0, 92.8, 178, 480000299)
    
    spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 71.4, -90, 480000299)
    spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 75.4, -90, 480000299)
    spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 79.4, -90, 480000299)
    spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 83.4, -90, 480000299)
    spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 87.4, -90, 480000299)
    
    spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 71.4, 90, 480000299)
    spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 75.4, 90, 480000299)
    spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 79.4, 90, 480000299)
    spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 83.4, 90, 480000299)
    spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 87.4, 90, 480000299)
    
    createObserver(OBJECTDESTRUCTION, "exarKun", "bossFourKilled", boss4) 
    createObserver(DAMAGERECEIVED,"exarKun","boss4_damage", boss4)
    writeData("exarKun:bossFourFightState", 0)
    
    print("exarKun:spawnBossRoomFour: Boss 4 spawned, damage and destruction observers activated.  Boss 4 trash mobs spawned.")
end

function exarKun:boss4_damage(boss4, pPlayer)
 
    local player = LuaCreatureObject(pPlayer)
    local boss = LuaCreatureObject(boss4)
    if ( boss ~= nil ) then
      local bossHealth = boss:getHAM(0)
      local bossAction = boss:getHAM(3)
      local bossMind = boss:getHAM(6)
      local bossMaxHealth = boss:getMaxHAM(0)
      local bossMaxAction = boss:getMaxHAM(3)
      local bossMaxMind = boss:getMaxHAM(6)
   
  
      if (((bossHealth <= (bossMaxHealth *0.995))) and readData("exarKun:bossFourFightState") == 0) then
      print("exarKun:boss4_damage: Boss 4 at 99% health.")
      spatialChat(boss4, "You stand before the Master, defiantly.  Pity for you to come so far only to die.")
        writeData("exarKun:bossFourFightState", 1)
        CreatureObject(boss4):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss4):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        local pAdd1 = spawnMobile("yavin4", "exar_kun_cultist", 0, 15.5, -0.0, 59, 0, 480000299)
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
      
      if (((bossHealth <= (bossMaxHealth *0.75))) and readData("exarKun:bossFourFightState") == 1) then
      print("exarKun:boss4_damage: Boss 4 at 75% health.")
      spatialChat(boss4, "There is no way out for you but to embrace death.")
        writeData("exarKun:bossFourFightState", 2)
        local pAdd2 = spawnMobile("yavin4", "exar_kun_cultist", 0, 15.5, -0.0, 59, 0, 480000299)
        CreatureObject(pAdd2, function(secondAdd)
        secondAdd:engageCombat(pPlayer)
        end)
        spatialChat(pAdd2, "No escape!")         
      end
      
      if (((bossHealth <= (bossMaxHealth *0.50))) and readData("exarKun:bossFourFightState") == 2) then
      print("exarKun:boss4_damage: Boss 4 at 50% health.")
      spatialChat(boss4, "It will be over soon, give in to the inevitable!")
        writeData("exarKun:bossFourFightState", 3)
        local pAdd3 = spawnMobile("yavin4", "exar_kun_cultist", 0, 15.5, -0.0, 59, 0, 480000299)
        CreatureObject(pAdd3, function(thirdAdd)
        thirdAdd:engageCombat(pPlayer)
        end)
        spatialChat(pAdd3, "There is no Escape!")         
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.25))) and readData("exarKun:bossFourFightState") == 3) then
      print("exarKun:boss4_damage: Boss 4 at 25% health.")
      spatialChat(boss4, "Don't you see? He can not be destroyed.  He will purge you from this life like insects!")
        CreatureObject(boss4):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss4):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        writeData("exarKun:bossFourFightState", 4)        
      end
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun:bossFourFightState") == 4) then
      print("exarKun:boss4_damage: Boss 4 at 10% health.")
      spatialChat(boss4, "Exar Kun...  lives....  he will destroy you all!")
        writeData("exarKun:bossFourFightState", 5)        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun:bossFourFightState") == 5) then      
        writeData("exarKun:bossFourFightState", 6)        
      end
    end
    return 0
end

function exarKun:bossFourKilled(boss4)
  print("exarKun:bossFourKilled: Boss 4 has been killed. sending to spawnBossRoomFive")
  writeData("exarKun:bossFourDead", 1) 
  self:spawnBossRoomFive()
  return 0
end

function exarKun:spawnBossRoomFive()
  local boss5 = spawnMobile("yavin4", "exar_kun", 0, 15.8, 4.7, 106.9, 179, 480000299)
    CreatureObject(boss5):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
    spatialChat(boss5, "You tread into the abyss, unknowingly you have stepped into my domain.   I was the greatest Dark Lord of the Sith.  I am Exar Kun.")
    createObserver(OBJECTDESTRUCTION, "exarKun", "bossFiveKilled", boss5) 
    createObserver(DAMAGERECEIVED,"exarKun","boss5_damage", boss5)
    writeData("exarKun:bossFiveFightState", 0)
    print("exarKun:spawnBossRoomFive: Boss 5 spawned. Damage and Destruction observers started.")
end

function exarKun:boss5_damage(boss5, pPlayer)
 
    local player = LuaCreatureObject(pPlayer)
    local boss = LuaCreatureObject(boss5)
    if ( boss ~= nil ) then
      local bossHealth = boss:getHAM(0)
      local bossAction = boss:getHAM(3)
      local bossMind = boss:getHAM(6)
      local bossMaxHealth = boss:getMaxHAM(0)
      local bossMaxAction = boss:getMaxHAM(3)
      local bossMaxMind = boss:getMaxHAM(6)
   
  
      if (((bossHealth <= (bossMaxHealth *0.99))) and readData("exarKun:bossFiveFightState") == 0) then
      print("exarKun:boss5_damage: Boss 5 at 99% health.")
      spatialChat(boss5, "If you kneel before me now, I will end your life painlessly.  Refuse and there will be no end to your torment.")
      CreatureObject(boss5):playEffect("clienteffect/pl_storm_lord_special.cef", "")
      CreatureObject(boss5):playEffect("clienteffect/mustafar/som_dark_jedi_laugh.cef", "")
        writeData("exarKun:bossFiveFightState", 1)        
      end 
      
      if (((bossAction <= (bossMaxAction *0.3)))) then
           CreatureObject(boss5):setHAM(3, bossMaxAction)
           CreatureObject(boss5):playEffect("clienteffect/pl_force_meditate_self.cef", "")
           spatialChat(boss5, "Behold my endless power!")   
      end 
      
      if (((bossHealth <= (bossMaxHealth *0.75))) and readData("exarKun:bossFiveFightState") == 1) then
      print("exarKun:boss5_damage: Boss 5 at 75% health.  Spawning Trash Mobs")
      spatialChat(boss5, "Time to make this more interesting...")
        CreatureObject(boss5):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss5):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        CreatureObject(boss5):playEffect("clienteffect/mustafar/som_dark_jedi_laugh.cef", "")
        writeData("exarKun:bossFiveFightState", 2)      
                               
        
        local pCult1 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 71.4, -90, 480000299)
          CreatureObject(pCult1):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult2 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 75.4, -90, 480000299)
          CreatureObject(pCult2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult3 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 79.4, -90, 480000299)
          CreatureObject(pCult3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult4 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 83.4, -90, 480000299)
          CreatureObject(pCult4):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult5 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 87.4, -90, 480000299)
          CreatureObject(pCult5):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        
        local pCult6 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 71.4, 90, 480000299)
          CreatureObject(pCult6):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult7 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 75.4, 90, 480000299)
          CreatureObject(pCult7):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult8 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 79.4, 90, 480000299)
          CreatureObject(pCult8):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult9 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 83.4, 90, 480000299)
          CreatureObject(pCult9):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult10 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 87.4, 90, 480000299)
          CreatureObject(pCult10):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")       
      end
      
      if (((bossHealth <= (bossMaxHealth *0.50))) and readData("exarKun:bossFiveFightState") == 2) then
      print("exarKun:boss5_damage: Boss 5 at 50% health.  Spawning second wave of trash")
        CreatureObject(boss5):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss5):playEffect("clienteffect/mustafar/som_dark_jedi_laugh.cef", "")
        writeData("exarKun:bossFiveFightState", 3)
        local pCult11 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 71.4, -90, 480000299)
          CreatureObject(pCult11):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult12 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 75.4, -90, 480000299)
          CreatureObject(pCult12):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult13 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 79.4, -90, 480000299)
          CreatureObject(pCult13):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult14 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 83.4, -90, 480000299)
          CreatureObject(pCult14):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult15 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 87.4, -90, 480000299)
          CreatureObject(pCult15):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        
        local pCult16 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 71.4, 90, 480000299)
          CreatureObject(pCult16):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult17 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 75.4, 90, 480000299)
          CreatureObject(pCult17):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult18 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 79.4, 90, 480000299)
          CreatureObject(pCult18):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult19 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 83.4, 90, 480000299)
          CreatureObject(pCult19):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult20 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 87.4, 90, 480000299)
          CreatureObject(pCult20):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")  
        local pAdd2 = spawnMobile("yavin4", "exar_kun_cultist", 0, 15.5, -0.0, 59, 0, 480000299)
        spatialChat(pAdd2, "You will die for the master's glory!")
        CreatureObject(pAdd2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.25))) and readData("exarKun:bossFiveFightState") == 3) then
        print("exarKun:boss5_damage: Boss 5 at 25% health.  Spwaning third wave of trash")
        CreatureObject(boss5):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss5):playEffect("clienteffect/mustafar/som_dark_jedi_laugh.cef", "")
        spatialChat(boss5, "How you must hate me.  I can feel your anger.")
        writeData("exarKun:bossFiveFightState", 4)
        local pCult21 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 71.4, -90, 480000299)
          CreatureObject(pCult21):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult22 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 75.4, -90, 480000299)
          CreatureObject(pCult22):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult23 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 79.4, -90, 480000299)
          CreatureObject(pCult23):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult24 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 83.4, -90, 480000299)
          CreatureObject(pCult24):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult25 = spawnMobile("yavin4", "exar_kun_cultist", 0, 33.2, -0.1, 87.4, -90, 480000299)
          CreatureObject(pCult25):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        
        local pCult26 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 71.4, 90, 480000299)
          CreatureObject(pCult26):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult27 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 75.4, 90, 480000299)
          CreatureObject(pCult27):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult28 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 79.4, 90, 480000299)
          CreatureObject(pCult28):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult29 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 83.4, 90, 480000299)
          CreatureObject(pCult29):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult30 = spawnMobile("yavin4", "exar_kun_cultist", 0, -3.0, -0.1, 87.4, 90, 480000299)
          CreatureObject(pCult30):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
        local pAdd3 = spawnMobile("yavin4", "exar_kun_cultist", 0, 15.5, -0.0, 59, 0, 480000299)
        CreatureObject(pAdd3, function(thirdAdd)
        thirdAdd:engageCombat(pPlayer)
        end)
        spatialChat(pAdd3, "You will die for the master's glory!") 
        CreatureObject(pAdd3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")        
      end
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun:bossFiveFightState") == 4) then
      print("exarKun:boss5_damage: Boss 5 at 10% health.")
      spatialChat(boss5, "My spirit will live forever!  Forever!")
        CreatureObject(boss5):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss5):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        CreatureObject(boss5):playEffect("clienteffect/mustafar/som_dark_jedi_laugh.cef", "")
        writeData("exarKun:bossFiveFightState", 5)        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("exarKun:bossFiveFightState") == 5) then      
        writeData("exarKun:bossFiveFightState", 6)        
      end
    end
    return 0
end

function exarKun:bossFiveKilled(boss5, pPlayer)  -- TODO Use this function to reset the instance on success.   Delay by 30 seconds to allow looting time.
    
    print("exarKun:bossFiveKilled: Boss 5 dead.  handing off to awardBadgeToAll and handleVictory functions.")
    writeData("exarKun:bossFiveDead", 1) 
    CreatureObject(pPlayer):sendSystemMessage("You and your group have defeated Exar Kun!  You will be removed from the instance in 120 seconds.")  
    createEvent(1000, "exarKun", "awardBadgeToAll", pPlayer, "")
    createEvent(120000, "exarKun", "handleVictory", pPlayer, "")
  return 0
end

function exarKun:getBuildingObject()
  print("exarKun:getBuildingObject: Recorded instance parent objectID to memory.")
  return getSceneObject(480000292)  -- Different parent for each instance script
end

function exarKun:getCell(cellName)
  local pExarKun = self:getBuildingObject()
  
  if (pExarKun == nil) then
    printLuaError("unable to get building object.")
    return nil
  end
  
  return BuildingObject(pExarKun):getNamedCell(cellName)  
end

function exarKun:checkIfActive(pPlayer)
  if (readData("exarKun:occupiedState") == 1) then
    print("exarKun:checkIfActive: Setting trashSpawnState to 0")
    writeData("exarKun:trashSpawnState", 0)
    print("exarKun:checkIfActive: executing function ejectAllPlayers")
    self:ejectAllPlayers(pPlayer)
    print("exarKun:checkIfActive: executing function resetInstance")
    self:resetInstance(pPlayer)
    return true
  end
end

function exarKun:ejectAllPlayers(pPlayer)

  createEvent(1000, "exarKun", "ejectPlayer", pPlayer, "")
  print("exarKun:ejectAllPlayers: checking for group and getting group size.")
  if (CreatureObject(pPlayer):isGrouped()) then
    local groupSize = CreatureObject(pPlayer):getGroupSize()

    for i = 0, groupSize - 1, 1 do
      local pMember = CreatureObject(pPlayer):getGroupMember(i)
      print("exarKun:ejectAllPlayers: checking if group member is within 300m of initiating player and is not an npc or pet.")
      if pMember ~= nil and pMember ~= pPlayer and CreatureObject(pPlayer):isInRangeWithObject(pMember, 300) and not SceneObject(pMember):isAiAgent() then
        self:ejectPlayer(pMember, pPlayer)
        print("exarKun:ejectAllPlayers: Object passed checks, ejecting from instance.")
      end
    end
  end
end

function exarKun:ejectAllGroupMembers(pPlayer)
  print("exarKun:ejectAllGroupMembers: Running Function.")
  if (CreatureObject(pPlayer):isGrouped()) then
    print("exarKun:ejectAllGroupMembers: Checking if player is grouped.")
    local groupSize = CreatureObject(pPlayer):getGroupSize()
    print("exarKun:ejectAllGroupMembers: Checking if player's group size")
    for i = 0, groupSize - 1, 1 do
      local pMember = CreatureObject(pPlayer):getGroupMember(i)
      if pMember ~= nil and pMember ~= pPlayer and not SceneObject(pMember):isAiAgent() then
       print("exarKun:ejectAllGroupMembers: Checking if group member is a player.")
        self:ejectPlayer(pMember, pPlayer)
        print("exarKun:ejectAllGroupMembers: Ejecting player.")
      end
    end
  end
end

function exarKun:ejectPlayer(pPlayer)
  if pPlayer == nil then
    return
  end
  
  if (SceneObject(pPlayer):getZoneName() == "yavin4") then
    CreatureObject(pPlayer):sendSystemMessage("You are now being removed from the instance.")
    SceneObject(pPlayer):switchZone("yavin4", 5024.1, 73.2, 5585.1, 0)
    print("exarKun:ejectPlayer: Instance Member was on Yavin4, teleporting out of instance.")
  else
    return
  end    
end



function exarKun:resetInstanceA(pExarKun, pPlayer)
  if not SceneObject(pPlayer):isPlayerCreature() then
    return 0
  end
  if (readData("exarKun:occupiedState") == 1) then
    writeData("exarKun:occupiedState", 0)
    print("exarKun:resetInstanceA: A player left the instanced area.  Sending to resetInstance and ejectAllGroupMembers")
    
    CreatureObject(pPlayer):sendSystemMessage("One or more group members have left the dungeon.  Resetting Instance.")
    self:resetInstance(pPlayer)
    self:ejectAllGroupMembers(pPlayer)  
    return 0
  end
end

function exarKun:resetInstance(pPlayer)
 -- self:resetTrashMobs()
  --self:resetTrashMobs2()
  CreatureObject(pPlayer):sendSystemMessage("The instance has been reset.")
  writeData("exarKun:occupiedState", 0)
end

function exarKun:awardBadge(pPlayer)
  local pGhost = CreatureObject(pPlayer):getPlayerObject()
  
  if (pGhost ~= nil and not PlayerObject(pGhost):hasBadge(152)) then
        PlayerObject(pGhost):awardBadge(152)
  end          
end

function exarKun:awardBadgeToAll(pPlayer)

  createEvent(1000, "exarKun", "awardBadge", pPlayer, "")
  
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

function exarKun:handleVictory(pPlayer) 
print("exarKun:handleVictory: handing off to resetInstance")
  self:resetInstance(pPlayer)
print("exarKun:handleVictory: handing off to ejectAllPlayers")  
  self:ejectAllPlayers(pPlayer)
   writeData("exarKun:bossOneDead", 0)
   writeData("exarKun:bossTwoDead", 0) 
   writeData("exarKun:bossThreeDead", 0) 
   writeData("exarKun:bossFourDead", 0) 
   writeData("exarKun:bossFiveDead", 0)  
   writeData("exarKun:trashSpawnState", 0)
   writeData("exarKun:bossOneSpawnState", 0)
   writeData("exarKun:bossOneTrashState", 0) 
   print("exarKun:handleVictory: set all bossDead states to 0,  set all spawnStates to 0")  
   return 0
end

function exarKun:resetTrashMobs(mob1, mob2, mob3, mob4, mob5, mob6, mob7, mob8, mob9, mob10, mob11, mob12, mob13, mob14, mob15, mob16, mob17, mob18)
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

function exarKun:resetTrashMobs2(pCult1, pCult2, pCult3, pCult4, pCult5, pCult6, pCult7, pCult8, pCult9, pCult10, pCult11, pCult12, pCult13, pCult14, pCult15, pCult16, pCult17, pCult18, pCult19, pCult20, pCult21, pCult22, pCult23, pCult24, pCult25, pCult26, pCult27, pCult28, pCult29, pCult30)
  if (pCult1 == nil) then
    return
  else
    SceneObject(pCult1):destroyObjectFromWorld()
  end
  if (pCult2 == nil) then
    return
  else    
    SceneObject(pCult2):destroyObjectFromWorld()
  end
  if (pCult3 == nil) then
    return
  else    
    SceneObject(pCult3):destroyObjectFromWorld()
  end
  if (pCult4 == nil) then
    return
  else   
    SceneObject(pCult4):destroyObjectFromWorld()
  end
  if (pCult5 == nil) then
    return
  else   
    SceneObject(pCult5):destroyObjectFromWorld()
  end
  if (pCult6 == nil) then
    return
  else   
    SceneObject(pCult6):destroyObjectFromWorld()
  end
  if (pCult7 == nil) then
    return
  else   
    SceneObject(pCult7):destroyObjectFromWorld()
  end
  if (pCult8 == nil) then
    return
  else   
    SceneObject(pCult8):destroyObjectFromWorld()
  end
  if (pCult9 == nil) then
    return
  else   
    SceneObject(pCult9):destroyObjectFromWorld()
  end
  if (pCult10 == nil) then
    return
  else   
    SceneObject(pCult10):destroyObjectFromWorld()
  end
  if (pCult11 == nil) then
    return
  else   
    SceneObject(pCult11):destroyObjectFromWorld()
  end
  if (pCult12 == nil) then
    return
  else   
    SceneObject(pCult12):destroyObjectFromWorld()
  end
  if (pCult13 == nil) then
    return
  else   
    SceneObject(pCult13):destroyObjectFromWorld()
  end
  if (pCult14 == nil) then
    return
  else   
    SceneObject(pCult14):destroyObjectFromWorld()
  end
  if (pCult15 == nil) then
    return
  else   
    SceneObject(pCult15):destroyObjectFromWorld()
  end
  if (pCult16 == nil) then
    return
  else   
    SceneObject(pCult16):destroyObjectFromWorld()
  end
  if (pCult17 == nil) then
    return
  else   
    SceneObject(pCult17):destroyObjectFromWorld()
  end
  if (pCult18 == nil) then
    return
  else   
    SceneObject(pCult18):destroyObjectFromWorld()
  end
  if (pCult19 == nil) then
    return
  else   
    SceneObject(pCult19):destroyObjectFromWorld()
  end
  if (pCult20 == nil) then
    return
  else   
    SceneObject(pCult20):destroyObjectFromWorld()
  end
  if (pCult21 == nil) then
    return
  else   
    SceneObject(pCult21):destroyObjectFromWorld()
  end
  if (pCult22 == nil) then
    return
  else   
    SceneObject(pCult22):destroyObjectFromWorld()
  end
  if (pCult23 == nil) then
    return
  else   
    SceneObject(pCult23):destroyObjectFromWorld()
  end
  if (pCult24 == nil) then
    return
  else   
    SceneObject(pCult24):destroyObjectFromWorld()
  end
  if (pCult25 == nil) then
    return
  else   
    SceneObject(pCult25):destroyObjectFromWorld()
  end
  if (pCult26 == nil) then
    return
  else   
    SceneObject(pCult26):destroyObjectFromWorld()
  end
  if (pCult27 == nil) then
    return
  else   
    SceneObject(pCult27):destroyObjectFromWorld()
  end
  if (pCult28 == nil) then
    return
  else   
    SceneObject(pCult28):destroyObjectFromWorld()
  end
  if (pCult29 == nil) then
    return
  else   
    SceneObject(pCult29):destroyObjectFromWorld()
  end
  if (pCult30 == nil) then
    return
  else   
    SceneObject(pCult30):destroyObjectFromWorld()
  end
end

