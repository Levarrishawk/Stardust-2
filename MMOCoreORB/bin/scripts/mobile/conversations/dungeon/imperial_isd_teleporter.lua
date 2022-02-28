imperial_isd_teleporter = ConvoTemplate:new {
  initialScreen = "first_conv",
  templateType = "Lua",
  luaClassHandler = "imperial_isd_teleporter_convo_handler",
  screens = {}
}


--Intro First
first_conv = ConvoScreen:new {
  id = "first_conv",
  leftDialog = "",
  customDialogText = "I was just cleared for take-off, what do you need?  I am overdue on the surface.  I suppose you need a lift?",
  stopConversation = "false",
  options = {
    {"That's correct. I have business on the surface.  Take me with you.", "mayor2"},
  --  {"Instance 2", "mayor3"},
 --   {"Instance 3", "mayor4"},
  --  {"Instance 4", "mayor5"},
    {"Nevermind.", "deny"}
  
  }
}
imperial_isd_teleporter:addScreen(first_conv);

--deny
deny = ConvoScreen:new {
  id = "deny",
  leftDialog = "",
  customDialogText = "Suit yourself.",
  stopConversation = "true",
  options = {
  }
}
imperial_isd_teleporter:addScreen(deny);




mayor2 = ConvoScreen:new {
  id = "mayor2",
  leftDialog = "",
  customDialogText = "Yes sir. Be sure to strap yourself in,  It's regulations.",
  stopConversation = "true",
  options = {
  --   {"I see. What would I have to do?","mayor3"},
  }
}
imperial_isd_teleporter:addScreen(mayor2);




addConversationTemplate("imperial_isd_teleporter", imperial_isd_teleporter);
