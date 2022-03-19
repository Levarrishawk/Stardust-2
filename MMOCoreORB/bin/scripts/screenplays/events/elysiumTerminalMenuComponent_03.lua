local ObjectManager = require("managers.object.object_manager")

elysiumTerminalMenuComponent_03 = {  }

function elysiumTerminalMenuComponent_03:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local response = LuaObjectMenuResponse(pMenuResponse)
	response:addRadialMenuItem(20, 3, "Travel to Aurilia")	
	
end

function elysiumTerminalMenuComponent_03:handleObjectMenuSelect(pSceneObject, pPlayer, selectedID)
	if CreatureObject(pPlayer):isInCombat() or CreatureObject(pPlayer):isIncapacitated() or CreatureObject(pPlayer):isDead() then
		return 0
	end

	if not CreatureObject(pPlayer):isInRangeWithObject(pSceneObject, 6) then
		return 0
	end

	if selectedID == 20 then
	  
	  local sui = SuiMessageBox.new("elysiumTerminalMenuComponent_03", "handleTeleport")
    sui.setPrompt("As you touch the Obelisk it begins to hum and you feel a strange pulling sensation in the force. It is not so strong that you could not back away from it now, but the pull grows stronger as you hold your hand on it's surface.  (This will transport you to another location.  Do you wish to proceed?)")
    sui.setTitle("Strange Obelisk")
    sui.setCancelButtonText("Cancel") -- Cancel  
    sui.setOkButtonText("OK") -- OK   

    sui.sendTo(pPlayer)   	  		 	
    
	end

	return 0
end



function elysiumTerminalMenuComponent_03:handleTeleport(pPlayer, pSui, eventIndex, ...)
  if (pPlayer == nil) then
    return
  end

  local cancelPressed = (eventIndex == 1)
  local args = {...}
  
  local councilType = 1
  
  if (cancelPressed) then
    CreatureObject(pPlayer):sendSystemMessage("The obelisk stops humming as you pull your hand away.")   
    return 
  elseif (eventIndex == 0) then -- Teleport
      createEvent(1000, "recruiterScreenplay", "handleAuriliaTp", pPlayer, "")
     
  end
end


