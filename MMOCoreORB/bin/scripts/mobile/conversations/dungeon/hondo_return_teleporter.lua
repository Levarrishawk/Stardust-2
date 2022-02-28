hondo_return_teleporter = ConvoTemplate:new {
  initialScreen = "hondo_first_conv",
  templateType = "Lua",
  luaClassHandler = "hondo_return_teleporter_convo_handler",
  screens = {}
}


--Intro First
hondo_first_conv = ConvoScreen:new {
  id = "hondo_first_conv",
  leftDialog = "",
  customDialogText = "Oh, you woke up!  Thats.... Great News.. My Friend!  Welcome to Florrum, My little abandoned slice of paradise!",
  stopConversation = "false",
  options = {
    {"Get me off of this rock, Now Hondo!", "mayor2"},
    {"How did I get here?", "mayor3"},
 --   {"Instance 3", "mayor4"},
  --  {"Instance 4", "mayor5"},
    {"I think not.", "deny"}
  
  }
}
hondo_return_teleporter:addScreen(hondo_first_conv);

mayor3 = ConvoScreen:new {
  id = "mayor3",
  leftDialog = "",
   customDialogText = "That, My friend is a very interesting question with a most intriguing answer.  You see, you..uhh.  Fainted right in front of my eyes, so tragic.. but Hondo knew just what to do!",
  stopConversation = "false",
  options = {
     {"You mean kidnap me and drag me to this deserted planet?","mayor4"},
  }
}
hondo_return_teleporter:addScreen(mayor3);

mayor4 = ConvoScreen:new {
  id = "mayor4",
  leftDialog = "",
  customDialogText = "I was getting to that, don't interrupt Hondo!   You see, I had thought you were someone else more.. important that I could ransom off but discovered you barely carried enough credits to pay for the fuel we spent getting here.",
  stopConversation = "false",
  options = {
     {"How very tragic for you.","mayor4a"},
  --   {"I can't help right now.","deny"}
  }
}
hondo_return_teleporter:addScreen(mayor4);

mayor4a = ConvoScreen:new {
  id = "mayor4a",
  leftDialog = "",
  customDialogText = "Oh, do not be concerned for Hondo.  Hondo, will be just fine.",
  stopConversation = "false",
  options = {
     {"What is this planet?","mayor4b"},
  --   {"I can't help right now.","deny"}
  }
}
hondo_return_teleporter:addScreen(mayor4a);

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
hondo_return_teleporter:addScreen(mayor4b);

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
hondo_return_teleporter:addScreen(mayor4c);

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
hondo_return_teleporter:addScreen(mayor4d);

deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Look around?  What for?  There's nothing here... oh well.  Don't let Hondo say he did not tell you so!",
  stopConversation = "false",
  options = {
     {"I think I will have a look around anyway.","deny"},
    -- {"I think I am going to go look around this planet for a while.","deny"}
  }
}
hondo_return_teleporter:addScreen(deny1);


mayor2 = ConvoScreen:new {
  id = "mayor2",
  leftDialog = "",
  customDialogText = "Okay, Okay.  Sheesh, can't a pirate kidnap anyone these days without problems?",
  stopConversation = "true",
  options = {
  --   {"I see. What would I have to do?","mayor3"},
  }
}
hondo_return_teleporter:addScreen(mayor2);

--deny
deny = ConvoScreen:new {
  id = "deny",
  leftDialog = "",
  customDialogText = "Suit yourself..  It's a big planet, maybe there is another dashing pirate out there with a starship.... You never know!",
  stopConversation = "true",
  options = {
  }
}
hondo_return_teleporter:addScreen(deny);

addConversationTemplate("hondo_return_teleporter", hondo_return_teleporter);
