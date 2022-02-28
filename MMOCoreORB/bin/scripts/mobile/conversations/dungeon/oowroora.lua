oowroora = ConvoTemplate:new {
  initialScreen = "oowroora_start",
  templateType = "Lua",
  luaClassHandler = "oowroora_convo_handler",
  screens = {}
}


--Intro First
oowroora_start = ConvoScreen:new {
  id = "oowroora_start",
  leftDialog = "",
  customDialogText = "Hello, Traveller. Have you come to sample some of the finest Kashyyykian cuisine on Lothal?",
  stopConversation = "false",
  options = {
    {"A Wookiee Restaurant?", "opt1"},
    {"What's on the menu?", "opt2"},
  --  {"What's out on the rest of the planet?", "opt5"},
    {"Nevermind.", "deny1"},
  
  }
}
oowroora:addScreen(oowroora_start);

-- CONVO ENDER
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Good bye.",
  stopConversation = "true",
  options = {
  }
}
oowroora:addScreen(deny1);
--

--Diverge
--Diverging Path 1

opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "It's the latest craze here on Lothal.  All of the locals can't get enough of my Wookiee Ookies.",
  stopConversation = "false",
  options = {
    {"I am just surprised that anyone off of Kashyyyk would even eat a Wookiee Ookie.","opt1a"},
    --{"Have you thought of using tools to break the rocks?","opt3a"},
  }
}
oowroora:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "How would you know?  Have you tried one?",
  stopConversation = "false",
  options = {
    {"Can't say that I have.","opt1b"},
  }
}
oowroora:addScreen(opt1a);

opt1b = ConvoScreen:new {
  id = "opt1b",
  leftDialog = "",
  customDialogText = "Then what do you know!",
  stopConversation = "false",
  options = {
    {"So, what is on the menu then?","opt2"},  -- Continue here.
  }
}
oowroora:addScreen(opt1b);
-- Diverging Path 2




opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "Today's special is a half pound Bolotaur burger with aged Bantha cheese for just 45 credits.  It comes with a side of Protato wedges for an extra 10 credits.",
  stopConversation = "false",
  options = {
     {"55 credits for a burger?  You're out of your mind.","opt2a"},   
  }
}
oowroora:addScreen(opt2);

opt2a = ConvoScreen:new {
  id = "opt2a",
  leftDialog = "",
   customDialogText = "Am I? Do you have any idea how much it costs to import fresh Bolotaur meat all the way from Kashyyyk here to Lothal?",
  stopConversation = "false",
  options = {
     {"Come to think of it, no I don't.","opt2b"},   
  }
}
oowroora:addScreen(opt2a);

opt2b = ConvoScreen:new {
  id = "opt2b",
  leftDialog = "",
   customDialogText = "It costs enough to charge 45 credits for a single burger and keep a twenty percent profit margin.",
  stopConversation = "false",
  options = {
     {"How about I give you 35 credits for the burger and protato wedges?","opt2c"},   
  }
}
oowroora:addScreen(opt2b);

opt2c = ConvoScreen:new {
  id = "opt2c",
  leftDialog = "",
   customDialogText = "Do I look like a beady eyed Muun who enjoys haggling?  55 Credits or go find another restaurant.",
  stopConversation = "false",
  options = {
     {"How about 40 for the combo then?","opt2d"},   
  }
}
oowroora:addScreen(opt2c);

opt2d = ConvoScreen:new {
  id = "opt2d",
  leftDialog = "",
   customDialogText = "I told you, no haggling!.",
  stopConversation = "false",
  options = {
     {"Fine, I wasn't hungry anyway.","opt2e"},   
  }
}
oowroora:addScreen(opt2d);

opt2e = ConvoScreen:new {
  id = "opt2e",
  leftDialog = "",
   customDialogText = "That's it.  Get out of here!",
  stopConversation = "true",
  options = {
     --{"Alright.","deny1"},   
  }
}
oowroora:addScreen(opt2e);


addConversationTemplate("oowroora", oowroora);
