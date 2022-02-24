-- Axkva Instanced Dungeon: by Levarris for use with Stardust.
local ObjectManager = require("managers.object.object_manager")

axkvaMin = ScreenPlay:new {
	

}

registerScreenPlay("axkvaMin", true)

function axkvaMin:start()
	if (isZoneEnabled("dathomir")) then
    self:spawnBossRoomOneActiveArea()
    writeData("axkvaMin:trashSpawnState", 0)
    writeData("axkvaMin:bossOneSpawnState", 0)
    writeData("axkvaMin:bossOneTrashState", 0)
    writeData("axkvaMin:bossOneDead", 0)
    writeData("axkvaMin:bossTwoDead", 0) 
    writeData("axkvaMin:bossThreeDead", 0) 
    writeData("axkvaMin:bossFourDead", 0) 
    writeData("axkvaMin:bossFiveDead", 0)  
    writeData("axkvaMin:bossSixDead", 0) 
	end
end


function axkvaMin:activate(pPlayer)
	if (not isZoneEnabled("dathomir")) then
		CreatureObject(pPlayer):sendSystemMessage("That area is currently unavailable. Please try again later.") 
		return false
	end
	
	if (readData("axkvaMin:occupiedState") == 1) then
	   CreatureObject(pPlayer):sendSystemMessage("That instance is currently occupied, please try a different instance.")
	   return false
	end   
	   
  
  local paxkvaMin = self:getBuildingObject()
  
  writeData("axkvaMinStartTime", os.time()) 
  
  CreatureObject(pPlayer):sendSystemMessage("Instance Started: You have 60 minutes remaining to complete the instance.") 
  createEvent(1000, "axkvaMin", "transportPlayer", pPlayer, "")
     
  createObserver(EXITEDBUILDING, "axkvaMin", "resetInstanceA", paxkvaMin, "")
  
	if (CreatureObject(pPlayer):isGrouped()) then
		local groupSize = CreatureObject(pPlayer):getGroupSize()

		for i = 0, groupSize - 1, 1 do
			local pMember = CreatureObject(pPlayer):getGroupMember(i)
			if pMember ~= nil and pMember ~= pPlayer and CreatureObject(pPlayer):isInRangeWithObject(pMember, 50) and not SceneObject(pMember):isAiAgent() then
				self:sendAuthorizationSui(pMember, pPlayer)
			end
		end
	end
	
	createEvent(100, "axkvaMin", "spawnCheck", pPlayer, "")
	createEvent(100, "axkvaMin", "spawnBossOneCheck", pPlayer, "")
	
	writeData("axkvaMin:occupiedState", 1)  -- TO DO: Need to create the timer and conditions to reset the state of the instance.
	createEvent(1000, "axkvaMin", "checkIfActiveForTimer", pPlayer, "")

	return true
end



function axkvaMin:sendAuthorizationSui(pPlayer, pLeader)
	if (pPlayer == nil) then
		return
	end	

	local sui = SuiMessageBox.new("axkvaMin", "authorizationSuiCallback")
    
	sui.setTitle("The Chamber of Banishment")
	sui.setPrompt(CreatureObject(pLeader):getFirstName() .. " has granted you authorization to travel to The Chamber of Banishment.  Do you accept this travel offer?")
	sui.setOkButtonText("Yes")
	sui.setCancelButtonText("No")

	local pageId = sui.sendTo(pPlayer)

	createEvent(30 * 1000, "axkvaMin", "closeAuthorizationSui", pPlayer, pageId)
	
end


function axkvaMin:authorizationSuiCallback(pPlayer, pSui, eventIndex, args, ...)
  local cancelPressed = (eventIndex == 1)
  local args = {...}
 
  if (cancelPressed) then
    CreatureObject(pPlayer):sendSystemMessage("You decline to enter the instance.")   
    return 
  elseif (eventIndex == 0) then -- Teleport 
	 createEvent(1000, "axkvaMin", "transportPlayer", pPlayer, "")
	end 
end


function axkvaMin:closeAuthorizationSui(pPlayer, pageId)
	
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	PlayerObject(pGhost):removeSuiBox(pageId)

end




function axkvaMin:transportPlayer(pPlayer)
	if pPlayer == nil then
		return
	end

	SceneObject(pPlayer):switchZone("dathomir", 30.4, 0.1, 0.3, 480000332)
end



function axkvaMin:handleTimer(pPlayer)  
  local startTime = readData("axkvaMinStartTime")
  local timeLeftSecs = 3600 - (os.time() - startTime)
  local timeLeft = math.floor(timeLeftSecs / 60)
  
  if (timeLeft > 10) then    
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(5 * 60 * 1000, "axkvaMin", "checkIfActiveForTimer", pPlayer, "")   
  elseif (timeLeft >= 3) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(60 * 1000, "axkvaMin", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeft >= 2) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(30 * 1000, "axkvaMin", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 90) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(30 * 1000, "axkvaMin", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 60) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(30 * 1000, "axkvaMin", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 30) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(20 * 1000, "axkvaMin", "checkIfActiveForTimer", pPlayer, "")
  elseif (timeLeftSecs >= 10) then
    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:timer_" .. timeLeft)
    createEvent(10 * 1000, "axkvaMin", "checkIfActiveForTimer", pPlayer, "")
  else
    self:checkIfActive(pPlayer)   
  end
end

function axkvaMin:checkIfActiveForTimer(pPlayer)
  if (readData("axkvaMin:occupiedState") == 1) then
    createEvent(1, "axkvaMin", "handleTimer", pPlayer, "")
  else
    --self:ejectAllGroupMembers(pPlayer)
    self:resetInstance(pPlayer)    
  end      
end

function axkvaMin:spawnCheck()
  if (readData("axkvaMin:trashSpawnState") == 1) then
    return
  else
   -- self:spawnTrashMobs()   -- Axkva min has no trash.
    writeData("axkvaMin:trashSpawnState", 1)       
  end 
end



