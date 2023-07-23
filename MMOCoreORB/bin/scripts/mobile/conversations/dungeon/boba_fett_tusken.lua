boba_fett_tusken = ConvoTemplate:new {
  initialScreen = "boba_fett_tusken_start",
  templateType = "Lua",
  luaClassHandler = "boba_fett_tusken_convo_handler",
  screens = {}
}


--Intro First
boba_fett_tusken_start = ConvoScreen:new {
  id = "boba_fett_tusken_start",
  leftDialog = "",
  customDialogText = "Wandering the Dune Sea is a great way to find oneself lost or surrounded by predators. You don't look like your lost but you are definitely surrounded by predators.",
  stopConversation = "false",
  options = {
    {"I can't say I've ever seen a tusken raider without it's helmet on, much less one that can speak Basic.  Who are you?", "opt1"},
    {"I'll just be on my way then.", "deny1"}
  
  }
}
boba_fett_tusken:addScreen(boba_fett_tusken_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Run along then.",
  stopConversation = "true",
  options = {
  }
}
boba_fett_tusken:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "Today, I am no one.  Yesterday I was called Boba Fett.",
  stopConversation = "false",
  options = {
    {"Boba Fett, the Bounty Hunter?","opt1a"},
  }
}
boba_fett_tusken:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "The same.",
  stopConversation = "false",
  options = {
    {"I thought you were a Mandalorian or something. What happened to your armor?","opt1b"},
   -- {"Find someone else to, I'm busy right now.", "deny1"}
  }
}
boba_fett_tusken:addScreen(opt1a);

opt1b = ConvoScreen:new {
  id = "opt1b",
  leftDialog = "",
  customDialogText = "It was taken from me by thieving scavenger Jawas while I lay incapacitated and left to die lying in the sands.",
  stopConversation = "false",
  options = {
    {"You don't look dead.  What happened?","opt1c"},
  }
}
boba_fett_tusken:addScreen(opt1b);

opt1c = ConvoScreen:new {
  id = "opt1c",
  leftDialog = "",
  customDialogText = "A hunting party from this Tusken Clan found me and brought me back to health.  Shown me the ways of the desert and how to survive out here.  I have chosen to accept this way of life.",
  stopConversation = "false",
  options = {
    {"Aren't you worried about your past catching up to you?","opt1d"},
  }
}
boba_fett_tusken:addScreen(opt1c);

opt1d = ConvoScreen:new {
  id = "opt1d",
  leftDialog = "",
  customDialogText = "Possibly, but word has it Jabba is dead.  I am pretty sure the Galaxy assumes I am dead too and that is fine with me.",
  stopConversation = "false",
  options = {
    {"It was said that you were swallowed up by a Sarlacc.","opt1e"},
  }
}
boba_fett_tusken:addScreen(opt1d);

opt1e = ConvoScreen:new {
  id = "opt1e",
  leftDialog = "",
  customDialogText = "That is regrettably true, however the beast found me somewhat indigestible. If there's nothing else, you should get out of here before my friends come back.",
  stopConversation = "false",
  options = {
    {"So long.","deny1"},
  }
}
boba_fett_tusken:addScreen(opt1e);


addConversationTemplate("boba_fett_tusken", boba_fett_tusken);
