local ObjectManager = require("managers.object.object_manager")

imperial_genocide_coordinator = ScreenPlay:new { 
  numberOfActs = 1, 
  questString = "imperial_genocide_coordinator_convo_queststring", --This needs to be unique! If not unique you will not pull the proper conversation.
  states = {}, --Blank, as we don't need screenplay states to teleport someone. It remains in-case we need to add it though.
  
  --This is basic quest related, doesn't harm and doesn't really do anything (I keep it for goodluck :P)
  questdata = Object:new {
    activePlayerName = "initial",
  },
  
  questItems = {
      quest2 = { template = "object/weapon/ranged/rifle/rifle_ewok_crossbow.iff", displayName = "Ewok Crossbow" },      
    },
 
}

registerScreenPlay("imperial_genocide_coordinator", true) --Initialize the screenplay IAW the screenplay include

--Simply spawns the NPC
function imperial_genocide_coordinator:start()
   spawnMobile("endor", "imperial_ewok_event_liason", 1, 3185.5, 24, -3449.9, 177, 0)
   spawnMobile("endor", "imperial_ewok_event_liason", 1, -904.3, 80.1, 1603.2, 140, 0)
end

--The actual conversation handler
imperial_genocide_coordinator_convo_handler = Object:new {
  
 }


function imperial_genocide_coordinator_convo_handler:getNextConversationScreen(pConversationTemplate, pConversingPlayer, selectedOption)
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
      nextConversationScreen = conversation:getScreen("imperial_genocide_coordinator_start")
    end
  else
    nextConversationScreen = conversation:getScreen("imperial_genocide_coordinator_start")
  end
  return nextConversationScreen
end


function imperial_genocide_coordinator_convo_handler:runScreenHandlers(pConversationTemplate, pConversingPlayer, pConversingNpc, selectedOption, pConversationScreen)
  local screen = LuaConversationScreen(pConversationScreen)
  local screenID = screen:getScreenID() 

  
  local player = LuaSceneObject(pConversingPlayer)
  
  
    
      

  if ( screenID == "item1" ) then
    local pInventory = CreatureObject(pConversingPlayer):getSlottedObject("inventory")
          local lootGroup = "lothal_track"
      if pInventory == nil then
        return
      end     
   
   self:removeQuestItem1(pConversingPlayer, imperial_genocide_coordinator.questItems.quest2.template)
  end
  
  if ( screenID == "item2" ) then
    local pInventory = CreatureObject(pConversingPlayer):getSlottedObject("inventory")
          local lootGroup = "veteran_rewards_1080_days"
      if pInventory == nil then
        return
      end     
   
   self:removeQuestItem2(pConversingPlayer, imperial_genocide_coordinator.questItems.quest2.template)
  end
  
  if ( screenID == "item3" ) then
    local pInventory = CreatureObject(pConversingPlayer):getSlottedObject("inventory")
          local lootGroup = "veteran_rewards_990_days"
      if pInventory == nil then
        return
      end     
   
   self:removeQuestItem3(pConversingPlayer, imperial_genocide_coordinator.questItems.quest2.template)
  end
  
  if ( screenID == "item4" ) then
    local pInventory = CreatureObject(pConversingPlayer):getSlottedObject("inventory")
          local lootGroup = "veteran_rewards_810_days"
      if pInventory == nil then
        return
      end     
   
   self:removeQuestItem4(pConversingPlayer, imperial_genocide_coordinator.questItems.quest2.template)
  end
  
  if ( screenID == "item5" ) then
    local pInventory = CreatureObject(pConversingPlayer):getSlottedObject("inventory")
          local lootGroup = "veteran_rewards_720_days"
      if pInventory == nil then
        return
      end     
   
   self:removeQuestItem5(pConversingPlayer, imperial_genocide_coordinator.questItems.quest2.template)
  end
  
  
  --print("returning convosvreen")
  return pConversationScreen
end


