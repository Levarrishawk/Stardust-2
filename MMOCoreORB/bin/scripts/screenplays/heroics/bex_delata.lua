local ObjectManager = require("managers.object.object_manager")

bex_delata = ScreenPlay:new { 
  numberOfActs = 1, 
  questString = "bex_delata_convo_queststring", --This needs to be unique! If not unique you will not pull the proper conversation.
  states = {}, --Blank, as we don't need screenplay states to teleport someone. It remains in-case we need to add it though.
  
  --This is basic quest related, doesn't harm and doesn't really do anything (I keep it for goodluck :P)
  questdata = Object:new {
    activePlayerName = "initial",
  }
}

registerScreenPlay("bex_delata", true) --Initialize the screenplay IAW the screenplay include

--Simply spawns the NPC
function bex_delata:start()
   local pNpc = spawnMobile("moraband", "bex_delata", 1, -1499.2, 13.5, -661, -147, 0)
   self:setMoodString(pNpc, "npc_use_terminal_high")
end

--The actual conversation handler
bex_delata_convo_handler = Object:new {
  
 }


function bex_delata_convo_handler:getNextConversationScreen(pConversationTemplate, pConversingPlayer, selectedOption)
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
      nextConversationScreen = conversation:getScreen("bex_delata_start")
    end
  else
    nextConversationScreen = conversation:getScreen("bex_delata_start")
  end
  return nextConversationScreen
end


function bex_delata_convo_handler:runScreenHandlers(pConversationTemplate, pConversingPlayer, pConversingNpc, selectedOption, pConversationScreen)
  local screen = LuaConversationScreen(pConversationScreen)
  local screenID = screen:getScreenID() 


    if ( screenID == "opt5a" ) then
        
      local pGhost = CreatureObject(pConversingPlayer):getPlayerObject()
        
      if (pGhost ~= nil) then
      local pWaypoint = PlayerObject(pGhost):getWaypointAt(7068, -2575, "moraband")

      if pWaypoint ~= nil then
        local waypoint = LuaWaypointObject(pWaypoint)

        if not waypoint:isActive() then
          waypoint:setActive(1)
          PlayerObject(pGhost):updateWaypoint(SceneObject(pWaypoint):getObjectID())
        end
      else
        PlayerObject(pGhost):addWaypoint("moraband", "Lake Adas", "", 7068, -2575, WAYPOINTYELLOW, true, true, 0)
      end
     end    
   end       
  
  
  
  --print("returning convosvreen")
  return pConversationScreen
end