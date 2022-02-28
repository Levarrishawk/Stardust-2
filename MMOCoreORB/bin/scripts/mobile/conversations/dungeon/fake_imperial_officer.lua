fake_imperial_officer = ConvoTemplate:new {
  initialScreen = "fake_imperial_officer_start",
  templateType = "Lua",
  luaClassHandler = "fake_imperial_officer_convo_handler",
  screens = {}
}


--Intro First
fake_imperial_officer_start = ConvoScreen:new {
  id = "fake_imperial_officer_start",
  leftDialog = "",
  customDialogText = "Uhh, can I help you citizen?",
  stopConversation = "false",
  options = {
    {"Why doesn't your uniform fit right?", "opt1"},
   -- {"", "opt2"},
   -- {"Why would the Republic want to keep this building even standing?", "opt3"},
    {"Nevermind.", "deny1"}
  
  }
}
fake_imperial_officer:addScreen(fake_imperial_officer_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Uhh, move along!",
  stopConversation = "true",
  options = {
  }
}
fake_imperial_officer:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "Uhh, supply problems.  You know how it is.",
  stopConversation = "false",
  options = {
    {"No, I don't know how it is.  Do tell.","opt1a"},
  }
}
fake_imperial_officer:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "It shrunk in the wash this morning?",
  stopConversation = "false",
  options = {
    {"You aren't really an Imperial Officer are you?","opt2"},
  }
}
fake_imperial_officer:addScreen(opt1a);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "Preposterous!  Of course I am!",
  stopConversation = "false",
  options = {
     {"Really?  What is the first general order taught at the academy?","opt2a"},
  }
}
fake_imperial_officer:addScreen(opt2);

opt2a = ConvoScreen:new {
  id = "opt2a",
  leftDialog = "",
   customDialogText = "Alright, alright... You got me.  I am with the Republic, we've taken control of this garrison to support the Coruscant Rebellion.",
  stopConversation = "true",
  options = {
     --{"He kept a throne room here?  Can I see it?","opt2b"},
  }
}
fake_imperial_officer:addScreen(opt2a);

opt2b = ConvoScreen:new {
  id = "opt2b",
  leftDialog = "",
   customDialogText = "I am afraid not, the throne room is not open to visitation to anyone.  Orders from Chancellor Mon Mothma.",
  stopConversation = "false",
  options = {
     {"How long have you been curator here?","opt2c"},
  }
}
fake_imperial_officer:addScreen(opt2b);

opt2c = ConvoScreen:new {
  id = "opt2c",
  leftDialog = "",
   customDialogText = "Since four months ago during Operation Cinder when Naboo was liberated by New Republic forces.  Before that I was posted in General Rieekan's regiment with the New Republic Army.",
  stopConversation = "false",
  options = {
     {"Ah, so this is your reward for fighting for the Rebellion.  House sitting for the Emperor.","opt2d"},
  }
}
fake_imperial_officer:addScreen(opt2c);

opt2d = ConvoScreen:new {
  id = "opt2d",
  leftDialog = "",
   customDialogText = "Dead emperor you mean.  I can tell you first hand, I was at Endor, the Emperor was on that Death Star when we destroyed it.  He is dead as someone who contracted Blue Shadow Virus.",
  stopConversation = "false",
  options = {
     {"The Holonet says otherwise.","opt2g"},
  }
}
fake_imperial_officer:addScreen(opt2d);

opt2e = ConvoScreen:new {
  id = "opt2e",
  leftDialog = "",
   customDialogText = "The holonet is still run by the Empire on Coruscant, of course they say he is still alive.  It's about the only thing keeping the rest of the systems under their boot from joining the Republic.",
  stopConversation = "false",
  options = {
     {"","opt2g"},
  }
}
fake_imperial_officer:addScreen(opt2e);

opt2f = ConvoScreen:new {
  id = "opt2f",
  leftDialog = "",
   customDialogText = "Your guess is as good as any.  I have no idea where much of the data that came into this facility came from to begin with.  I heard rumors, but nothing more.",
  stopConversation = "false",
  options = {
    {"What sort of rumors?","opt2g"},
  }
}
fake_imperial_officer:addScreen(opt2f);

opt2g = ConvoScreen:new {
  id = "opt2g",
  leftDialog = "",
   customDialogText = "The holonet is still run by the Empire on Coruscant, of course they say he is still alive.  It's about the only thing keeping the rest of the systems under their boot from joining the Republic.",
  stopConversation = "false",
  options = {    
    {"So, why would the Republic even want to keep this building standing?","opt3"},
    {"Good day.", "deny1"}
  }
}
fake_imperial_officer:addScreen(opt2g);

opt3 = ConvoScreen:new {
  id = "opt3",
  leftDialog = "",
   customDialogText = "Chancellor Mon Mothma ordered this place be kept intact and under guard.",
  stopConversation = "false",
  options = {   
    {"What was the purpose of this estate?","opt2"},
    {"I see, well I will be on my way.  Good day.", "deny1"}
  }
}
fake_imperial_officer:addScreen(opt3);




addConversationTemplate("fake_imperial_officer", fake_imperial_officer);