function axkvaMin:spawnTrashMobs()  -- Each instance script needs assigned cells.
  -- Trash pack 1: Hallway 1
  --local mob1 = spawnMobile("yavin4", "exar_kun_cultist", 0, 43.3, 0, -48.1, 116, 480000295)
   
end

function axkvaMin:spawnBossOneCheck()
  if (readData("axkvaMin:bossOneSpawnState") == 1) then
    return
  else
    self:spawnBossRoomOne()
    writeData("axkvaMin:bossOneSpawnState", 1)       
  end 
end

function axkvaMin:spawnBossRoomOne()
  local boss1 = spawnMobile("dathomir", "nandina", 0, -78, 17.8, 29.8, 127, 480000333)
    createObserver(OBJECTDESTRUCTION, "axkvaMin", "bossOneKilled", boss1) 
    createObserver(DAMAGERECEIVED,"axkvaMin","boss1_damage", boss1)
    writeData("axkvaMin:bossOneFightState", 0) 
end

function axkvaMin:spawnBossRoomOneActiveArea()  -- Active areas use world coords.   Set to actual world coord in each instance manually.
  local pActiveArea1 = spawnSceneObject("dathomir", "object/active_area.iff", 7333.7, 506, 4373.9, 0, 0, 0, 0, 0)
  if (pActiveArea1 ~= nil) then
    local activeArea = LuaActiveArea(pActiveArea1)
          activeArea:setCellObjectID(480000333)
          activeArea:setRadius(5)
          createObserver(ENTEREDAREA, "axkvaMin", "notifyBossRoomOneActiveArea", pActiveArea1)
                  
      end
end

function axkvaMin:notifyBossRoomOneActiveArea(pActiveArea1, pMovingObject, pPlayer, boss1)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral())) then

      self:spawnBossRoomOneTrash()
      
      end
    return 0    
  end)
end

function axkvaMin:spawnBossRoomOneTrash(boss1)
  if (readData("axkvaMin:bossOneTrashState") == 1) then
    return
  else
    
    spatialChat(boss1, "Intruders?  You will not stop us, our mother will be reborn!")
    
    
       
  end 
  writeData("axkvaMin:bossOneTrashState", 1) 
end

function axkvaMin:boss1_damage(boss1, pPlayer)
 
    local player = LuaCreatureObject(pPlayer)
    local boss = LuaCreatureObject(boss1)
    if ( boss ~= nil ) then
      local bossHealth = boss:getHAM(0)
      local bossAction = boss:getHAM(3)
      local bossMind = boss:getHAM(6)
      local bossMaxHealth = boss:getMaxHAM(0)
      local bossMaxAction = boss:getMaxHAM(3)
      local bossMaxMind = boss:getMaxHAM(6)
      
      local x1 = -79.5
      local y1 = 23.4
      local x2 = boss:getPositionX()
      local y2 = boss:getPositionY()
       
      local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
      local maxDistance = 32
   
     if distance > (maxDistance * maxDistance) then
      spatialChat(boss1, "Cowards, you face me before the crystal or not at all!")
      forcePeace(boss1)
     end 
  
      if (((bossHealth <= (bossMaxHealth *0.995))) and readData("axkvaMin:bossOneFightState") == 0) then
      spatialChat(boss1, "Why have you come here? Did our sisters send you? What did you think you would find here other than your own deaths!")
      CreatureObject(boss1):playEffect("clienteffect/space_command/shp_shocked_01.cef", "")
      local add1 = spawnMobile("dathomir", "wod_mutant_rancor_boss", 0, -81.3, 17.9, 18.4, 65, 480000333)
        writeData("axkvaMin:bossOneFightState", 1)        
      end 
      
      if (((bossAction <= (bossMaxAction *0.3)))) then
           CreatureObject(boss1):setHAM(3, bossMaxAction)
           CreatureObject(boss1):playEffect("clienteffect/pl_force_channel_self.cef", "")
           spatialChat(boss1, "I am renewed!")   
      end 
      
      if (((bossHealth <= (bossMaxHealth *0.75))) and readData("axkvaMin:bossOneFightState") == 1) then
      spatialChat(boss1, "Your essences will feed my lady's power, after my pet tears you apart of course.")
      CreatureObject(boss1):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        writeData("axkvaMin:bossOneFightState", 2)               
      end
      
      if (((bossHealth <= (bossMaxHealth *0.50))) and readData("axkvaMin:bossOneFightState") == 2) then
      spatialChat(boss1, "My sisters are weak.  They fear what we intended.  Without the mother our clan is nothing.")
        CreatureObject(boss1):playEffect("clienteffect/pl_force_resist_states_self.cef", "")
        writeData("axkvaMin:bossOneFightState", 3)                
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.25))) and readData("axkvaMin:bossOneFightState") == 3) then
      spatialChat(boss1, "Yes, Strike me with all of your strength.")
      CreatureObject(boss1):playEffect("clienteffect/pl_force_resist_bleeding_self.cef", "")
        writeData("axkvaMin:bossOneFightState", 4)        
      end
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("axkvaMin:bossOneFightState") == 4) then
      spatialChat(boss1, "Mistress, take my essence...  Let the mother live... again.")
      CreatureObject(boss1):playEffect("clienteffect/pl_storm_lord_special.cef", "")
      CreatureObject(boss1):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        writeData("axkvaMin:bossOneFightState", 5)        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("axkvaMin:bossOneFightState") == 5) then      
        writeData("axkvaMin:bossOneFightState", 6)        
      end
    end
    return 0
end

function axkvaMin:bossOneKilled(boss1) 
  writeData("axkvaMin:bossOneDead", 1) 
  self:spawnBossRoomTwo()
  return 0
end

function axkvaMin:spawnBossRoomTwo()
  local boss2 = spawnMobile("dathomir", "lelli_hi", 0, -74.4, 16.5, 31.4, 154, 480000333)    
    createObserver(DAMAGERECEIVED,"axkvaMin","boss2_damage", boss2)
    createObserver(OBJECTDESTRUCTION, "axkvaMin", "bossTwoKilled", boss2) 
    writeData("axkvaMin:bossTwoFightState", 0) 
