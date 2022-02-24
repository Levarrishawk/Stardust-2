local ObjectManager = require("managers.object.object_manager")

jar_jar_binks = ScreenPlay:new { 
  numberOfActs = 1, 
  questString = "jar_jar_binks_convo_queststring", --This needs to be unique! If not unique you will not pull the proper conversation.
  states = {}, --Blank, as we don't need screenplay states to teleport someone. It remains in-case we need to add it though.
  
  --This is basic quest related, doesn't harm and doesn't really do anything (I keep it for goodluck :P)
  questdata = Object:new {
    activePlayerName = "initial",
  }
}

registerScreenPlay("jar_jar_binks", true) --Initialize the screenplay IAW the screenplay include

--Simply spawns the NPC
function jar_jar_binks:start()
  local pNpc = spawnMobile("naboo", "jar_jar_binks", 1, -5119, 6, 4191, 30, 0)
  self:setMoodString(pNpc, "happy")
end

--The actual conversation handler
jar_jar_binks_convo_handler = Object:new {
  
 }


function jar_jar_binks_convo_handler:getNextConversationScreen(pConversationTemplate, pConversingPlayer, selectedOption)
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
      nextConversationScreen = conversation:getScreen("jar_jar_binks_start")
    end
  else
    nextConversationScreen = conversation:getScreen("jar_jar_binks_start")
  end
  return nextConversationScreen
end


function jar_jar_binks_convo_handler:runScreenHandlers(pConversationTemplate, pConversingPlayer, pConversingNpc, selectedOption, pConversationScreen)
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