aurilian_teleporter = ConvoTemplate:new {
  initialScreen = "first_conv",
  templateType = "Lua",
  luaClassHandler = "aurilian_teleporter_convo_handler",
  screens = {}
}


--Intro First
first_conv = ConvoScreen:new {
  id = "first_conv",
  leftDialog = "",
  customDialogText = "Need to get out of Aurilia fast?   My shuttle can get you back to civilization quick.",
  stopConversation = "false",
  options = {
    {"Whatever, just get me out of this place.", "mayor2"},
  --  {"Instance 2", "mayor3"},
 --   {"Instance 3", "mayor4"},
  --  {"Instance 4", "mayor5"},
    {"On second thought, I'll pass.", "deny"}
  
  }
}
aurilian_teleporter:addScreen(first_conv);

--deny
deny = ConvoScreen:new {
  id = "deny",
  leftDialog = "",
  customDialogText = "Suit yourself pal.",
  stopConversation = "true",
  options = {
  }
}
aurilian_teleporter:addScreen(deny);




mayor2 = ConvoScreen:new {
  id = "mayor2",
  leftDialog = "",
  customDialogText = "Next stop, Science Outpost!",
  stopConversation = "true",
  options = {
  --   {"I see. What would I have to do?","mayor3"},
  }
}
aurilian_teleporter:addScreen(mayor2);

mayor3 = ConvoScreen:new {
  id = "mayor3",
  leftDialog = "",
   customDialogText = "Right, off you go then!",
  stopConversation = "true",
  options = {
 --    {"Tell me about the wild vermin.","mayor4"},
  }
}
aurilian_teleporter:addScreen(mayor3);



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

aurilian_teleporter:addScreen(mayor5);

greet_enemy = ConvoScreen:new {
  id = "greet_enemy",
  leftDialog = "@conversation/faction_recruiter_rebel:s_464", -- What are you doing talking to me? People like you are destroying the galaxy.
  stopConversation = "true",
  options = {
  }
}

aurilian_teleporter:addScreen(greet_enemy);



addConversationTemplate("aurilian_teleporter", aurilian_teleporter);
