taelan_delar = ConvoTemplate:new {
  initialScreen = "taelan_delar_start",
  templateType = "Lua",
  luaClassHandler = "taelan_delar_convo_handler",
  screens = {}
}


--Intro First
taelan_delar_start = ConvoScreen:new {
  id = "taelan_delar_start",
  leftDialog = "",
  customDialogText = "What do you want? **He looks at you with an irritated glare.**",
  stopConversation = "false",
  options = {
    {"I was just curious about this building.", "opt1"},
  --  {"Tell me about Moraband.", "opt2"},
  --  {"What's out on the rest of the planet?", "opt5"},
    {"Nevermind.", "deny1"},
  
  }
}
taelan_delar:addScreen(taelan_delar_start);

-- CONVO ENDER
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "So long.",
  stopConversation = "true",
  options = {
  }
}
taelan_delar:addScreen(deny1);
--

--Diverge
--Diverging Path 1

opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "Is that so? Well, if you must know.  This is the Tomb of Tulak Hord.  Anything else you want to know?",
  stopConversation = "false",
  options = {
    {"Who was Tulak Hord?","opt1a"},
    {"No, why are you so Angry?","opt3a"},
  }
}
taelan_delar:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "Tulak Hord was one of the greatest Lords of the Sith.  He was feared by his rivals even in his early days.  His knowledge and power in the Dark Side was so vast he was called the Lord of Hate.",
  stopConversation = "false",
  options = {
    {"Lord of Hate?","opt1b"},
  }
}
taelan_delar:addScreen(opt1a);

opt1b = ConvoScreen:new {
  id = "opt1b",
  leftDialog = "",
  customDialogText = "You got it.  His anger was the key to his power, and apparently he was a very angry guy.",
  stopConversation = "false",
  options = {
    --{"I know who he was.","opt3a"},
    {"So what happened to him?", "opt4"},  -- Continue here.
  }
}
taelan_delar:addScreen(opt1b);

opt4 = ConvoScreen:new {
  id = "opt4",
  leftDialog = "",
   customDialogText = "He died, what do you think?",  -- Bookmark
  stopConversation = "false",
  options = {   
    {"Why are you so angry?","opt3a"},   
  }
}
taelan_delar:addScreen(opt4);
-- Diverging Path 2
opt3a = ConvoScreen:new {
  id = "opt3a",
  leftDialog = "",
   customDialogText = "I don't know, why are you such an idiot?",  -- Bookmark
  stopConversation = "false",
  options = {   
    {"How rude!","opt1c"},   
  }
}
taelan_delar:addScreen(opt3a);


-- Return
opt1c = ConvoScreen:new {
  id = "opt1c",
  leftDialog = "",
  customDialogText = "Maybe you should take a hint and go away!",
  stopConversation = "false",
  options = {
    {"Fine, I'm out of here.","opt2"},
  }
}
taelan_delar:addScreen(opt1c);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "About time.",
  stopConversation = "true",
  options = {
    -- {"Who?","opt5"},   
  }
}
taelan_delar:addScreen(opt2);




addConversationTemplate("taelan_delar", taelan_delar);
