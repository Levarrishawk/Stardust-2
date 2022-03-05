local ObjectManager = require("managers.object.object_manager")

chandriltech_greeter = ScreenPlay:new { 
  numberOfActs = 1, 
  questString = "chandriltech_greeter_convo_queststring", --This needs to be unique! If not unique you will not pull the proper conversation.
  states = {}, --Blank, as we don't need screenplay states to teleport someone. It remains in-case we need to add it though.
  
  --This is basic quest related, doesn't harm and doesn't really do anything (I keep it for goodluck :P)
  questdata = Object:new {
    activePlayerName = "initial",
  }
}

registerScreenPlay("chandriltech_greeter", true) --Initialize the screenplay IAW the screenplay include

--Simply spawns the NPC
function chandriltech_greeter:start()
   spawnMobile("chandrila", "chandriltech_greeter", 1, 14.9, -12, 28.6, -90, 35792128)
end

--The actual conversation handler
chandriltech_greeter_convo_handler = Object:new {
  
 }


function chandriltech_greeter_convo_handler:getNextConversationScreen(pConversationTemplate, pConversingPlayer, selectedOption)
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
      nextConversationScreen = conversation:getScreen("chandriltech_greeter_start")
    end
  else
    nextConversationScreen = conversation:getScreen("chandriltech_greeter_start")
  end
  return nextConversationScreen
end


function chandriltech_greeter_convo_handler:runScreenHandlers(pConversationTemplate, pConversingPlayer, pConversingNpc, selectedOption, pConversationScreen)
  local screen = LuaConversationScreen(pConversationScreen)
  local screenID = screen:getScreenID() 

  
  if ( screenID == "opt1b" ) then
        
      local pGhost = CreatureObject(pConversingPlayer):getPlayerObject()
        
      if (pGhost ~= nil) then
      local pWaypoint = PlayerObject(pGhost):getWaypointAt(3341, 2635, "kaas")

      if pWaypoint ~= nil then
        local waypoint = LuaWaypointObject(pWaypoint)

        if not waypoint:isActive() then
          waypoint:setActive(1)
          PlayerObject(pGhost):updateWaypoint(SceneObject(pWaypoint):getObjectID())
        end
      else
        PlayerObject(pGhost):addWaypoint("kaas", "Gundark Cave", "", 3341, 2635, WAYPOINTGREEN, true, true, 0)
      end
     end    
  
   end  
  
  
  return pConversationScreen
end