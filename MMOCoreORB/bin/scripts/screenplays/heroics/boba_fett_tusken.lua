local ObjectManager = require("managers.object.object_manager")

boba_fett_tusken = ScreenPlay:new { 
  numberOfActs = 1, 
  questString = "boba_fett_tusken_convo_queststring", --This needs to be unique! If not unique you will not pull the proper conversation.
  states = {}, --Blank, as we don't need screenplay states to teleport someone. It remains in-case we need to add it though.
  
  --This is basic quest related, doesn't harm and doesn't really do anything (I keep it for goodluck :P)
  questdata = Object:new {
    activePlayerName = "initial",
  }
}

registerScreenPlay("boba_fett_tusken", true) --Initialize the screenplay IAW the screenplay include

--Simply spawns the NPC
function boba_fett_tusken:start()
  local pNpc = spawnMobile("tatooine", "boba_fett_tusken", 1, -5332.2, 40, -4429.8, 145, 0)  
end

--The actual conversation handler
boba_fett_tusken_convo_handler = Object:new {
  
 }


function boba_fett_tusken_convo_handler:getNextConversationScreen(pConversationTemplate, pConversingPlayer, selectedOption)
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
      nextConversationScreen = conversation:getScreen("boba_fett_tusken_start")
    end
  else
    nextConversationScreen = conversation:getScreen("boba_fett_tusken_start")
  end
  return nextConversationScreen
end


function boba_fett_tusken_convo_handler:runScreenHandlers(pConversationTemplate, pConversingPlayer, pConversingNpc, selectedOption, pConversationScreen)
  local screen = LuaConversationScreen(pConversationScreen)
  local screenID = screen:getScreenID() 

  
  if ( screenID == "opt88" ) then
        
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