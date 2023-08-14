local ObjectManager = require("managers.object.object_manager")

aurilian_teleporter = ScreenPlay:new { 
  numberOfActs = 1, 
  questString = "aurilian_teleporter_queststring", --This needs to be unique! If not unique you will not pull the proper conversation.
  states = {}, --Blank, as we don't need screenplay states to teleport someone. It remains in-case we need to add it though.
  
  --This is basic quest related, doesn't harm and doesn't really do anything (I keep it for goodluck :P)
  questdata = Object:new {
    activePlayerName = "initial",
  }
}

registerScreenPlay("aurilian_teleporter", true) --Initialize the screenplay IAW the screenplay include

--Simply spawns the NPC
function aurilian_teleporter:start()
   spawnMobile("dathomir", "aurilian_teleporter", 1, 5256, 78, -4124, 0, 0)  
   spawnSceneObject("dathomir", "object/static/vehicle/player_shuttle.iff", 5254, 78, -4109, 0, math.rad(-180) )

end

--The actual conversation handler
aurilian_teleporter_convo_handler = Object:new {
  
 }


function aurilian_teleporter_convo_handler:getNextConversationScreen(pConversationTemplate, pConversingPlayer, selectedOption)
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


function aurilian_teleporter_convo_handler:runScreenHandlers(pConversationTemplate, pConversingPlayer, pConversingNpc, selectedOption, pConversationScreen)
  local screen = LuaConversationScreen(pConversationScreen)
  local screenID = screen:getScreenID() 

  
  local player = LuaSceneObject(pConversingPlayer)

  if ( screenID == "mayor2" ) then
   
     player:switchZone("dathomir", -49, 18, -1584, 0) -- x, z, y, cell

  end
  
  
  --print("returning convosvreen")
  return pConversationScreen
end