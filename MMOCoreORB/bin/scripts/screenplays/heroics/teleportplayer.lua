rebel_chasm_teleporter = ScreenPlay:new {
  numberOfActs = 1,
  
  screenplayName = "rebel_chasm_teleporter"
}

registerScreenPlay("rebel_chasm_teleporter", true)

function rebel_chasm_teleporter:start()
  if (isZoneEnabled("jakku")) then
    self:spawnMobiles()
  end
end

function rebel_chasm_teleporter:spawnMobiles()

  --In The Guild Hall
  spawnMobile("jakku", "reb_chasm_dungeon_teleporter", 1, -5705, 52, 5989, 0, 0)
  end



function rebel_chasm_teleporter:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
  local creature = LuaCreatureObject(conversingPlayer)
  local convosession = creature:getConversationSession()
  lastConversation = nil
  --print("getNextConversation() called")
  local conversation = LuaConversationTemplate(conversationTemplate)
  local nextConversationScreen 
  if ( conversation ~= nil ) then
    -- checking to see if we have a next screen
    if ( convosession ~= nil ) then
       local session = LuaConversationSession(convosession)
       if ( session ~= nil ) then
        --print("casting getlastconversationsreen()")
        lastConversationScreen = session:getLastConversationScreen()
       end
    end
    if ( lastConversationScreen == nil ) then
      --print("Last conversation is null.  let's try to get the first screen")
      
      local creature = LuaCreatureObject(conversingPlayer)
      local hasAccepted = creature:hasScreenPlayState(force_sensitive.states.quest.intro, force_sensitive.questString)
      --print("hasAccepted() is " .. hasAccepted)   
      
      if ( hasAccepted == 0 ) then
        nextConversationScreen = conversation:getScreen("intro_first_screen")--First convo screen to pull.

      else
        nextConversationScreen = conversation:getScreen("complete")--End of the road.
      end
    else
      
      local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
      local player = LuaCreatureObject(conversingPlayer)
      local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)  
      if ( optionlink == "mayor2" )   then
        player:switchZone("dungeon2", -5.7, 12.1, -5.2, 410000010) -- x, z, y, cell
      --print("optionLink fromn the last screen is .. " .. optionLink)    
      --local thiscreen = conversation:getScreen(optionLink)
      nextConversationScreen = conversation:getScreen(optionLink)     
        else
        nextConversationScreen = conversation:getScreen("complete")--End of the road.
    end     
  end 
  --print("returning screen")   
  return nextConversationScreen 
end

end