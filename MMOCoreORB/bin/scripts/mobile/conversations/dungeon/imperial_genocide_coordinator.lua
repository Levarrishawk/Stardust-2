imperial_genocide_coordinator = ConvoTemplate:new {
  initialScreen = "imperial_genocide_coordinator_start",
  templateType = "Lua",
  luaClassHandler = "imperial_genocide_coordinator_convo_handler",
  screens = {}
}


--Intro First
imperial_genocide_coordinator_start = ConvoScreen:new {
  id = "imperial_genocide_coordinator_start",
  leftDialog = "",
  customDialogText = "Greetings citizen.  I represent the Empire's interests for ongoing activities on Endor in demonstrating to the native population what it means to cross the Empire.  If you are here to collect a bounty, I am authorized to requisition supplies for the appropriate collateral.",
  stopConversation = "false",
  options = {
    {"Demonstrating to the native population how?", "opt1"},
    {"What sort of Supplies can I requisition?", "opt2"},
   -- {"Why would the Republic want to keep this building even standing?", "opt3"},
    {"Nevermind.", "deny1"}
  
  }
}
imperial_genocide_coordinator:addScreen(imperial_genocide_coordinator_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Move along citizen.",
  stopConversation = "true",
  options = {
  }
}
imperial_genocide_coordinator:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "The primitives of this world sided with the Rebellion against the Empire, they are called Ewoks and Duloks.  Unfortunately the Imperial Military is otherwise occupied in putting down the insurgence of the New Republic, but we have been authorized to issue bounty for any patriotic citizen willing to participate in this program.",
  stopConversation = "false",
  options = {
    {"What do I need to do?","opt1a"},
  }
}
imperial_genocide_coordinator:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "Kill any Ewok or Dulok you find. Collect their Crossbows.  Bring the Crossbows to me in order to requisition certain items.",
  stopConversation = "false",
  options = {
    {"What can I requisition?","opt2"},
  }
}
imperial_genocide_coordinator:addScreen(opt1a);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "Here is a list of the available items.",
  stopConversation = "false",
  options = {
     {"BARC Speeder","item1"},
     {"Random Rare Painting","item2"}, --1080
     {"Random Rare Large Rug","item3"}, --990
     {"Random Rare Small Rug","item4"}, -- 810
     {"Random Rare Furniture","item5"}, --720
  }
}
imperial_genocide_coordinator:addScreen(opt2);

item1 = ConvoScreen:new {
  id = "item1",
  leftDialog = "",
   customDialogText = "Your item has been requisitioned.",
  stopConversation = "true",
  options = {
    -- {"Is that why you are standing here staring the palace?","item1"},
  }
}
imperial_genocide_coordinator:addScreen(item1);

item2 = ConvoScreen:new {
  id = "item2",
  leftDialog = "",
   customDialogText = "Your item has been requisitioned.",
  stopConversation = "true",
  options = {
    -- {"Is that why you are standing here staring the palace?","item1"},
  }
}
imperial_genocide_coordinator:addScreen(item2);

item3 = ConvoScreen:new {
  id = "item3",
  leftDialog = "",
   customDialogText = "Your item has been requisitioned.",
  stopConversation = "true",
  options = {
    -- {"Is that why you are standing here staring the palace?","item1"},
  }
}
imperial_genocide_coordinator:addScreen(item3);

item4 = ConvoScreen:new {
  id = "item4",
  leftDialog = "",
   customDialogText = "Your item has been requisitioned.",
  stopConversation = "true",
  options = {
    -- {"Is that why you are standing here staring the palace?","item1"},
  }
}
imperial_genocide_coordinator:addScreen(item4);

item5 = ConvoScreen:new {
  id = "item5",
  leftDialog = "",
   customDialogText = "Your item has been requisitioned.",
  stopConversation = "true",
  options = {
    -- {"Is that why you are standing here staring the palace?","item1"},
  }
}
imperial_genocide_coordinator:addScreen(item5);




addConversationTemplate("imperial_genocide_coordinator", imperial_genocide_coordinator);
