local ObjectManager = require("managers.object.object_manager")

exarKunEntryMenuComponent = {  }

function exarKunEntryMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local response = LuaObjectMenuResponse(pMenuResponse)
	response:addRadialMenuItem(20, 3, "Enter Instance 1")
	response:addRadialMenuItem(21, 3, "Enter Instance 2")
	response:addRadialMenuItem(23, 3, "Enter Instance 3")
	response:addRadialMenuItem(24, 3, "Enter Instance 4")	
	
end

function exarKunEntryMenuComponent:handleObjectMenuSelect(pSceneObject, pPlayer, selectedID)
	if CreatureObject(pPlayer):isInCombat() or CreatureObject(pPlayer):isIncapacitated() or CreatureObject(pPlayer):isDead() then
		return 0
	end

	if not CreatureObject(pPlayer):isInRangeWithObject(pSceneObject, 6) then
		return 0
	end
	
	if (CreatureObject(pPlayer):isRidingMount()) then
    CreatureObject(pPlayer):sendSystemMessage("You can not use this object while riding a mount.")  
    return 0
  end
	
	if not (CreatureObject(pPlayer):isGrouped()) then
	  CreatureObject(pPlayer):sendSystemMessage("You must be in a group to use this object.")  
	  return 0
	end

	if selectedID == 20 then
	  createEvent(1000, "exarKun", "activate", pPlayer, "")  		   
	elseif selectedID == 21 then
    createEvent(1000, "exarKun2", "activate", pPlayer, "")
  elseif selectedID == 22 then
    createEvent(1000, "exarKun3", "activate", pPlayer, "")  
	elseif selectedID == 23 then
    createEvent(1000, "exarKun4", "activate", pPlayer, "")
	
	end

	return 0
end




