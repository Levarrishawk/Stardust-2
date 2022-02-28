rebel_vette_teleporter = ConvoTemplate:new {
  initialScreen = "first_conv",
  templateType = "Lua",
  luaClassHandler = "rebel_vette_teleporter_convo_handler",
  screens = {}
}


--Intro First
first_conv = ConvoScreen:new {
  id = "first_conv",
  leftDialog = "",
  customDialogText = "You need something?  I was about to take off for Hanna City.",
  stopConversation = "false",
  options = {
    {"Yeah, I need to get down to the surface.  Take me with you.", "mayor2"},
  --  {"Instance 2", "mayor3"},
 --   {"Instance 3", "mayor4"},
  --  {"Instance 4", "mayor5"},
    {"Nevermind.", "deny"}
  
  }
}
rebel_vette_teleporter:addScreen(first_conv);

--deny
deny = ConvoScreen:new {
  id = "deny",
  leftDialog = "",
  customDialogText = "Suit yourself.",
  stopConversation = "true",
  options = {
  }
}
rebel_vette_teleporter:addScreen(deny);




mayor2 = ConvoScreen:new {
  id = "mayor2",
  leftDialog = "",
  customDialogText = "Sure thing Sir, hop aboard.",
  stopConversation = "true",
  options = {
  --   {"I see. What would I have to do?","mayor3"},
  }
}
rebel_vette_teleporter:addScreen(mayor2);




addConversationTemplate("rebel_vette_teleporter", rebel_vette_teleporter);