end

function axkvaMin:boss2_damage(boss2, pPlayer)
 
    local player = LuaCreatureObject(pPlayer)
    local boss = LuaCreatureObject(boss2)
    if ( boss ~= nil ) then
      local bossHealth = boss:getHAM(0)
      local bossAction = boss:getHAM(3)
      local bossMind = boss:getHAM(6)
      local bossMaxHealth = boss:getMaxHAM(0)
      local bossMaxAction = boss:getMaxHAM(3)
      local bossMaxMind = boss:getMaxHAM(6)
      
      local x1 = -79.5
      local y1 = 23.4
      local x2 = boss:getPositionX()
      local y2 = boss:getPositionY()
       
      local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
      local maxDistance = 32
   
     if distance > (maxDistance * maxDistance) then
      spatialChat(boss2, "Cowards, you face me before the crystal or not at all!")
      forcePeace(boss2)
     end 
   
  
      if (((bossHealth <= (bossMaxHealth *0.99))) and readData("axkvaMin:bossTwoFightState") == 0) then
      spatialChat(boss2, "You will not stop us from being back Mother!")
        CreatureObject(boss2):playEffect("clienteffect/space_command/shp_shocked_01.cef", "")
        writeData("axkvaMin:bossTwoFightState", 1)        
      end 
      
      if (((bossAction <= (bossMaxAction *0.3)))) then
           CreatureObject(boss2):setHAM(3, bossMaxAction)
           CreatureObject(boss2):playEffect("clienteffect/pl_force_channel_self.cef", "")
           spatialChat(boss2, "My strength is renewed.  Thank you mother!")   
      end 
      
      if (((bossHealth <= (bossMaxHealth *0.75))) and readData("axkvaMin:bossTwoFightState") == 1) then
     -- spatialChat(boss2, "Insert witty dialogue here.")
        writeData("axkvaMin:bossTwoFightState", 2)
              
      end
      
      if (((bossHealth <= (bossMaxHealth *0.50))) and readData("axkvaMin:bossTwoFightState") == 2) then
      spatialChat(boss2, "Sisters, stop these invaders!")
        CreatureObject(boss2):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss2):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        writeData("axkvaMin:bossTwoFightState", 3)        
        
        local pCult1 = spawnMobile("dathomir", "nightsister_sentinel", 0, -43.7, 7.8, -6.6, -56, 480000333)
          CreatureObject(pCult1):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult2 = spawnMobile("dathomir", "nightsister_sentinel", 0, -41.3, 7.2, -3.1, -51, 480000333)
          CreatureObject(pCult2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult3 = spawnMobile("dathomir", "nightsister_sentinel", 0, -39.5, 7.0, 0.5, -60, 480000333)
          CreatureObject(pCult3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult4 = spawnMobile("dathomir", "nightsister_sentinel", 0, -37.4, 7.0, 4.5, -60, 480000333)
          CreatureObject(pCult4):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult5 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.4, 7.1, 8.6, -73, 480000333)
          CreatureObject(pCult5):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")       
        local pCult6 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.2, 7.1, 11.3, -88, 480000333)
          CreatureObject(pCult6):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult7 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.8, 7.0, 15.1, -84, 480000333)
          CreatureObject(pCult7):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult8 = spawnMobile("dathomir", "nightsister_sentinel", 0, -37.3, 7.0, 19.0, -93, 480000333)
          CreatureObject(pCult8):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
           
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.25))) and readData("axkvaMin:bossTwoFightState") == 3) then
      spatialChat(boss2, "You will not stop us from bringing back our Mother!")
        CreatureObject(boss2):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss2):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        writeData("axkvaMin:bossTwoFightState", 4)
        
        local pCult1 = spawnMobile("dathomir", "nightsister_sentinel", 0, -43.7, 7.8, -6.6, -56, 480000333)
          CreatureObject(pCult1):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult2 = spawnMobile("dathomir", "nightsister_sentinel", 0, -41.3, 7.2, -3.1, -51, 480000333)
          CreatureObject(pCult2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult3 = spawnMobile("dathomir", "nightsister_sentinel", 0, -39.5, 7.0, 0.5, -60, 480000333)
          CreatureObject(pCult3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult4 = spawnMobile("dathomir", "nightsister_sentinel", 0, -37.4, 7.0, 4.5, -60, 480000333)
          CreatureObject(pCult4):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult5 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.4, 7.1, 8.6, -73, 480000333)
          CreatureObject(pCult5):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")       
        local pCult6 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.2, 7.1, 11.3, -88, 480000333)
          CreatureObject(pCult6):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult7 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.8, 7.0, 15.1, -84, 480000333)
          CreatureObject(pCult7):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult8 = spawnMobile("dathomir", "nightsister_sentinel", 0, -37.3, 7.0, 19.0, -93, 480000333)
          CreatureObject(pCult8):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
                 
      end
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("axkvaMin:bossTwoFightState") == 4) then
      spatialChat(boss2, "Mother, take my life. Let it fuel your rebirth!")
        writeData("axkvaMin:bossTwoFightState", 5)        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("axkvaMin:bossTwoFightState") == 5) then      
        writeData("axkvaMin:bossTwoFightState", 6)        
      end
    end
    return 0
end

function axkvaMin:bossTwoKilled(boss2)
  writeData("axkvaMin:bossTwoDead", 1) 
  self:spawnBossRoomThree()
  return 0
end

function axkvaMin:spawnBossRoomThree()  -- Adds for this phase:   exar_kun_warrior (A Caretaker Protector) , exar_kun_warrior_f (The Executioner)
  local boss3 = spawnMobile("dathomir", "kimaru", 0, -79.3, 16.8, 14.2, 45, 480000333)
    createObserver(DAMAGERECEIVED,"axkvaMin","boss3_damage", boss3)
    createObserver(OBJECTDESTRUCTION, "axkvaMin", "bossThreeKilled", boss3) 
    writeData("axkvaMin:bossThreeFightState", 0) 
