local ObjectManager = require("managers.object.object_manager")

elysiumTerminalMenuComponent_02 = {  }

function elysiumTerminalMenuComponent_02:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local response = LuaObjectMenuResponse(pMenuResponse)
	response:addRadialMenuItem(20, 3, "Travel to Yavin 4")
	response:addRadialMenuItem(21, 3, "Travel to Lothal")	
	response:addRadialMenuItem(22, 3, "Travel to Dantooine")  
	response:addRadialMenuItem(23, 3, "Travel to Chandrila")  
end

function elysiumTerminalMenuComponent_02:handleObjectMenuSelect(pSceneObject, pPlayer, selectedID)
	if CreatureObject(pPlayer):isInCombat() or CreatureObject(pPlayer):isIncapacitated() or CreatureObject(pPlayer):isDead() then
		return 0
	end

	if not CreatureObject(pPlayer):isInRangeWithObject(pSceneObject, 6) then
		return 0
	end

	if selectedID == 20 then
	  
	  local sui = SuiMessageBox.new("elysiumTerminalMenuComponent_02", "handleTeleport")
    sui.setPrompt("As you touch the Crystal it begins to hum and you feel a strange pulling sensation in the force. It is not so strong that you could not back away from it now, but the pull grows stronger as you hold your hand on it's surface.  (This will transport you to another location.  Do you wish to proceed?)")
    sui.setTitle("Strange Crystal")
    sui.setCancelButtonText("Cancel") -- Cancel  
    sui.setOkButtonText("OK") -- OK   

    sui.sendTo(pPlayer)   	  		 	
    
	end
	
	if selectedID == 21 then
    
    local sui = SuiMessageBox.new("elysiumTerminalMenuComponent_02", "handleTeleport2")
    sui.setPrompt("As you touch the Crystal it begins to hum and you feel a strange pulling sensation in the force. It is not so strong that you could not back away from it now, but the pull grows stronger as you hold your hand on it's surface.  (This will transport you to another location.  Do you wish to proceed?)")
    sui.setTitle("Strange Crystal")
    sui.setCancelButtonText("Cancel") -- Cancel  
    sui.setOkButtonText("OK") -- OK   

    sui.sendTo(pPlayer)             
    
  end
  
  if selectedID == 22 then
    
    local sui = SuiMessageBox.new("elysiumTerminalMenuComponent_02", "handleTeleport3")
    sui.setPrompt("As you touch the Crystal it begins to hum and you feel a strange pulling sensation in the force. It is not so strong that you could not back away from it now, but the pull grows stronger as you hold your hand on it's surface.  (This will transport you to another location.  Do you wish to proceed?)")
    sui.setTitle("Strange Crystal")
    sui.setCancelButtonText("Cancel") -- Cancel  
    sui.setOkButtonText("OK") -- OK   

    sui.sendTo(pPlayer)             
    
  end
  
  if selectedID == 23 then
    
    local sui = SuiMessageBox.new("elysiumTerminalMenuComponent_02", "handleTeleport4")
    sui.setPrompt("As you touch the Crystal it begins to hum and you feel a strange pulling sensation in the force. It is not so strong that you could not back away from it now, but the pull grows stronger as you hold your hand on it's surface.  (This will transport you to another location.  Do you wish to proceed?)")
    sui.setTitle("Strange Crystal")
    sui.setCancelButtonText("Cancel") -- Cancel  
    sui.setOkButtonText("OK") -- OK   

    sui.sendTo(pPlayer)             
    
  end

	return 0
end



function elysiumTerminalMenuComponent_02:handleTeleport(pPlayer, pSui, eventIndex, ...)
  if (pPlayer == nil) then
    return
  end

  local cancelPressed = (eventIndex == 1)
  local args = {...}
  
  local councilType = 1
  
  if (cancelPressed) then
    CreatureObject(pPlayer):sendSystemMessage("The crystal stops humming as you pull your hand away.")   
    return 
  elseif (eventIndex == 0) then -- Teleport
    if CreatureObject(pPlayer):hasSkill("force_rank_light_novice") then
      createEvent(1000, "recruiterScreenplay", "handleYavinTp", pPlayer, "")
    else
     createEvent(1000, "recruiterScreenplay", "handleYavinTpDark", pPlayer, "")
    end 
  end
end

function elysiumTerminalMenuComponent_02:handleTeleport2(pPlayer, pSui, eventIndex, ...)
  if (pPlayer == nil) then
    return
  end

  local cancelPressed = (eventIndex == 1)
  local args = {...}
  
  local councilType = 1
  
  if (cancelPressed) then
    CreatureObject(pPlayer):sendSystemMessage("The crystal stops humming as you pull your hand away.")   
    return 
  elseif (eventIndex == 0) then -- Teleport
      createEvent(1000, "recruiterScreenplay", "handleLothalTp", pPlayer, "")
     
  end
end

function elysiumTerminalMenuComponent_02:handleTeleport3(pPlayer, pSui, eventIndex, ...)
  if (pPlayer == nil) then
    return
  end

  local cancelPressed = (eventIndex == 1)
  local args = {...}
  
  local councilType = 1
  
  if (cancelPressed) then
    CreatureObject(pPlayer):sendSystemMessage("The crystal stops humming as you pull your hand away.")   
    return 
  elseif (eventIndex == 0) then -- Teleport
      createEvent(1000, "recruiterScreenplay", "handleDantooineTp", pPlayer, "")
     
  end
end

function elysiumTerminalMenuComponent_02:handleTeleport4(pPlayer, pSui, eventIndex, ...)
  if (pPlayer == nil) then
    return
  end

  local cancelPressed = (eventIndex == 1)
  local args = {...}
  
  local councilType = 1
  
  if (cancelPressed) then
    CreatureObject(pPlayer):sendSystemMessage("The crystal stops humming as you pull your hand away.")   
    return 
  elseif (eventIndex == 0) then -- Teleport
      createEvent(1000, "recruiterScreenplay", "handleChandrilaTp", pPlayer, "")
     
  end
end

