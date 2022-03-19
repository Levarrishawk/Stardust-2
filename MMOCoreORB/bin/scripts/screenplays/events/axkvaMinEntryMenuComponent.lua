local ObjectManager = require("managers.object.object_manager")

axkvaMinEntryMenuComponent = {  }

function axkvaMinEntryMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local response = LuaObjectMenuResponse(pMenuResponse)
	response:addRadialMenuItem(20, 3, "Enter the Chamber of Banishment")	
	
end

function axkvaMinEntryMenuComponent:handleObjectMenuSelect(pSceneObject, pPlayer, selectedID)
	if CreatureObject(pPlayer):isInCombat() or CreatureObject(pPlayer):isIncapacitated() or CreatureObject(pPlayer):isDead() then
		return 0
	end

	if not CreatureObject(pPlayer):isInRangeWithObject(pSceneObject, 6) then
		return 0
	end
	
	if not (CreatureObject(pPlayer):isGrouped()) then
	  CreatureObject(pPlayer):sendSystemMessage("You must be in a group to use this object.")  
	  return 0
	end

	if selectedID == 20 then
	  createEvent(1000, "axkvaMin", "activate", pPlayer, "")
	  		 	
    
	end

	return 0
end




