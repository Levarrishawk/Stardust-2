local ObjectManager = require("managers.object.object_manager")

jakku_overseer = ScreenPlay:new { 
  numberOfActs = 1, 
  questString = "jakku_overseer_convo_queststring", --This needs to be unique! If not unique you will not pull the proper conversation.
  states = {}, --Blank, as we don't need screenplay states to teleport someone. It remains in-case we need to add it though.
  
  --This is basic quest related, doesn't harm and doesn't really do anything (I keep it for goodluck :P)
  questdata = Object:new {
    activePlayerName = "initial",
  }
}

registerScreenPlay("jakku_overseer", true) --Initialize the screenplay IAW the screenplay include

--Simply spawns the NPC
function jakku_overseer:start()
   spawnMobile("jakku", "overseer_dreskin", 1, 13.0, -60, -3.1, 90, 610000140)
end

--The actual conversation handler
jakku_overseer_convo_handler = Object:new {
  
 }


function jakku_overseer_convo_handler:getNextConversationScreen(pConversationTemplate, pConversingPlayer, selectedOption)
  local convosession = CreatureObject(pConversingPlayer):getConversationSession()

  local lastConversationScreen = nil

  if (convosession ~= nil) then
    local session = LuaConversationSession(convosession)
    lastConversationScreen = session:getLastConversationScreen()
  end

  local conversation = LuaConversationTemplate(pConversationTemplate)

  local nextConversationScreen

  if (lastConversationScreen ~= nil) then
    local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)

    --Get the linked screen for the selected option.
    local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)

    nextConversationScreen = conversation:getScreen(optionLink)

    if nextConversationScreen ~= nil then
      local nextLuaConversationScreen = LuaConversationScreen(nextConversationScreen)
    else
      nextConversationScreen = conversation:getScreen("overseer_start")
    end
  else
    nextConversationScreen = conversation:getScreen("overseer_start")
  end
  return nextConversationScreen
end


function jakku_overseer_convo_handler:runScreenHandlers(pConversationTemplate, pConversingPlayer, pConversingNpc, selectedOption, pConversationScreen)
  local screen = LuaConversationScreen(pConversationScreen)
  local screenID = screen:getScreenID() 

  
  local player = LuaSceneObject(pConversingPlayer)

  --if ( screenID == "mayor2" ) then
   
   --  player:switchZone("corellia", -66, 28, -4711, 0) -- x, z, y, cell

  
  
  --print("returning convosvreen")
  return pConversationScreen
end