local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
require("screenplays.screenplay")


RespecExperienceConverter = ScreenPlay:new {
	xpConversion = {
		
		
		combat_meleespecialize_onehand = {     
      { "combat_general", 1 },
      { "combat_meleespecialize_polearm", 10 },
      { "combat_meleespecialize_twohand", 10 },
      { "combat_meleespecialize_unarmed", 10 },
      { "combat_rangedspecialize_carbine", 10 },
      { "combat_rangedspecialize_heavy", 10 },
      { "combat_rangedspecialize_pistol", 10 },
      { "combat_rangedspecialize_rifle", 10 },      
    },
    combat_meleespecialize_twohand = {     
      { "combat_general", 1 },
      { "combat_meleespecialize_polearm", 10 },
      { "combat_meleespecialize_onehand", 10 },
      { "combat_meleespecialize_unarmed", 10 },
      { "combat_rangedspecialize_carbine", 10 },
      { "combat_rangedspecialize_heavy", 10 },
      { "combat_rangedspecialize_pistol", 10 },
      { "combat_rangedspecialize_rifle", 10 },      
    },
    combat_meleespecialize_polearm = {     
      { "combat_general", 1 },
      { "combat_meleespecialize_onehand", 10 },
      { "combat_meleespecialize_twohand", 10 },
      { "combat_meleespecialize_unarmed", 10 },
      { "combat_rangedspecialize_carbine", 10 },
      { "combat_rangedspecialize_heavy", 10 },
      { "combat_rangedspecialize_pistol", 10 },
      { "combat_rangedspecialize_rifle", 10 },      
    },
    combat_meleespecialize_unarmed = {     
      { "combat_general", 1 },
      { "combat_meleespecialize_polearm", 10 },
      { "combat_meleespecialize_twohand", 10 },
      { "combat_meleespecialize_onehand", 10 },
      { "combat_rangedspecialize_carbine", 10 },
      { "combat_rangedspecialize_heavy", 10 },
      { "combat_rangedspecialize_pistol", 10 },
      { "combat_rangedspecialize_rifle", 10 },      
    },
    combat_rangedspecialize_carbine = {     
      { "combat_general", 1 },
      { "combat_meleespecialize_polearm", 10 },
      { "combat_meleespecialize_twohand", 10 },
      { "combat_meleespecialize_unarmed", 10 },
      { "combat_meleespecialize_onehand", 10 },
      { "combat_rangedspecialize_heavy", 10 },
      { "combat_rangedspecialize_pistol", 10 },
      { "combat_rangedspecialize_rifle", 10 },      
    },
    combat_rangedspecialize_heavy = {     
      { "combat_general", 1 },
      { "combat_meleespecialize_polearm", 10 },
      { "combat_meleespecialize_twohand", 10 },
      { "combat_meleespecialize_unarmed", 10 },
      { "combat_meleespecialize_onehand", 10 },
      { "combat_rangedspecialize_carbine", 10 },
      { "combat_rangedspecialize_pistol", 10 },
      { "combat_rangedspecialize_rifle", 10 },      
    },
    combat_rangedspecialize_pistol = {     
      { "combat_general", 1 },
      { "combat_meleespecialize_polearm", 10 },
      { "combat_meleespecialize_twohand", 10 },
      { "combat_meleespecialize_unarmed", 10 },
      { "combat_meleespecialize_onehand", 10 },
      { "combat_rangedspecialize_heavy", 10 },
      { "combat_rangedspecialize_carbine", 10 },
      { "combat_rangedspecialize_rifle", 10 },      
    },
    combat_rangedspecialize_rifle = {     
      { "combat_general", 1 },
      { "combat_meleespecialize_polearm", 10 },
      { "combat_meleespecialize_twohand", 10 },
      { "combat_meleespecialize_unarmed", 10 },
      { "combat_meleespecialize_onehand", 10 },
      { "combat_rangedspecialize_heavy", 10 },
      { "combat_rangedspecialize_pistol", 10 },
      { "combat_rangedspecialize_carbine", 10 },      
    }		
	}
}

