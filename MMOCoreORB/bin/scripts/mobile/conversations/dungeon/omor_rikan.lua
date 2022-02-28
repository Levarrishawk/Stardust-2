omor_rikan = ConvoTemplate:new {
  initialScreen = "omor_rikan_start",
  templateType = "Lua",
  luaClassHandler = "omor_rikan_convo_handler",
  screens = {}
}


--Intro First
omor_rikan_start = ConvoScreen:new {
  id = "omor_rikan_start",
  leftDialog = "",
  customDialogText = "Hello.  **He looks to his side and mutters something under his breath. with an uncomfortable look.**",
  stopConversation = "false",
  options = {
    {"Just curious what you can tell me about this building?", "opt1"},
  --  {"Tell me about Moraband.", "opt2"},
  --  {"What's out on the rest of the planet?", "opt5"},
    {"Nevermind.", "deny1"},
  
  }
}
omor_rikan:addScreen(omor_rikan_start);

-- CONVO ENDER
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "So long.",
  stopConversation = "true",
  options = {
  }
}
omor_rikan:addScreen(deny1);
--

--Diverge
--Diverging Path 1

opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "Oh. This is...  Nothing.  It's nothing.  You should leave.  Now.",
  stopConversation = "false",
  options = {
    {"Are you alright?","opt1a"},
    --{"Have you thought of using tools to break the rocks?","opt3a"},
  }
}
omor_rikan:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "Of course I am.  You're awfully rude to ask.  *He sighs*   This, I believe is the Tomb of none other than Ajunta Pall.",
  stopConversation = "false",
  options = {
    {"Ajunta Pall?","opt1b"},
  }
}
omor_rikan:addScreen(opt1a);

opt1b = ConvoScreen:new {
  id = "opt1b",
  leftDialog = "",
  customDialogText = "It's hard to say for sure considering the entrance is buried, but we'll soon find out.  Wait, you don't know who Ajunta Pall is?",
  stopConversation = "false",
  options = {
    {"I know who he was.","opt3a"},
    {"No, who was he?", "opt4"},  -- Continue here.
  }
}
omor_rikan:addScreen(opt1b);

opt4 = ConvoScreen:new {
  id = "opt4",
  leftDialog = "",
   customDialogText = "According to legend, Ajunta Pall was one of the first Dark Jedi to settle here, back when the world still held it's name in the Sith language, Korriban.  It is said he was the first Dark Lord of the Sith.",  -- Bookmark
  stopConversation = "false",
  options = {   
    {"I see.","opt3a"},   
  }
}
omor_rikan:addScreen(opt4);
-- Diverging Path 2
opt3a = ConvoScreen:new {
  id = "opt3a",
  leftDialog = "",
   customDialogText = "I don't expect the tomb to contain much.   You see, it was old even when the Sith Empire was at it's height.  This tomb is over 7000 years old.  It's something of a small miracle it's even in the condition it is in.",  -- Bookmark
  stopConversation = "false",
  options = {   
    {"That is pretty old.","opt1c"},   
  }
}
omor_rikan:addScreen(opt3a);


-- Return
opt1c = ConvoScreen:new {
  id = "opt1c",
  leftDialog = "",
  customDialogText = "You're telling me, but you know what bothers me?",
  stopConversation = "false",
  options = {
    {"No, what?","opt2"},
  }
}
omor_rikan:addScreen(opt1c);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "Them.",
  stopConversation = "false",
  options = {
     {"Who?","opt5"},   
  }
}
omor_rikan:addScreen(opt2);

opt5 = ConvoScreen:new {
  id = "opt5",
  leftDialog = "",
   customDialogText = "Them! Don't you see them?",
  stopConversation = "false",
  options = {
     {"I don't see anyone.","opt6"},   
  }
}
omor_rikan:addScreen(opt5);

opt6 = ConvoScreen:new {
  id = "opt6",
  leftDialog = "",
   customDialogText = "They're everywhere, always taunting me.  Always whispering things to me...",
  stopConversation = "false",
  options = {
     {"Are you sure you are alright?","opt7"},   
  }
}
omor_rikan:addScreen(opt6);

opt7 = ConvoScreen:new {
  id = "opt7",
  leftDialog = "",
   customDialogText = "Go away!  Leave me to my work.  I must finish my work or..  or.... Ha ha ha ha ha.",
  stopConversation = "true",
  options = {
    -- {"Are you sure you are alright?","opt7"},   
  }
}
omor_rikan:addScreen(opt7);


addConversationTemplate("omor_rikan", omor_rikan);
