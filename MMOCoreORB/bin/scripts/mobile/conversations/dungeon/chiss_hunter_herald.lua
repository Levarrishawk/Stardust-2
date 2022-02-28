chiss_hunter_herald = ConvoTemplate:new {
  initialScreen = "chiss_hunter_herald_start",
  templateType = "Lua",
  luaClassHandler = "chiss_hunter_herald_convo_handler",
  screens = {}
}


--Intro First
chiss_hunter_herald_start = ConvoScreen:new {
  id = "chiss_hunter_herald_start",
  leftDialog = "",
  customDialogText = "Hey, you look like the capable sort, and it may not surprise you that we don't get a lot of people wandering through this little slice of paradise of ours.  I have a situation with one of my hunter teams, could you assist?",
  stopConversation = "false",
  options = {
    {"What sort of situation?", "opt1"},
    {"Find someone else to, I'm busy right now.", "deny1"}
  
  }
}
chiss_hunter_herald:addScreen(chiss_hunter_herald_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Fine, off with you then.",
  stopConversation = "true",
  options = {
  }
}
chiss_hunter_herald:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "One of our hunter packs was tracking a family of Gundark to their nest, as you know Gundark Ears are very prized commodities on several worlds.",
  stopConversation = "false",
  options = {
    {"Keep talking, I'm all ears...","opt1a"},
  }
}
chiss_hunter_herald:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "Oh, sense of humor on this one. We got a live one here! Seriously though, they radioed in that they had tracked the family to a cave not far from here but we lost contact.  Could you possibly track them down for me?",
  stopConversation = "false",
  options = {
    {"Alright, where is this cave exactly?","opt1b"},
    {"Find someone else to, I'm busy right now.", "deny1"}
  }
}
chiss_hunter_herald:addScreen(opt1a);

opt1b = ConvoScreen:new {
  id = "opt1b",
  leftDialog = "",
  customDialogText = "Just barely over a kilometer south of here, you can't miss it.",
  stopConversation = "false",
  options = {
    {"I'll go check it out.","deny1"},
  }
}
chiss_hunter_herald:addScreen(opt1b);




addConversationTemplate("chiss_hunter_herald", chiss_hunter_herald);