function imperial_genocide_coordinator_convo_handler:hasQuestItem(pPlayer, template)
  local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")
  return pInventory ~= nil and getContainerObjectByTemplate(pInventory, template, true) ~= nil
end


function imperial_genocide_coordinator_convo_handler:removeQuestItem1(pPlayer, template)
  local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

  if (pInventory == nil) then
    return
  end

  local pItem = getContainerObjectByTemplate(pInventory, template, true)
  local lootGroup = "lothal_track"
  
  if (pItem ~= nil) then
    SceneObject(pItem):destroyObjectFromWorld()
    SceneObject(pItem):destroyObjectFromDatabase()
    createLoot(pInventory, lootGroup, 0, true)
    CreatureObject(pPlayer):sendSystemMessage("Requisition Successful!")   
  else
     CreatureObject(pPlayer):sendSystemMessage("Requisition Failed: You need an Ewok Crossbow to exchange.")   
  end
end

function imperial_genocide_coordinator_convo_handler:removeQuestItem2(pPlayer, template)
  local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

  if (pInventory == nil) then
    return
  end

  local pItem = getContainerObjectByTemplate(pInventory, template, true)
  local lootGroup = "veteran_rewards_1080_days"
  
  if (pItem ~= nil) then
    SceneObject(pItem):destroyObjectFromWorld()
    SceneObject(pItem):destroyObjectFromDatabase()
    createLoot(pInventory, lootGroup, 0, true)
    CreatureObject(pPlayer):sendSystemMessage("Requisition Successful!")   
  else
     CreatureObject(pPlayer):sendSystemMessage("Requisition Failed: You need an Ewok Crossbow to exchange.")   
  end
end

function imperial_genocide_coordinator_convo_handler:removeQuestItem3(pPlayer, template)
  local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

  if (pInventory == nil) then
    return
  end

  local pItem = getContainerObjectByTemplate(pInventory, template, true)
  local lootGroup = "veteran_rewards_990_days"
  
  if (pItem ~= nil) then
    SceneObject(pItem):destroyObjectFromWorld()
    SceneObject(pItem):destroyObjectFromDatabase()
    createLoot(pInventory, lootGroup, 0, true)
    CreatureObject(pPlayer):sendSystemMessage("Requisition Successful!")   
  else
     CreatureObject(pPlayer):sendSystemMessage("Requisition Failed: You need an Ewok Crossbow to exchange.")   
  end
end

function imperial_genocide_coordinator_convo_handler:removeQuestItem4(pPlayer, template)
  local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

  if (pInventory == nil) then
    return
  end

  local pItem = getContainerObjectByTemplate(pInventory, template, true)
  local lootGroup = "veteran_rewards_810_days"
  
  if (pItem ~= nil) then
    SceneObject(pItem):destroyObjectFromWorld()
    SceneObject(pItem):destroyObjectFromDatabase()
    createLoot(pInventory, lootGroup, 0, true)
    CreatureObject(pPlayer):sendSystemMessage("Requisition Successful!")   
  else
     CreatureObject(pPlayer):sendSystemMessage("Requisition Failed: You need an Ewok Crossbow to exchange.")   
  end
end

function imperial_genocide_coordinator_convo_handler:removeQuestItem5(pPlayer, template)
  local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

  if (pInventory == nil) then
    return
  end

  local pItem = getContainerObjectByTemplate(pInventory, template, true)
  local lootGroup = "veteran_rewards_720_days"
  
  if (pItem ~= nil) then
    SceneObject(pItem):destroyObjectFromWorld()
    SceneObject(pItem):destroyObjectFromDatabase()
    createLoot(pInventory, lootGroup, 0, true)
    CreatureObject(pPlayer):sendSystemMessage("Requisition Successful!")   
  else
     CreatureObject(pPlayer):sendSystemMessage("Requisition Failed: You need an Ewok Crossbow to exchange.")   
  end
end
