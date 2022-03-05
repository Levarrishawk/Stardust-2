local ObjectManager = require("managers.object.object_manager")

chiss_hunter_herald_cave = ScreenPlay:new { 
  numberOfActs = 1, 
  questString = "chiss_hunter_herald_cave_convo_queststring", --This needs to be unique! If not unique you will not pull the proper conversation.
  states = {}, --Blank, as we don't need screenplay states to teleport someone. It remains in-case we need to add it though.
  
  --This is basic quest related, doesn't harm and doesn't really do anything (I keep it for goodluck :P)
  questdata = Object:new {
    activePlayerName = "initial",
  }
}

registerScreenPlay("chiss_hunter_herald_cave", true) --Initialize the screenplay IAW the screenplay include

--Simply spawns the NPC
function chiss_hunter_herald_cave:start()
   spawnMobile("kaas", "chiss_hunter_herald_cave", 1, -93.3, -100.3, -91.5, 157, 36000170)
end

--The actual conversation handler
chiss_hunter_herald_cave_convo_handler = Object:new {
  
 }


function chiss_hunter_herald_cave_convo_handler:getNextConversationScreen(pConversationTemplate, pConversingPlayer, selectedOption)
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
      nextConversationScreen = conversation:getScreen("chiss_hunter_herald_cave_start")
    end
  else
    nextConversationScreen = conversation:getScreen("chiss_hunter_herald_cave_start")
  end
  return nextConversationScreen
end


function chiss_hunter_herald_cave_convo_handler:runScreenHandlers(pConversationTemplate, pConversingPlayer, pConversingNpc, selectedOption, pConversationScreen)
  local screen = LuaConversationScreen(pConversationScreen)
  local screenID = screen:getScreenID() 

  
  if ( screenID == "wp1" ) then
        
      local pGhost = CreatureObject(pConversingPlayer):getPlayerObject()
        
      if (pGhost ~= nil) then
      local pWaypoint = PlayerObject(pGhost):getWaypointAt(-6135, 6575, "kaas")

      if pWaypoint ~= nil then
        local waypoint = LuaWaypointObject(pWaypoint)

        if not waypoint:isActive() then
          waypoint:setActive(1)
          PlayerObject(pGhost):updateWaypoint(SceneObject(pWaypoint):getObjectID())
        end
      else
        PlayerObject(pGhost):addWaypoint("kaas", "Kell Dragon Cave", "", -6135, 6575, WAYPOINTGREEN, true, true, 0)
      end
     end    
   end  
  
  
  return pConversationScreen
end