end

function axkvaMin:boss3_damage(boss3, pPlayer)
 
    local player = LuaCreatureObject(pPlayer)
    local boss = LuaCreatureObject(boss3)
    if ( boss ~= nil ) then
      local bossHealth = boss:getHAM(0)
      local bossAction = boss:getHAM(3)
      local bossMind = boss:getHAM(6)
      local bossMaxHealth = boss:getMaxHAM(0)
      local bossMaxAction = boss:getMaxHAM(3)
      local bossMaxMind = boss:getMaxHAM(6)
      
      local x1 = -79.5
      local y1 = 23.4
      local x2 = boss:getPositionX()
      local y2 = boss:getPositionY()
       
      local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
      local maxDistance = 32
   
     if distance > (maxDistance * maxDistance) then
      spatialChat(boss3, "Cowards, you face me before the crystal or not at all!")
      forcePeace(boss3)
     end 
   
  
      if (((bossHealth <= (bossMaxHealth *0.99))) and readData("axkvaMin:bossThreeFightState") == 0) then
      spatialChat(boss3, "Kill them Sisters!")
        writeData("axkvaMin:bossThreeFightState", 1)
        local pAdd1 = spawnMobile("dathomir", "nightsister_spell_weaver", 0, -47.4, 8.0, 7.3, -57, 480000333)
        ObjectManager.withCreatureObject(pAdd1, function(firstAdd)
        firstAdd:engageCombat(pPlayer)
        end)
        CreatureObject(pAdd1):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
        spatialChat(pAdd1, "Die Interloper!")         
      end 
      
      if (((bossAction <= (bossMaxAction *0.3)))) then
           CreatureObject(boss3):setHAM(3, bossMaxAction)
           CreatureObject(boss3):playEffect("clienteffect/pl_force_channel_self.cef", "")
           spatialChat(boss3, "My strength is renewed.  Thank you master!")   
      end 
      
      if (((bossHealth <= (bossMaxHealth *0.75))) and readData("axkvaMin:bossThreeFightState") == 1) then
      spatialChat(boss3, "Kill them Sisters!")
        writeData("axkvaMin:bossThreeFightState", 2)
        local pAdd2 = spawnMobile("dathomir", "nightsister_spell_weaver", 0, -47.4, 8.0, 7.3, -57, 480000333)
        ObjectManager.withCreatureObject(pAdd2, function(secondAdd)
        secondAdd:engageCombat(pPlayer)
        end)
        CreatureObject(pAdd2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
        spatialChat(pAdd2, "Die Interloper!")         
      end
      
      if (((bossHealth <= (bossMaxHealth *0.50))) and readData("axkvaMin:bossThreeFightState") == 2) then
      spatialChat(boss3, "Kill them Sisters!")
        writeData("axkvaMin:bossThreeFightState", 3)
        local pAdd3 = spawnMobile("dathomir", "nightsister_elder", 0, -47.4, 8.0, 7.3, -57, 480000333)
        ObjectManager.withCreatureObject(pAdd3, function(thirdAdd)
        thirdAdd:engageCombat(pPlayer)
        end)
        CreatureObject(pAdd3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
        spatialChat(pAdd3, "Die Interloper!")
        
        local pCult1 = spawnMobile("dathomir", "nightsister_sentinel", 0, -43.7, 7.8, -6.6, -56, 480000333)
          CreatureObject(pCult1):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult2 = spawnMobile("dathomir", "nightsister_sentinel", 0, -41.3, 7.2, -3.1, -51, 480000333)
          CreatureObject(pCult2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult3 = spawnMobile("dathomir", "nightsister_sentinel", 0, -39.5, 7.0, 0.5, -60, 480000333)
          CreatureObject(pCult3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult4 = spawnMobile("dathomir", "nightsister_sentinel", 0, -37.4, 7.0, 4.5, -60, 480000333)
          CreatureObject(pCult4):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult5 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.4, 7.1, 8.6, -73, 480000333)
          CreatureObject(pCult5):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")       
        local pCult6 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.2, 7.1, 11.3, -88, 480000333)
          CreatureObject(pCult6):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult7 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.8, 7.0, 15.1, -84, 480000333)
          CreatureObject(pCult7):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult8 = spawnMobile("dathomir", "nightsister_sentinel", 0, -37.3, 7.0, 19.0, -93, 480000333)
          CreatureObject(pCult8):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")          
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.25))) and readData("axkvaMin:bossThreeFightState") == 3) then
      spatialChat(boss3, "I will rip your essence from your lifeless bodies!")
        writeData("axkvaMin:bossThreeFightState", 4)
        CreatureObject(boss3):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss3):playEffect("clienteffect/combat_pt_electricalfield.cef", "")        
      end
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("axkvaMin:bossThreeFightState") == 4) then
      spatialChat(boss3, "Mother... I....")
        writeData("axkvaMin:bossThreeFightState", 5)        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("axkvaMin:bossThreeFightState") == 5) then      
        writeData("axkvaMin:bossThreeFightState", 6)        
      end
    end
    return 0
end

function axkvaMin:bossThreeKilled(boss3)
  writeData("axkvaMin:bossThreeDead", 1) 
  self:spawnBossRoomFour()
  return 0
end

function axkvaMin:spawnBossRoomFour()
  local boss4 = spawnMobile("dathomir", "suin_chalo", 0, -82.5, 17.8, 17.8, 55, 480000333)
    createObserver(DAMAGERECEIVED,"axkvaMin","boss4_damage", boss4)
    createObserver(OBJECTDESTRUCTION, "axkvaMin", "bossFourKilled", boss4) 
    writeData("axkvaMin:bossFourFightState", 0) 
end

