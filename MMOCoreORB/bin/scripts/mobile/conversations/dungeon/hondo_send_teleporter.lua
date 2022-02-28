hondo_send_teleporter = ConvoTemplate:new {
  initialScreen = "hondo_first_conv",
  templateType = "Lua",
  luaClassHandler = "hondo_send_teleporter_convo_handler",
  screens = {}
}


--Intro First
hondo_send_first_conv = ConvoScreen:new {
  id = "hondo_send_first_conv",
  leftDialog = "",
  customDialogText = "Oh hello there! You look like a person who appreciates a spectacular opportunity when presented to you!",
  stopConversation = "false",
  options = {
    --{"Umm, I am not interested.. Thanks.", "mayor2"},
    {"No thanks, Mr....", "mayor3"},
 --   {"Instance 3", "mayor4"},
  --  {"Instance 4", "mayor5"},
    {"I'll just be going.", "mayor2"}
  
  }
}
hondo_send_teleporter:addScreen(hondo_send_first_conv);

mayor3 = ConvoScreen:new {
  id = "mayor3",
  leftDialog = "",
   customDialogText = "Allow me to introduce myself, Hondo Ohnaka, Businessman and dealer in certain... commodities, at your service.",
  stopConversation = "false",
  options = {
     {"Umm..  Okay, I think I took a wrong turn I'll....","mayor4"},
  }
}
hondo_send_teleporter:addScreen(mayor3);

mayor4 = ConvoScreen:new {
  id = "mayor4",
  leftDialog = "",
  customDialogText = "Wait, where do you think you are going? You won't believe what I have to offer you!",
  stopConversation = "false",
  options = {
     {"What could you possibly have that would interest me?.","mayor4a"},
  --   {"I can't help right now.","deny"}
  }
}
hondo_send_teleporter:addScreen(mayor4);

mayor4a = ConvoScreen:new {
  id = "mayor4a",
  leftDialog = "",
  customDialogText = "Oh I am sure I can find something you might like, in the cargo hold of my ship..",
  stopConversation = "false",
  options = {
     {"That's it I'm out of here!","mayor2"},
  --   {"I can't help right now.","deny"}
  }
}
hondo_send_teleporter:addScreen(mayor4a);

mayor4b = ConvoScreen:new {
  id = "mayor4b",
  leftDialog = "",
  customDialogText = "You mean Florrum? It's kind of been my home off and on for a long time.  I used to have quite the crew and we based not too far from here, too bad that location was bombarded from orbit by the empire.  I lost a lot of credits that day!",
  stopConversation = "false",
  options = {
     {"How about the big ship wreck behind me?","mayor4c"},
  --   {"I can't help right now.","deny"}
  }
}
hondo_send_teleporter:addScreen(mayor4b);

mayor4c = ConvoScreen:new {
  id = "mayor4c",
  leftDialog = "",
  customDialogText = "Oh, that was my last ship. Nice landing, am I right?",
  stopConversation = "false",
  options = {
     {"Yeah, splendid.","mayor4d"},
  --   {"I can't help right now.","deny"}
  }
}
hondo_send_teleporter:addScreen(mayor4c);

mayor4d = ConvoScreen:new {
  id = "mayor4d",
  leftDialog = "",
  customDialogText = "Look, If you want I can take you to Corellia.  It's a short jump from here.",
  stopConversation = "false",
  options = {
     {"Fine, get me off this rock.","mayor2"},
     {"I think I am going to go look around this planet for a while.","deny1"}
  }
}
hondo_send_teleporter:addScreen(mayor4d);

deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Look around?  What for?  There's nothing here... oh well.  Don't let Hondo say he did not tell you so.  Word of advise though.  Don't get killed.  There are no Cloning Facilities here.  I'd hate for something tragic to happen to my new friend!  Why not let Hondo take you to Corellia instead where it's safe?",
  stopConversation = "false",
  options = {
     {"I think not.","deny"},
    -- {"I think I am going to go look around this planet for a while.","deny"}
  }
}
hondo_send_teleporter:addScreen(deny1);


mayor2 = ConvoScreen:new {
  id = "mayor2",
  leftDialog = "",
  customDialogText = "Oh no you don't!",
  stopConversation = "true",
  options = {
  --   {"I see. What would I have to do?","mayor3"},
  }
}
hondo_send_teleporter:addScreen(mayor2);

--deny
deny = ConvoScreen:new {
  id = "deny",
  leftDialog = "",
  customDialogText = "Hey, opportunities like this don't just come around every day you know!",
  stopConversation = "true",
  options = {
  }
}
hondo_send_teleporter:addScreen(deny);

addConversationTemplate("hondo_send_teleporter", hondo_send_teleporter);
