local ObjectManager = require("managers.object.object_manager")

buffTerminalMenuComponent2 = {  }

function buffTerminalMenuComponent2:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local response = LuaObjectMenuResponse(pMenuResponse)
	response:addRadialMenuItem(20, 3, "Light Side FRS")
	response:addRadialMenuItem(21, 3, "Dark Side FRS")
	
end

function buffTerminalMenuComponent2:handleObjectMenuSelect(pSceneObject, pPlayer, selectedID)
	if CreatureObject(pPlayer):isInCombat() or CreatureObject(pPlayer):isIncapacitated() or CreatureObject(pPlayer):isDead() then
		return 0
	end

	if not CreatureObject(pPlayer):isInRangeWithObject(pSceneObject, 6) then
		return 0
	end

	if selectedID == 20 then
	  
	  local sui = SuiMessageBox.new("buffTerminalMenuComponent2", "handleLightChoice")
    sui.setPrompt("This will put you into the Light Jedi Force Ranking System, do you wish to proceed?")
    sui.setTitle("Light Jedi FRS")
    sui.setCancelButtonText("Cancel") -- Cancel  
    sui.setOkButtonText("OK") -- OK   

    sui.sendTo(pPlayer)   	  	
	
	elseif selectedID == 21 then
	
	  local sui = SuiMessageBox.new("buffTerminalMenuComponent2", "handleDarkChoice")
    sui.setPrompt("This will put you into the Dark Jedi Force Ranking System, do you wish to proceed?")
    sui.setTitle("Dark Jedi FRS")
    sui.setCancelButtonText("Cancel") -- Cancel  
    sui.setOkButtonText("OK") -- OK   

    sui.sendTo(pPlayer)    
	
    
	end

	return 0
end



function buffTerminalMenuComponent2:handleLightChoice(pPlayer, pSui, eventIndex, ...)
  if (pPlayer == nil) then
    return
  end

  local cancelPressed = (eventIndex == 1)
  local args = {...}
  
  local councilType = 1
  
  if (cancelPressed) then   
    return 
  elseif (eventIndex == 0) then -- Buff the player
    createEvent(1000, "JediTrials", "completeKnightForTesting", pPlayer, councilType)     
     
  end
end

function buffTerminalMenuComponent2:handleDarkChoice(pPlayer, pSui, eventIndex, ...)
  if (pPlayer == nil) then
    return
  end

  local cancelPressed = (eventIndex == 1)
  local args = {...}
  
  local councilType = 2
  
  if (cancelPressed) then   
    return 
  elseif (eventIndex == 0) then -- Buff the player
    createEvent(1000, "JediTrials", "completeKnightForTesting", pPlayer, councilType)     
     
  end
end