function axkvaMin:boss4_damage(boss4, pPlayer)
 
    local player = LuaCreatureObject(pPlayer)
    local boss = LuaCreatureObject(boss4)
    if ( boss ~= nil ) then
      local bossHealth = boss:getHAM(0)
      local bossAction = boss:getHAM(3)
      local bossMind = boss:getHAM(6)
      local bossMaxHealth = boss:getMaxHAM(0)
      local bossMaxAction = boss:getMaxHAM(3)
      local bossMaxMind = boss:getMaxHAM(6)
      
      local x1 = -79.5
      local y1 = 23.4
      local x2 = boss:getPositionX()
      local y2 = boss:getPositionY()
       
      local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
      local maxDistance = 32
   
     if distance > (maxDistance * maxDistance) then
      spatialChat(boss4, "Cowards, you face me before the crystal or not at all!")
      forcePeace(boss4)
     end 
   
  
      if (((bossHealth <= (bossMaxHealth *0.995))) and readData("axkvaMin:bossFourFightState") == 0) then
      spatialChat(boss4, "You come this far and no further, the line must be drawn here.")
        writeData("axkvaMin:bossFourFightState", 1)
        CreatureObject(boss4):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss4):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        local pAdd1 = spawnMobile("dathomir", "nightsister_elder", 0, -42.2, 7.4, 11.3, -75, 480000333)
        ObjectManager.withCreatureObject(pAdd1, function(firstAdd)
        firstAdd:engageCombat(pPlayer)
        end)
        spatialChat(pAdd1, "Die!")         
      end 
      
      if (((bossAction <= (bossMaxAction *0.3)))) then
           CreatureObject(boss4):setHAM(3, bossMaxAction)
           CreatureObject(boss4):playEffect("clienteffect/pl_force_channel_self.cef", "")
           spatialChat(boss4, "My strength is renewed.  Thank you master!")   
      end 
      
      if (((bossHealth <= (bossMaxHealth *0.75))) and readData("axkvaMin:bossFourFightState") == 1) then
      spatialChat(boss4, "There is no way out for you but to embrace death.")
        writeData("axkvaMin:bossFourFightState", 2)
        local pAdd2 = spawnMobile("dathomir", "nightsister_elder", 0, -42.2, 7.4, 11.3, -75, 480000333)
        ObjectManager.withCreatureObject(pAdd2, function(secondAdd)
        secondAdd:engageCombat(pPlayer)
        end)
        spatialChat(pAdd2, "Die!")         
      end
      
      if (((bossHealth <= (bossMaxHealth *0.50))) and readData("axkvaMin:bossFourFightState") == 2) then
      spatialChat(boss4, "It will be over soon, give in to the inevitable!")
        writeData("axkvaMin:bossFourFightState", 3)
        local pAdd3 = spawnMobile("dathomir", "nightsister_elder", 0, -42.2, 7.4, 11.3, -75, 480000333)
        ObjectManager.withCreatureObject(pAdd1, function(thirdAdd)
        thirdAdd:engageCombat(pPlayer)
        end)
        spatialChat(pAdd3, "Die!")  
        local pCult1 = spawnMobile("dathomir", "nightsister_sentinel", 0, -43.7, 7.8, -6.6, -56, 480000333)
          CreatureObject(pCult1):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult2 = spawnMobile("dathomir", "nightsister_sentinel", 0, -41.3, 7.2, -3.1, -51, 480000333)
          CreatureObject(pCult2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult3 = spawnMobile("dathomir", "nightsister_sentinel", 0, -39.5, 7.0, 0.5, -60, 480000333)
          CreatureObject(pCult3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult4 = spawnMobile("dathomir", "nightsister_sentinel", 0, -37.4, 7.0, 4.5, -60, 480000333)
          CreatureObject(pCult4):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult5 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.4, 7.1, 8.6, -73, 480000333)
          CreatureObject(pCult5):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")       
        local pCult6 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.2, 7.1, 11.3, -88, 480000333)
          CreatureObject(pCult6):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult7 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.8, 7.0, 15.1, -84, 480000333)
          CreatureObject(pCult7):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult8 = spawnMobile("dathomir", "nightsister_sentinel", 0, -37.3, 7.0, 19.0, -93, 480000333)
          CreatureObject(pCult8):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.25))) and readData("axkvaMin:bossFourFightState") == 3) then
      spatialChat(boss4, "Too long she has been denied, No more!  NO MORE!!!!")
        CreatureObject(boss4):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss4):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        writeData("axkvaMin:bossFourFightState", 4)        
      end
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("axkvaMin:bossFourFightState") == 4) then
      spatialChat(boss4, "Axkva, it's up to you...")
        writeData("axkvaMin:bossFourFightState", 5)        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("axkvaMin:bossFourFightState") == 5) then      
        writeData("axkvaMin:bossFourFightState", 6)        
      end
    end
    return 0
end

function axkvaMin:bossFourKilled(boss4)
  writeData("axkvaMin:bossFourDead", 1) 
  self:spawnBossRoomFive()
  return 0
end

function axkvaMin:spawnBossRoomFive()
  local boss5 = spawnMobile("dathomir", "axkva_min", 0, -79, 17.8, 23.8, 99, 480000333)
    spatialChat(boss5, "Our destiny was denied for so long, by the Jedi, by the Sith.  Now it is our time.")
    createObserver(DAMAGERECEIVED,"axkvaMin","boss5_damage", boss5)
    createObserver(OBJECTDESTRUCTION, "axkvaMin", "bossFiveKilled", boss5) 
    writeData("axkvaMin:bossFiveFightState", 0) 
end

