retreat_curator = ConvoTemplate:new {
  initialScreen = "retreat_curator_start",
  templateType = "Lua",
  luaClassHandler = "retreat_curator_convo_handler",
  screens = {}
}


--Intro First
retreat_curator_start = ConvoScreen:new {
  id = "retreat_curator_start",
  leftDialog = "",
  customDialogText = "Welcome, I am the curator of this estate.  Have you come for a tour, or just looking around?",
  stopConversation = "false",
  options = {
    {"I came here looking for someone, but she doesn't seem to be here.", "opt1"},
    {"What can you tell me about this estate?", "opt2"},
    {"Why would the Republic want to keep this building even standing?", "opt3"},
    {"Sorry, I took a wrong turn Good Bye.", "deny1"}
  
  }
}
retreat_curator:addScreen(retreat_curator_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Good day!",
  stopConversation = "true",
  options = {
  }
}
retreat_curator:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "I see, might I inquire who you were looking for?",
  stopConversation = "false",
  options = {
    {"That's not important.","opt1a"},
  }
}
retreat_curator:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "Very well, is there anything else I can help you with?",
  stopConversation = "false",
  options = {
    {"What can you tell me about this estate?","opt2"},
  }
}
retreat_curator:addScreen(opt1a);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "This estate was built by the Emperor on the second anniversary of Empire Day.  He was using it as recently as 4 years ago.",
  stopConversation = "false",
  options = {
     {"So, it was like a vacation home?","opt2a"},
  }
}
retreat_curator:addScreen(opt2);

opt2a = ConvoScreen:new {
  id = "opt2a",
  leftDialog = "",
   customDialogText = "Basically yes.  The emperor and members of the Imperial Ruling council would meet here when he was in residence.  Sometimes managing the sorted affairs of the empire right from his throne room behind me.",
  stopConversation = "false",
  options = {
     {"He kept a throne room here?  Can I see it?","opt2b"},
  }
}
retreat_curator:addScreen(opt2a);

opt2b = ConvoScreen:new {
  id = "opt2b",
  leftDialog = "",
   customDialogText = "I am afraid not, the throne room is not open to visitation to anyone.  Orders from Chancellor Mon Mothma.",
  stopConversation = "false",
  options = {
     {"How long have you been curator here?","opt2c"},
  }
}
retreat_curator:addScreen(opt2b);

opt2c = ConvoScreen:new {
  id = "opt2c",
  leftDialog = "",
   customDialogText = "Since four months ago during Operation Cinder when Naboo was liberated by New Republic forces.  Before that I was posted in General Rieekan's regiment with the New Republic Army.",
  stopConversation = "false",
  options = {
     {"Ah, so this is your reward for fighting for the Rebellion.  House sitting for the Emperor.","opt2d"},
  }
}
retreat_curator:addScreen(opt2c);

opt2d = ConvoScreen:new {
  id = "opt2d",
  leftDialog = "",
   customDialogText = "Dead emperor you mean.  I can tell you first hand, I was at Endor, the Emperor was on that Death Star when we destroyed it.  He is dead as someone who contracted Blue Shadow Virus.",
  stopConversation = "false",
  options = {
     {"The Holonet says otherwise.","opt2g"},
  }
}
retreat_curator:addScreen(opt2d);

opt2e = ConvoScreen:new {
  id = "opt2e",
  leftDialog = "",
   customDialogText = "The holonet is still run by the Empire on Coruscant, of course they say he is still alive.  It's about the only thing keeping the rest of the systems under their boot from joining the Republic.",
  stopConversation = "false",
  options = {
     {"","opt2g"},
  }
}
retreat_curator:addScreen(opt2e);

opt2f = ConvoScreen:new {
  id = "opt2f",
  leftDialog = "",
   customDialogText = "Your guess is as good as any.  I have no idea where much of the data that came into this facility came from to begin with.  I heard rumors, but nothing more.",
  stopConversation = "false",
  options = {
    {"What sort of rumors?","opt2g"},
  }
}
retreat_curator:addScreen(opt2f);

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
retreat_curator:addScreen(opt2g);

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
retreat_curator:addScreen(opt3);




addConversationTemplate("retreat_curator", retreat_curator);
