local ObjectManager = require("managers.object.object_manager")

imperial_isd_teleporter = ScreenPlay:new { 
  numberOfActs = 1, 
  questString = "imperial_isd_teleporter_queststring", --This needs to be unique! If not unique you will not pull the proper conversation.
  states = {}, --Blank, as we don't need screenplay states to teleport someone. It remains in-case we need to add it though.
  
  --This is basic quest related, doesn't harm and doesn't really do anything (I keep it for goodluck :P)
  questdata = Object:new {
    activePlayerName = "initial",
  }
}

registerScreenPlay("imperial_isd_teleporter", true) --Initialize the screenplay IAW the screenplay include

--Simply spawns the NPC
function imperial_isd_teleporter:start()
  -- spawnMobile("dungeon2", "imperial_isd_teleporter", 1, 5.7, 173.8, 44.8, -90, 480000038)  --disabled until jakku focus test is completed.

end

--The actual conversation handler
imperial_isd_teleporter_convo_handler = Object:new {
  
 }


function imperial_isd_teleporter_convo_handler:getNextConversationScreen(pConversationTemplate, pConversingPlayer, selectedOption)
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
      nextConversationScreen = conversation:getScreen("first_conv")
    end
  else
    nextConversationScreen = conversation:getScreen("first_conv")
  end
  return nextConversationScreen
end


function imperial_isd_teleporter_convo_handler:runScreenHandlers(pConversationTemplate, pConversingPlayer, pConversingNpc, selectedOption, pConversationScreen)
  local screen = LuaConversationScreen(pConversationScreen)
  local screenID = screen:getScreenID() 

  
  local player = LuaSceneObject(pConversingPlayer)

  if ( screenID == "mayor2" ) then
   
     player:switchZone("lok", -1933, 12, -3209, 0) -- x, z, y, cell

  end
  
  
  --print("returning convosvreen")
  return pConversationScreen
end