function RespecExperienceConverter:getBranchLearnList(pPlayer)
	if (pPlayer == nil) then
		return
	end

	local branchList = "\nNothing"
	local hasBranch = false
	for i = 1, #VillageJediManagerCommon.forceSensitiveBranches, 1 do
		local branchName = VillageJediManagerCommon.forceSensitiveBranches[i]

		if (VillageJediManagerCommon.hasUnlockedBranch(pPlayer, branchName)) then
			local localizedBranch = getStringId("@quest/force_sensitive/utils:" .. branchName)
			if (hasBranch) then
				branchList = branchList .. "\n" .. localizedBranch
			else
				hasBranch = true
				branchList = "\n" .. localizedBranch
			end
		end
	end

	return branchList
end

function RespecExperienceConverter:sendConversionSUI(pPlayer, pNpc, experienceType)
	if (pPlayer == nil) then
		return
	end

	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	PlayerObject(pGhost):closeSuiWindowType(SuiWindowType.FS_EXP_CONVERT)

	local conversionList = self.xpConversion[experienceType]

	if (conversionList == nil) then
		printLuaError("RespecExperienceConverter:sendConversionSUI, could not grab xp conversion table for type " .. experienceType)
		return
	end

	local xpList = { }

	for i = 1, #conversionList, 1 do
		local xpAmount = PlayerObject(pGhost):getExperience(conversionList[i][1])

		if (xpAmount >= conversionList[i][2]) then
			table.insert(xpList, conversionList[i][1])
		end
	end

	if (#xpList <= 0) then
		CreatureObject(pPlayer):sendSystemMessage("@quest/force_sensitive/utils:convert_not_enough_for_conversion")
		return
	end

	local sui = SuiListBox.new("RespecExperienceConverter", "convertXpTypeCallback")

	sui.setTargetNetworkId(SceneObject(pNpc):getObjectID())
	sui.setTitle("@quest/force_sensitive/utils:xp_transfer_prompt")
	sui.setPrompt("Select the experience you wish to convert to " .. getStringId("@exp_n:" .. experienceType) .. ".")

	for i = 1, #xpList, 1 do
		sui.add(getStringId("@exp_n:" .. xpList[i]), xpList[i])
	end
	sui.setWindowType(SuiWindowType.FS_EXP_CONVERT)
	sui.sendTo(pPlayer)

	writeStringSharedMemory(SceneObject(pPlayer):getObjectID() .. ":respecConversionType", experienceType)
end

function RespecExperienceConverter:convertXpTypeCallback(pPlayer, pSui, eventIndex, args)
	if (pPlayer == nil) then
		return
	end

	local playerID = SceneObject(pPlayer):getObjectID()

	local cancelPressed = (eventIndex == 1)

	if (cancelPressed) then
		deleteStringSharedMemory(playerID .. ":respecConversionType")
		return
	end

	local pPageData = LuaSuiBoxPage(pSui):getSuiPageData()

	if (pPageData == nil) then
		deleteStringSharedMemory(playerID .. ":respecConversionType")
		return
	end

	local suiPageData = LuaSuiPageData(pPageData)
	local xpType = readStringSharedMemory(playerID .. ":respecConversionType")

	if (xpType == "") then
		deleteStringSharedMemory(playerID .. ":respecConversionType")
		return
	end

	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		deleteStringSharedMemory(playerID .. ":respecConversionType")
		return
	end

	PlayerObject(pGhost):closeSuiWindowType(SuiWindowType.FS_EXP_CONVERT)

	local chosenXp = suiPageData:getStoredData(tostring(args))
	local xpAmount = PlayerObject(pGhost):getExperience(chosenXp)
	local conversionList = self.xpConversion[xpType]

	local ratio = 0

	for i = 1, #conversionList, 1 do
		if (conversionList[i][1] == chosenXp) then
			ratio = conversionList[i][2]
		end
	end

	if (xpAmount < ratio) then
		CreatureObject(pPlayer):sendSystemMessage("@quest/force_sensitive/utils:convert_not_enough_xp")
		deleteStringSharedMemory(playerID .. ":respecConversionType")
		return
	end

	if (ratio == 0) then
		CreatureObject(pPlayer):sendSystemMessage("@quest/force_sensitive/utils:convert_illegal_type")
		deleteStringSharedMemory(playerID .. ":respecConversionType")
		return
	end

	writeStringSharedMemory(playerID .. ":respecChosenXp", chosenXp)
	local npcID = suiPageData:getTargetNetworkId()

	local sui = SuiTransferBox.new("ExperienceConverter", "convertXpTransferCallback")

	sui.setTargetNetworkId(npcID)
	sui.setTitle("@quest/force_sensitive/utils:xp_transfer_prompt")
	sui.setPrompt("How much " .. getStringId("@exp_n:" .. chosenXp) .. " experience do you wish to convert?\n(1 for " .. ratio .. " conversion ratio)")
	sui.setTransferFromText("Experience")
	sui.setTransferFromValue(xpAmount)
	sui.setTransferFromInputValue(xpAmount)
	sui.setTransferToText("To Convert")
	sui.setTransferToValue(0)
	sui.setTransferToInputValue(0)
	sui.setConversionFromRatio(1)
	sui.setConversionToRatio(1)
	sui.setWindowType(SuiWindowType.FS_EXP_CONVERT)

	sui.sendTo(pPlayer)
end

function RespecExperienceConverter:convertXpTransferCallback(pPlayer, pSui, eventIndex, transferInputFromValue, transferInputToValue)
	local playerID = SceneObject(pPlayer):getObjectID()
	local conversionType = readStringSharedMemory(playerID .. ":respecConversionType")
	local chosenXp = readStringSharedMemory(playerID .. ":respecChosenXp")
	deleteStringSharedMemory(playerID .. ":respecConversionType")
	deleteStringSharedMemory(playerID .. ":respecChosenXp")

	local cancelPressed = (eventIndex == 1)

	if (cancelPressed) then
		return
	end

	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	local xpToConvert = tonumber(transferInputToValue)

	if xpToConvert <= 0 then
		return
	end

	local conversionList = self.xpConversion[conversionType]
	local ratio = 0

	for i = 1, #conversionList, 1 do
		if (conversionList[i][1] == chosenXp) then
			ratio = conversionList[i][2]
		end
	end

	if (ratio == 0) then
		CreatureObject(pPlayer):sendSystemMessage("@quest/force_sensitive/utils:convert_illegal_type")
		return
	end

	local xpAmount = PlayerObject(pGhost):getExperience(chosenXp)

	if (xpAmount < xpToConvert) then
		CreatureObject(pPlayer):sendSystemMessage("@quest/force_sensitive/utils:convert_not_enough_xp")
		return
	end

	local convertedXp = math.floor(xpToConvert / ratio)
	local modValue = xpToConvert % ratio

	if modValue > 0 then
		xpToConvert = xpToConvert - modValue
	end

	local fsXpAmount = PlayerObject(pGhost):getExperience("fs_" .. conversionType)
	local fsXpCap = PlayerObject(pGhost):getExperienceCap("fs_" .. conversionType)

	if (fsXpCap > 0) then
		if (fsXpCap <= fsXpAmount) then
			CreatureObject(pPlayer):sendSystemMessage("@quest/force_sensitive/utils:convert_at_fs_skill_cap")
			return
		end

		if (fsXpAmount + convertedXp > fsXpCap) then
			convertedXp = fsXpCap - fsXpAmount;
			xpToConvert = convertedXp * ratio;
		end
	else
		CreatureObject(pPlayer):sendSystemMessage("@quest/force_sensitive/utils:convert_no_skill")
		return
	end

	if (convertedXp < 1) then
		CreatureObject(pPlayer):sendSystemMessage("@quest/force_sensitive/utils:convert_allocate_more_xp")
		return
	end

	CreatureObject(pPlayer):awardExperience(chosenXp, xpToConvert * -1, false)

	local messageString = LuaStringIdChatParameter("@quest/force_sensitive/utils:xp_convert_lose")
	messageString:setTO(getStringId("@exp_n:" .. chosenXp))
	messageString:setDI(xpToConvert)
	CreatureObject(pPlayer):sendSystemMessage(messageString:_getObject())

	CreatureObject(pPlayer):awardExperience("fs_" .. conversionType, convertedXp, false)

	messageString = LuaStringIdChatParameter("@quest/force_sensitive/utils:xp_convert_gain")
	messageString:setTO(getStringId("@exp_n:fs_" .. conversionType))
	messageString:setDI(convertedXp)
	CreatureObject(pPlayer):sendSystemMessage(messageString:_getObject())
end

return RespecExperienceConverter
