local ObjectManager = require("managers.object.object_manager")

rebel_jakku_teleporter = ScreenPlay:new { 
  numberOfActs = 1, 
  questString = "rebel_chasm_teleporter_queststring", --This needs to be unique! If not unique you will not pull the proper conversation.
  states = {}, --Blank, as we don't need screenplay states to teleport someone. It remains in-case we need to add it though.
  
  --This is basic quest related, doesn't harm and doesn't really do anything (I keep it for goodluck :P)
  questdata = Object:new {
    activePlayerName = "initial",
  }
}

registerScreenPlay("rebel_jakku_teleporter", true) --Initialize the screenplay IAW the screenplay include

--Simply spawns the NPC
function rebel_jakku_teleporter:start()
   spawnMobile("jakku", "rebel_jakku_teleporter", 1, 4352.2, 8.9, -5122.6, -105, 0)  --disabled until jakku focus test is completed.
   
   spawnMobile("jakku", "rebel_recruiter", 1, 4311, 7, -5100, 145, 0)
   spawnMobile("jakku", "imperial_recruiter", 1, 4315, 10, -5148, 31, 0)
end

--The actual conversation handler
rebel_jakku_teleporter_convo_handler = Object:new {
  
 }


function rebel_jakku_teleporter_convo_handler:getNextConversationScreen(pConversationTemplate, pConversingPlayer, selectedOption)
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


function rebel_jakku_teleporter_convo_handler:runScreenHandlers(pConversationTemplate, pConversingPlayer, pConversingNpc, selectedOption, pConversationScreen)
  local screen = LuaConversationScreen(pConversationScreen)
  local screenID = screen:getScreenID() 

  
  local player = LuaSceneObject(pConversingPlayer)

  if ( screenID == "mayor2" ) then
   
     player:switchZone("talus", 259, 6, -2953, 0) -- x, z, y, cell

  end
  
  
  --print("returning convosvreen")
  return pConversationScreen
end