-- Credit to c0pp3r

local ObjectManager = require("managers.object.object_manager")

pvp = ScreenPlay:new {
	numberOfActs = 1,
  	questString = "pvp",
  	states = {onleave = 1, overt = 2},
  	questdata = Object:new {
    	activePlayerName = "initial",
    	}
}

registerScreenPlay("pvp", true)

function pvp:start()
    	self:spawnActiveAreas()
end

function pvp:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("naboo", "object/active_area.iff", -1744, 10, -3760, 0, 0, 0, 0, 0)

	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
	        activeArea:setCellObjectID(0)
	        activeArea:setRadius(365)
	        createObserver(ENTEREDAREA, "pvp", "notifySpawnArea", pSpawnArea)
	        createObserver(EXITEDAREA, "pvp", "notifySpawnAreaLeave", pSpawnArea)
	    end
end

--checks if player enters the zone, and what to do with them.
function pvp:notifySpawnArea(pActiveArea, pMovingObject)

	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end

	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end

		if (player:isImperial() or player:isRebel()) then
			createEvent(1, "pvp", "handlePvpZone", pMovingObject)
			player:sendSystemMessage("!!CAUTION!! you have entered a military zone.")
		else
			player:sendSystemMessage("You are not fit to be here.")
			player:teleport(-959, 19, -3471, 0)
		end
		return 0
	end)
end

--Handles the setting of factional status
function pvp:handlePvpZone(pPlayer)
	ObjectManager.withCreatureAndPlayerObject(pPlayer, function(player, playerObject)
		deleteData(player:getObjectID() .. ":changingFactionStatus")
		if (playerObject:isCovert() or playerObject:isOnLeave()) then
			playerObject:setFactionStatus(2)
		end
	end)

end

--Simply sends a system message
function pvp:notifySpawnAreaLeave(pActiveArea, pMovingObject)

	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end

	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end

		if (player:isImperial() or player:isRebel()) then
			player:sendSystemMessage("You were lucky this time...")
		end
		return 0
	end)
end