function axkvaMin:boss5_damage(boss5, pPlayer)
 
    local player = LuaCreatureObject(pPlayer)
    local boss = LuaCreatureObject(boss5)
    if ( boss ~= nil ) then
      local bossHealth = boss:getHAM(0)
      local bossAction = boss:getHAM(3)
      local bossMind = boss:getHAM(6)
      local bossMaxHealth = boss:getMaxHAM(0)
      local bossMaxAction = boss:getMaxHAM(3)
      local bossMaxMind = boss:getMaxHAM(6)
      
      local x1 = -79.5
      local y1 = 23.4
      local x2 = boss:getPositionX()
      local y2 = boss:getPositionY()
       
      local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
      local maxDistance = 32
   
     if distance > (maxDistance * maxDistance) then
      spatialChat(boss5, "Cowards, you face me before the crystal or not at all!")
      forcePeace(boss5)
     end 
   
  
      if (((bossHealth <= (bossMaxHealth *0.995))) and readData("axkvaMin:bossFiveFightState") == 0) then
      spatialChat(boss5, "It seems that you have come all this way for nothing.  Death awaits you!")
      CreatureObject(boss5):playEffect("clienteffect/pl_storm_lord_special.cef", "")     
        writeData("axkvaMin:bossFiveFightState", 1)        
      end 
      
      if (((bossAction <= (bossMaxAction *0.3)))) then
           CreatureObject(boss5):setHAM(3, bossMaxAction)
           CreatureObject(boss5):playEffect("clienteffect/pl_force_meditate_self.cef", "")
           spatialChat(boss5, "I am renewed!")   
      end 
      
      if (((bossHealth <= (bossMaxHealth *0.75))) and readData("axkvaMin:bossFiveFightState") == 1) then
      spatialChat(boss5, "Sisters, kill them! Kill them all!!!")
        CreatureObject(boss5):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss5):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        
        writeData("axkvaMin:bossFiveFightState", 2)                             
        
        local pCult1 = spawnMobile("dathomir", "nightsister_sentinel", 0, -43.7, 7.8, -6.6, -56, 480000333)
          CreatureObject(pCult1):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult2 = spawnMobile("dathomir", "nightsister_sentinel", 0, -41.3, 7.2, -3.1, -51, 480000333)
          CreatureObject(pCult2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult3 = spawnMobile("dathomir", "nightsister_sentinel", 0, -39.5, 7.0, 0.5, -60, 480000333)
          CreatureObject(pCult3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult4 = spawnMobile("dathomir", "nightsister_sentinel", 0, -37.4, 7.0, 4.5, -60, 480000333)
          CreatureObject(pCult4):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult5 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.4, 7.1, 8.6, -73, 480000333)
          CreatureObject(pCult5):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")       
        local pCult6 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.2, 7.1, 11.3, -88, 480000333)
          CreatureObject(pCult6):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult7 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.8, 7.0, 15.1, -84, 480000333)
          CreatureObject(pCult7):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult8 = spawnMobile("dathomir", "nightsister_sentinel", 0, -37.3, 7.0, 19.0, -93, 480000333)
          CreatureObject(pCult8):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")      
      end
      
      if (((bossHealth <= (bossMaxHealth *0.50))) and readData("axkvaMin:bossFiveFightState") == 2) then
        CreatureObject(boss5):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        
        writeData("axkvaMin:bossFiveFightState", 3)
        local pAdd2 = spawnMobile("dathomir", "nightsister_elder", 0, -42.2, 7.4, 11.3, -75, 480000333)
        ObjectManager.withCreatureObject(pAdd2, function(secondAdd)
        secondAdd:engageCombat(pPlayer)
        end)
        spatialChat(pAdd2, "Your death will give life to the Mother!")
        CreatureObject(pAdd2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
        local pCult1 = spawnMobile("dathomir", "nightsister_sentinel", 0, -43.7, 7.8, -6.6, -56, 480000333)
          CreatureObject(pCult1):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult2 = spawnMobile("dathomir", "nightsister_sentinel", 0, -41.3, 7.2, -3.1, -51, 480000333)
          CreatureObject(pCult2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult3 = spawnMobile("dathomir", "nightsister_sentinel", 0, -39.5, 7.0, 0.5, -60, 480000333)
          CreatureObject(pCult3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult4 = spawnMobile("dathomir", "nightsister_sentinel", 0, -37.4, 7.0, 4.5, -60, 480000333)
          CreatureObject(pCult4):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult5 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.4, 7.1, 8.6, -73, 480000333)
          CreatureObject(pCult5):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")       
        local pCult6 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.2, 7.1, 11.3, -88, 480000333)
          CreatureObject(pCult6):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult7 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.8, 7.0, 15.1, -84, 480000333)
          CreatureObject(pCult7):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult8 = spawnMobile("dathomir", "nightsister_sentinel", 0, -37.3, 7.0, 19.0, -93, 480000333)
          CreatureObject(pCult8):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")         
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.25))) and readData("axkvaMin:bossFiveFightState") == 3) then
        CreatureObject(boss5):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        
        spatialChat(boss5, "I have a surprise for you.")
        writeData("axkvaMin:bossFiveFightState", 4)
        local pAdd3 = spawnMobile("dathomir", "nightsister_elder", 0, -42.2, 7.4, 11.3, -75, 480000333)
        ObjectManager.withCreatureObject(pAdd3, function(thirdAdd)
        thirdAdd:engageCombat(pPlayer)
        end)
        spatialChat(pAdd3, "Mother, you are near now I feel it!") 
        CreatureObject(pAdd3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult1 = spawnMobile("dathomir", "nightsister_sentinel", 0, -43.7, 7.8, -6.6, -56, 480000333)
          CreatureObject(pCult1):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult2 = spawnMobile("dathomir", "nightsister_sentinel", 0, -41.3, 7.2, -3.1, -51, 480000333)
          CreatureObject(pCult2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult3 = spawnMobile("dathomir", "nightsister_sentinel", 0, -39.5, 7.0, 0.5, -60, 480000333)
          CreatureObject(pCult3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult4 = spawnMobile("dathomir", "nightsister_sentinel", 0, -37.4, 7.0, 4.5, -60, 480000333)
          CreatureObject(pCult4):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult5 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.4, 7.1, 8.6, -73, 480000333)
          CreatureObject(pCult5):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")       
        local pCult6 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.2, 7.1, 11.3, -88, 480000333)
          CreatureObject(pCult6):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult7 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.8, 7.0, 15.1, -84, 480000333)
          CreatureObject(pCult7):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult8 = spawnMobile("dathomir", "nightsister_sentinel", 0, -37.3, 7.0, 19.0, -93, 480000333)
          CreatureObject(pCult8):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")        
      end
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("axkvaMin:bossFiveFightState") == 4) then
      spatialChat(boss5, "You think this is over do you?  You think they were trying to free me?  No...  You'll see soon.  She is coming...")
        CreatureObject(boss5):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss5):playEffect("clienteffect/combat_pt_electricalfield.cef", "")       
        writeData("axkvaMin:bossFiveFightState", 5)        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("axkvaMin:bossFiveFightState") == 5) then      
        writeData("axkvaMin:bossFiveFightState", 6)        
      end
    end
    return 0
