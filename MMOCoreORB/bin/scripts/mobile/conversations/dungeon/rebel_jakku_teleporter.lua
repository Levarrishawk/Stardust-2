rebel_jakku_teleporter = ConvoTemplate:new {
  initialScreen = "first_conv",
  templateType = "Lua",
  luaClassHandler = "rebel_jakku_teleporter_convo_handler",
  screens = {}
}


--Intro First
first_conv = ConvoScreen:new {
  id = "first_conv",
  leftDialog = "",
  customDialogText = "You look like you want to get off of this rock.  I am heading to Talus, but you'll have to ride in the cargo hold.  Sorry for the smell.",
  stopConversation = "false",
  options = {
    {"Whatever, just get me out of this place.", "mayor2"},
  --  {"Instance 2", "mayor3"},
 --   {"Instance 3", "mayor4"},
  --  {"Instance 4", "mayor5"},
    {"On second thought, I'll pass.", "deny"}
  
  }
}
rebel_jakku_teleporter:addScreen(first_conv);

--deny
deny = ConvoScreen:new {
  id = "deny",
  leftDialog = "",
  customDialogText = "Suit yourself pal.",
  stopConversation = "true",
  options = {
  }
}
rebel_jakku_teleporter:addScreen(deny);




mayor2 = ConvoScreen:new {
  id = "mayor2",
  leftDialog = "",
  customDialogText = "Next stop, Dearic.",
  stopConversation = "true",
  options = {
  --   {"I see. What would I have to do?","mayor3"},
  }
}
rebel_jakku_teleporter:addScreen(mayor2);

mayor3 = ConvoScreen:new {
  id = "mayor3",
  leftDialog = "",
   customDialogText = "Right, off you go then!",
  stopConversation = "true",
  options = {
 --    {"Tell me about the wild vermin.","mayor4"},
  }
}
rebel_jakku_teleporter:addScreen(mayor4);

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

rebel_jakku_teleporter:addScreen(mayor5);

greet_enemy = ConvoScreen:new {
  id = "greet_enemy",
  leftDialog = "@conversation/faction_recruiter_rebel:s_464", -- What are you doing talking to me? People like you are destroying the galaxy.
  stopConversation = "true",
  options = {
  }
}

rebel_jakku_teleporter:addScreen(greet_enemy);



addConversationTemplate("rebel_jakku_teleporter", rebel_jakku_teleporter);
