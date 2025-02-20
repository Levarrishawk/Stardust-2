--[[
Created on: 08/09, 2021
Author: TheTinyPebble
Modified: Mannax
]]--
StardustGamblingLogic = ScreenPlay:new {
	scriptName = "StardustGamblingLogic",
	--EXAMPLE SETUP
	currencies = {
		--For Tokens: currency = "token", name: displayed name, full template string (without shared_), if applicable: ScreenPlayData string, ScreenPlayData key
			{currency = "token", name = "Stardust Tokens", template = "object/tangible/item/stardust_pvp_token_generic.iff", ScreenPlayDataString = "vendorToken", ScreenPlayDataKey = "vendor_token"},
			{currency = "tokentwo", name = "Locked Briefcases", template = "object/tangible/loot/misc/briefcase_s01.iff"}, 
		--For credits: currency = "credits"
			{currency = "credits"},
		--For experience: currency = "experience", displayed name, experience type
			{currency = "experience", name = "CIS Currency", experience = "gcw_currency_rebel"},
			{currency = "experience", name = "Jedi Experience", experience =  "jedi_general"},
		--For faction: currency = "faction", name = faction
			{currency = "faction", name = "afarathu"},
		},
		--Displayed Name, 
		merchandise_gambling = { -- Displayed name, full template string (without the shared_), cost {} - follow same order as the currencies setup previously
			{name = "Lewt Chest (Common)", template = "object/tangible/loot/lewt_chests/lewt_chest_common.iff", cost = {5, 0, 0, 0, 0, 0}}, --50
			--{name = "Lewt Chest (Rare)", template = "object/tangible/loot/lewt_chests/lewt_chest_rare.iff", cost = {25, 0, 0, 0, 0, 0}},  --100
		},
}

registerScreenPlay("StardustGamblingLogic", false)

function StardustGamblingLogic:openSUIGambling(pCreatureObject, pUsingObject)
	local sui = SuiListBox.new(self.scriptName, "defaultCallbackGambling")

	if (pUsingObject == nil) then
		sui.setTargetNetworkId(0)
	else
		sui.setTargetNetworkId(SceneObject(pUsingObject):getObjectID())
	end

	sui.setForceCloseDistance(16)

	sui.setTitle("LEWT Box Gamble!")

	local message = "Please select which item you want to buy."
	sui.setPrompt(message)

	for i = 1, #self.merchandise_gambling, 1 do
		local merchString = self:getMerchandiseStringGambling(i)
		sui.add(merchString, "")
	end

	sui.sendTo(pCreatureObject)
end

function StardustGamblingLogic:defaultCallbackGambling(pPlayer, pSui, eventIndex, args)
	local cancelPressed = (eventIndex == 1)

	if (cancelPressed) then
		return
	end

	if (args == "-1") then
		CreatureObject(pPlayer):sendSystemMessage("No option was selected, please try again.")
		return
	end

	local selectedOption = tonumber(args) + 1

	self:buyItemGambling(pPlayer, selectedOption)
end

function StardustGamblingLogic:buyItemGambling(pPlayer, itemSelected)
	local merch = self.merchandise_gambling[itemSelected]
	local pInventory = CreatureObject(pPlayer):getSlottedObject("inventory")
	local containerSize = SceneObject(pInventory):getContainerObjectsSize()
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return
	end
 
	if (SceneObject(pInventory):isContainerFullRecursive()) then
		CreatureObject(pPlayer):sendSystemMessage("You do not have enough inventory space.")
		return
	end

	local canPurchase = self:hasEnoughCurrencyGambling(pPlayer, itemSelected)

	if (canPurchase) then
		for i = 1, #merch.cost do
			local currency = self.currencies[i].currency
			local currencyName = self.currencies[i].name
			local cost = merch.cost[i]
			if (cost ~= 0) then
				if (currency == "token") then
					self:payTokensGambling(pPlayer, itemSelected, i)
				end
				if (currency == "credits") then 
					if (cost <= CreatureObject(pPlayer):getCashCredits()) then
						CreatureObject(pPlayer):subtractCashCredits(cost)
					else
						cost = cost - CreatureObject(pPlayer):getCashCredits()
						CreatureObject(pPlayer):subtractCashCredits(CreatureObject(pPlayer):getCashCredits())
						CreatureObject(pPlayer):setBankCredits(CreatureObject(pPlayer):getBankCredits() - cost)
					end
				end
				if (currency == "experience") then
					CreatureObject(pPlayer):awardExperience(currencyName, cost * -1, true)
				end
				if (currency == "faction") then
					PlayerObject(pGhost):decreaseFactionStanding(currencyName, cost)
				end
			end
		end	
		CreatureObject(pPlayer):sendSystemMessage("You have purchased " .. merch.name)
		local pItem = giveItem(pInventory, merch.template, -1)		
		if (string.match(SceneObject(pItem):getTemplateObjectPath(), "lightsaber_module_force_crystal") and pItem ~= nil) then
			if (merch.color ~= nil) then
				local colorCrystal = LuaLightsaberCrystalComponent(pItem)
				colorCrystal:setColor(merch.color)
				colorCrystal:updateCrystal(merch.color)
			end
		end
	else
		CreatureObject(pPlayer):sendSystemMessage("You can't afford the selected item.")
	end
end