end

function axkvaMin:bossFiveKilled(boss5, pPlayer)  -- TODO Use this function to reset the instance on success.   Delay by 30 seconds to allow looting time.
    writeData("axkvaMin:bossFiveDead", 1) 
    CreatureObject(pPlayer):sendSystemMessage("As the final blow kills Axkva Min a flash of light exits her body and enters the crystal.")  
    createEvent(20, "axkvaMin", "spawnBossRoomSix", pPlayer, "")   
  return 0
end

function axkvaMin:spawnBossRoomSix()
  local boss6 = spawnMobile("dathomir", "mother_talzin", 0, -74.3, 16.0, 22.5, 97, 480000333)
    spatialChat(boss6, "What... is this?  I.. am alive?  This is a surprise to be sure, but a welcome one.")
    CreatureObject(boss6):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
    createObserver(DAMAGERECEIVED,"axkvaMin","boss6_damage", boss6)
    createObserver(OBJECTDESTRUCTION, "axkvaMin", "bossSixKilled", boss6) 
    writeData("axkvaMin:bossSixFightState", 0) 
end

function axkvaMin:boss6_damage(boss6, pPlayer)
 
    local player = LuaCreatureObject(pPlayer)
    local boss = LuaCreatureObject(boss6)
    if ( boss ~= nil ) then
      local bossHealth = boss:getHAM(0)
      local bossAction = boss:getHAM(3)
      local bossMind = boss:getHAM(6)
      local bossMaxHealth = boss:getMaxHAM(0)
      local bossMaxAction = boss:getMaxHAM(3)
      local bossMaxMind = boss:getMaxHAM(6)
      
      local x1 = -79.5
      local y1 = 23.4
      local x2 = boss:getPositionX()
      local y2 = boss:getPositionY()
       
      local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
      local maxDistance = 32
   
     if distance > (maxDistance * maxDistance) then
      spatialChat(boss6, "Cowards, you face me before the crystal or not at all!")
      forcePeace(boss6)
     end 
   
  
      if (((bossHealth <= (bossMaxHealth *0.99))) and readData("axkvaMin:bossSixFightState") == 0) then
      spatialChat(boss6, "Pitiful brutes. You will understand true power.")
      CreatureObject(boss6):playEffect("clienteffect/pl_storm_lord_special.cef", "")
      
        writeData("axkvaMin:bossSixFightState", 1)        
      end 
      
      if (((bossAction <= (bossMaxAction *0.3)))) then
           CreatureObject(boss6):setHAM(3, bossMaxAction)
           CreatureObject(boss6):playEffect("clienteffect/pl_force_meditate_self.cef", "")
           spatialChat(boss6, "Behold my endless power!")   
      end 
      
      if (((bossHealth <= (bossMaxHealth *0.75))) and readData("axkvaMin:bossSixFightState") == 1) then
      spatialChat(boss6, "My daughters, rise again and fight for your mother!")
        CreatureObject(boss6):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss6):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        
        writeData("axkvaMin:bossSixFightState", 2)                             
        
        local pCult1 = spawnMobile("dathomir", "nandina", 0, -53.9, 9.8, 13.0, -51, 480000333)
          CreatureObject(pCult1):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(pCult1, "Yes mother!") 
        local pCult2 = spawnMobile("dathomir", "lelli_hi", 0, -63.4, 11.8, 8.3, 67, 480000333)
          CreatureObject(pCult2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(pCult2, "Yes mother!") 
        local pCult3 = spawnMobile("dathomir", "kimaru", 0, -53.8, 11.5, 23.7, -116, 480000333)
          CreatureObject(pCult3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(pCult3, "Yes mother!") 
        local pCult4 = spawnMobile("dathomir", "suin_chalo", 0, -49.6, 9.3, 18.0, -60, 480000333)
          CreatureObject(pCult4):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
          spatialChat(pCult4, "Yes mother!")
        local pCult5 = spawnMobile("dathomir", "axkva_min", 0, -70.8, 14.4, 17.6, 69, 480000333)
          CreatureObject(pCult5):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")
          spatialChat(pCult5, "Yes mother!")
        
             
      end
      
      if (((bossHealth <= (bossMaxHealth *0.50))) and readData("axkvaMin:bossSixFightState") == 2) then
        CreatureObject(boss6):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        
        writeData("axkvaMin:bossSixFightState", 3)  
        local pCult1 = spawnMobile("dathomir", "nightsister_sentinel", 0, -43.7, 7.8, -6.6, -56, 480000333)
          CreatureObject(pCult1):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult2 = spawnMobile("dathomir", "nightsister_sentinel", 0, -41.3, 7.2, -3.1, -51, 480000333)
          CreatureObject(pCult2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult3 = spawnMobile("dathomir", "nightsister_sentinel", 0, -39.5, 7.0, 0.5, -60, 480000333)
          CreatureObject(pCult3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult4 = spawnMobile("dathomir", "nightsister_sentinel", 0, -37.4, 7.0, 4.5, -60, 480000333)
          CreatureObject(pCult4):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult5 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.4, 7.1, 8.6, -73, 480000333)
          CreatureObject(pCult5):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")       
        local pCult6 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.2, 7.1, 11.3, -88, 480000333)
          CreatureObject(pCult6):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult7 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.8, 7.0, 15.1, -84, 480000333)
          CreatureObject(pCult7):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult8 = spawnMobile("dathomir", "nightsister_sentinel", 0, -37.3, 7.0, 19.0, -93, 480000333)
          CreatureObject(pCult8):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")             
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.25))) and readData("axkvaMin:bossSixFightState") == 3) then
        CreatureObject(boss6):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        
        spatialChat(boss6, "This is not possible. I am weakening!")
        writeData("axkvaMin:bossSixFightState", 4)   
        local pCult1 = spawnMobile("dathomir", "nightsister_sentinel", 0, -43.7, 7.8, -6.6, -56, 480000333)
          CreatureObject(pCult1):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult2 = spawnMobile("dathomir", "nightsister_sentinel", 0, -41.3, 7.2, -3.1, -51, 480000333)
          CreatureObject(pCult2):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult3 = spawnMobile("dathomir", "nightsister_sentinel", 0, -39.5, 7.0, 0.5, -60, 480000333)
          CreatureObject(pCult3):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult4 = spawnMobile("dathomir", "nightsister_sentinel", 0, -37.4, 7.0, 4.5, -60, 480000333)
          CreatureObject(pCult4):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult5 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.4, 7.1, 8.6, -73, 480000333)
          CreatureObject(pCult5):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")       
        local pCult6 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.2, 7.1, 11.3, -88, 480000333)
          CreatureObject(pCult6):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult7 = spawnMobile("dathomir", "nightsister_sentinel", 0, -36.8, 7.0, 15.1, -84, 480000333)
          CreatureObject(pCult7):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "") 
        local pCult8 = spawnMobile("dathomir", "nightsister_sentinel", 0, -37.3, 7.0, 19.0, -93, 480000333)
          CreatureObject(pCult8):playEffect("clienteffect/pl_force_regain_consciousness_self.cef", "")           
      end
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("axkvaMin:bossSixFightState") == 4) then
      spatialChat(boss6, "No, it can not end.  It can't!")
        CreatureObject(boss6):playEffect("clienteffect/pl_storm_lord_special.cef", "")
        CreatureObject(boss6):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        
        writeData("axkvaMin:bossSixFightState", 5)        
      end  
      
      if (((bossHealth <= (bossMaxHealth *0.1))) and readData("axkvaMin:bossSixFightState") == 5) then      
        writeData("axkvaMin:bossSixFightState", 6)        
      end
    end
    return 0
