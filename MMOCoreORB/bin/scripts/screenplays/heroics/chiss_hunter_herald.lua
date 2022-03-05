local ObjectManager = require("managers.object.object_manager")

chiss_hunter_herald = ScreenPlay:new { 
  numberOfActs = 1, 
  questString = "chiss_hunter_herald_convo_queststring", --This needs to be unique! If not unique you will not pull the proper conversation.
  states = {}, --Blank, as we don't need screenplay states to teleport someone. It remains in-case we need to add it though.
  
  --This is basic quest related, doesn't harm and doesn't really do anything (I keep it for goodluck :P)
  questdata = Object:new {
    activePlayerName = "initial",
  }
}

registerScreenPlay("chiss_hunter_herald", true) --Initialize the screenplay IAW the screenplay include

--Simply spawns the NPC
function chiss_hunter_herald:start()
   spawnMobile("kaas", "chiss_hunter_herald", 1, 2844.2, 125.8, 3871.5, -8, 0)
end

--The actual conversation handler
chiss_hunter_herald_convo_handler = Object:new {
  
 }


function chiss_hunter_herald_convo_handler:getNextConversationScreen(pConversationTemplate, pConversingPlayer, selectedOption)
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
      nextConversationScreen = conversation:getScreen("chiss_hunter_herald_start")
    end
  else
    nextConversationScreen = conversation:getScreen("chiss_hunter_herald_start")
  end
  return nextConversationScreen
end


function chiss_hunter_herald_convo_handler:runScreenHandlers(pConversationTemplate, pConversingPlayer, pConversingNpc, selectedOption, pConversationScreen)
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