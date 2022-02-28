rebel_chasm_teleporter = ConvoTemplate:new {
  initialScreen = "first_conv",
  templateType = "Lua",
  luaClassHandler = "rebel_chasm_teleporter_convo_handler",
  screens = {}
}


--Intro First
first_conv = ConvoScreen:new {
  id = "first_conv",
  leftDialog = "",
  customDialogText = "Where do you want to Teleport to?",
  stopConversation = "false",
  options = {
    {"Battle of Jakku", "mayor2"},
  --  {"Instance 2", "mayor3"},
 --   {"Instance 3", "mayor4"},
  --  {"Instance 4", "mayor5"},
    {"No where.", "deny"}
  
  }
}
rebel_chasm_teleporter:addScreen(first_conv);

--deny
deny = ConvoScreen:new {
  id = "deny",
  leftDialog = "",
  customDialogText = "Ok, piss off then!",
  stopConversation = "true",
  options = {
  }
}
rebel_chasm_teleporter:addScreen(deny);




mayor2 = ConvoScreen:new {
  id = "mayor2",
  leftDialog = "",
  customDialogText = "Right, off you go then!",
  stopConversation = "true",
  options = {
  --   {"I see. What would I have to do?","mayor3"},
  }
}
rebel_chasm_teleporter:addScreen(mayor2);

mayor3 = ConvoScreen:new {
  id = "mayor3",
  leftDialog = "",
   customDialogText = "Right, off you go then!",
  stopConversation = "true",
  options = {
 --    {"Tell me about the wild vermin.","mayor4"},
  }
}
rebel_chasm_teleporter:addScreen(mayor4);

mayor4 = ConvoScreen:new {
  id = "mayor4",
  leftDialog = "",
  customDialogText = "Right, off you go then!",
  stopConversation = "true",
  options = {
  --   {"I'll help her.","mayorvermin"},
  --   {"I can't help right now.","deny"}
  }
}

mayor5 = ConvoScreen:new {
  id = "mayor5",
  leftDialog = "",
  customDialogText = "Right, off you go then!",
  stopConversation = "true",
  options = {
   --  {"I'll help her.","mayorvermin"},
  --   {"I can't help right now.","deny"}
  }
}

rebel_chasm_teleporter:addScreen(mayor5);



addConversationTemplate("rebel_chasm_teleporter", rebel_chasm_teleporter);