function StardustGamblingLogic:getMerchandiseStringGambling(num)
	local merch = self.merchandise_gambling[num]
	local merchString = merch.name .. " ("

	for i = 1, #merch.cost do
		local currency = self.currencies[i].currency
		local currencyName = self.currencies[i].name
		if (merch.cost[i] > 0) then
			if (currency == "token") then
				merchString = merchString .. merch.cost[i] .. " " .. currencyName
			end
			if (currency == "credits") then
				merchString = merchString .. merch.cost[i] .. " Credits"
			end
			if (currency == "experience") then
				merchString = merchString .. merch.cost[i] .. " " .. currencyName
			end
			if (currency == "faction") then
				merchString = merchString .. merch.cost[i] .. " " .. currencyName:gsub("^%l", string.upper) .. " faction"
			end
			merchString = merchString .. ", "
		end
	end

	merchString = merchString .. ")"
	return merchString:gsub(", %)", ")")
end

function StardustGamblingLogic:hasEnoughCurrencyGambling(pPlayer, num)
	local pInventory = CreatureObject(pPlayer):getSlottedObject("inventory")
	local containerSize = SceneObject(pInventory):getContainerObjectsSize()
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	local merch = self.merchandise_gambling[num]

	for i = 1, #merch.cost do
		local currency = self.currencies[i].currency
		local currencyName = self.currencies[i].name
		local cost = merch.cost[i]
		if (cost > 0) then
			if (currency == "token") then
				local tokens = 0
				for j = 0, containerSize - 1, 1 do
					local pInvObj = SceneObject(pInventory):getContainerObject(j)
					local invSceno = LuaSceneObject(pInvObj)
					local invTano = LuaTangibleObject(pInvObj)
					if (invSceno:getTemplateObjectPath() == self.currencies[i].template)  then
						if (invTano:getUseCount() == 0) then
							tokens = tokens + 1
						else
							tokens = tokens + invTano:getUseCount()
						end
					end
				end
				if (self.currencies[i].ScreenPlayDataString ~= nil and self.currencies[i].ScreenPlayDataKey ~= nil) then
					local tokenData = tonumber(readScreenPlayData(pPlayer, self.currencies[i].ScreenPlayDataString, self.currencies[i].ScreenPlayDataKey))
					if (tokenData == "" or tokenData == nil) then
						tokenData = 0
					end
					tokens = tokens + tokenData
				end
				if (tokens < cost) then
					return false
				end
			end
			if (currency == "credits") then
				if (CreatureObject(pPlayer):getCashCredits() + CreatureObject(pPlayer):getBankCredits() < cost) then
					return false
				end
			end
			if (currency == "experience") then
				if (PlayerObject(pGhost):getExperience(self.currencies[i].experience) < cost) then
					return false
				end
			end
			if (currency == "faction") then
				if (PlayerObject(pGhost):getFactionStanding(currencyName) < cost) then
					return false
				end
			end
		end
	end

	return true
end

function StardustGamblingLogic:payTokensGambling(pPlayer, selectedItem, num)
	local pInventory = CreatureObject(pPlayer):getSlottedObject("inventory")
	local containerSize = SceneObject(pInventory):getContainerObjectsSize()
	local pGhost = CreatureObject(pPlayer):getPlayerObject()
	
	local merch = self.merchandise_gambling[selectedItem]
	local tokenCost = merch.cost[num]
	deleteItems = 0
	tokens = 0
	screenPlayTokenCost = 0

	for i = 0, containerSize - 1, 1 do
		local pInvObj = SceneObject(pInventory):getContainerObject(i)
		local invTano = LuaTangibleObject(pInvObj)
		if (SceneObject(pInvObj):getTemplateObjectPath() == self.currencies[num].template)  then
			if (invTano:getUseCount() == 0) then
				tokens = tokens + 1
			else
				tokens = tokens + invTano:getUseCount()
			end
		end
	end

	if (tokens < tokenCost) then
		deleteItems = tokens
		screenPlayTokenCost = tokenCost - tokens
	else 
		deleteItems = tokenCost
	end

	for i = containerSize - 1 , 0 , -1 do
		pInvObj = SceneObject(pInventory):getContainerObject(i)
		invSceno = LuaSceneObject(pInvObj)
		invTano = LuaTangibleObject(pInvObj)
		if (invSceno:getTemplateObjectPath() == self.currencies[num].template and deleteItems > 0 ) then
			if (invTano:getUseCount() == 0) then
				if (deleteItems - 1 == 0) then
					deleteItems = 0
					invSceno:destroyObjectFromWorld()
					invSceno:destroyObjectFromDatabase()
					break
				else
					deleteItems = deleteItems - 1
					invSceno:destroyObjectFromWorld()
					invSceno:destroyObjectFromDatabase()
				end
			else
				if (invTano:getUseCount() - deleteItems < 0) then
					deleteItems = deleteItems - invTano:getUseCount()
					invSceno:destroyObjectFromWorld()
					invSceno:destroyObjectFromDatabase()
				elseif (invTano:getUseCount() - deleteItems == 0) then
					deleteItems = 0
					invSceno:destroyObjectFromWorld()
					invSceno:destroyObjectFromDatabase()
					break
				else 
					deleteItems = 0
					invTano:setUseCount(invTano:getUseCount() - tokenCost)
					break
				end
			end
		end
	end

	if (screenPlayTokenCost > 0) then
		local tokenData = tonumber(readScreenPlayData(pPlayer, self.currencies[i].ScreenPlayDataString, self.currencies[i].ScreenPlayDataKey))
		writeScreenPlayData(pPlayer, self.currencies[i].ScreenPlayDataString, self.currencies[i].ScreenPlayDataKey, tokenData - screenPlayTokenCost)
	end
end