local ObjectManager = require("managers.object.object_manager")

respecConvoHandler = conv_handler:new {}

function respecConvoHandler:getInitialScreen(pPlayer, pNpc, pConvTemplate)
	local convoTemplate = LuaConversationTemplate(pConvTemplate)
	 CreatureObject(pNpc):doAnimation("beckon")
	 return convoTemplate:getScreen("intro")
	
end

function respecConvoHandler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
	local screen = LuaConversationScreen(pConvScreen)
	local screenID = screen:getScreenID()
	local pConvScreen = screen:cloneScreen()
	local clonedConversation = LuaConversationScreen(pConvScreen)

	if (string.find(screenID, "learn_")) then
		local learnType = string.sub(screenID, 7)
		RespecExperienceConverter:sendConversionSUI(pPlayer, pNpc, learnType)
	elseif (screenID == "what_aspects") then
		local branchList = RespecExperienceConverter:getBranchLearnList(pPlayer)
		clonedConversation:setDialogTextTO(branchList)
	end

	return pConvScreen
end