end

function axkvaMin:bossSixKilled(boss6, pPlayer)  -- TODO Use this function to reset the instance on success.   Delay by 30 seconds to allow looting time.
    writeData("axkvaMin:bossSixDead", 1) 
    CreatureObject(pPlayer):sendSystemMessage("You and your group have defeated Mother Talzin! This instance will close in 120 seconds.")  
    createEvent(1000, "axkvaMin", "awardBadgeToAll", pPlayer, "")
    createEvent(120000, "axkvaMin", "handleVictory", pPlayer, "")
  return 0
end

function axkvaMin:getBuildingObject()
  return getSceneObject(480000331)  -- Different parent for each instance script
end

function axkvaMin:getCell(cellName)
  local paxkvaMin = self:getBuildingObject()
  
  if (paxkvaMin == nil) then
    printLuaError("unable to get building object.")
    return nil
  end
  
  return BuildingObject(paxkvaMin):getNamedCell(cellName)  
end

function axkvaMin:checkIfActive(pPlayer)
  if (readData("axkvaMin:occupiedState") == 1) then
    writeData("axkvaMin:trashSpawnState", 0)
    self:ejectAllPlayers(pPlayer)
    self:resetInstance(pPlayer)
    return true
  end
end

function axkvaMin:ejectAllPlayers(pPlayer)

  createEvent(1000, "axkvaMin", "ejectPlayer", pPlayer, "")
  
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

function axkvaMin:ejectAllGroupMembers(pPlayer)

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

function axkvaMin:ejectPlayer(pPlayer)
  if pPlayer == nil then
    return
  end
  
  if (SceneObject(pPlayer):getZoneName() == "dathomir") then
    CreatureObject(pPlayer):sendSystemMessage("You are now being removed from the instance.")
    SceneObject(pPlayer):switchZone("dathomir", -4029, 132, -19, 0)
  else
    return
  end    
end



function axkvaMin:resetInstanceA(paxkvaMin, pPlayer)
  if not SceneObject(pPlayer):isPlayerCreature() then
    return 0
  end
  writeData("axkvaMin:occupiedState", 0)
  
  CreatureObject(pPlayer):sendSystemMessage("One or more group members have left the dungeon.")
  self:resetInstance(pPlayer)
  self:ejectAllGroupMembers(pPlayer)  
  return 0
end

function axkvaMin:resetInstance(pPlayer)
  CreatureObject(pPlayer):sendSystemMessage("The instance has been reset.")
  writeData("axkvaMin:occupiedState", 0)
end

function axkvaMin:awardBadge(pPlayer)
  local pGhost = CreatureObject(pPlayer):getPlayerObject()
  
  if (pGhost ~= nil and not PlayerObject(pGhost):hasBadge(154)) then
        PlayerObject(pGhost):awardBadge(154)
  end          
end

function axkvaMin:awardBadgeToAll(pPlayer)

  createEvent(1000, "axkvaMin", "awardBadge", pPlayer, "")
  
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

function axkvaMin:handleVictory(pPlayer) 
  self:resetInstance(pPlayer)
  self:ejectAllPlayers(pPlayer)
   writeData("axkvaMin:bossOneDead", 0)
   writeData("axkvaMin:bossTwoDead", 0) 
   writeData("axkvaMin:bossThreeDead", 0) 
   writeData("axkvaMin:bossFourDead", 0) 
   writeData("axkvaMin:bossFiveDead", 0)  
   writeData("axkvaMin:trashSpawnState", 0)
   writeData("axkvaMin:bossOneSpawnState", 0)
   writeData("axkvaMin:bossOneTrashState", 0) 
end
