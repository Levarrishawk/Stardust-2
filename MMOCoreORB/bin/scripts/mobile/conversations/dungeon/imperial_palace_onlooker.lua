imperial_palace_onlooker = ConvoTemplate:new {
  initialScreen = "imperial_palace_onlooker_start",
  templateType = "Lua",
  luaClassHandler = "imperial_palace_onlooker_convo_handler",
  screens = {}
}


--Intro First
imperial_palace_onlooker_start = ConvoScreen:new {
  id = "imperial_palace_onlooker_start",
  leftDialog = "",
  customDialogText = "Greetings citizen, a spectactular view of the Palace is it not?",
  stopConversation = "false",
  options = {
    {"Uh, yes it is.", "opt1"},
    {"I bet it looks better in person, can I visit it?", "opt2"},
   -- {"Why would the Republic want to keep this building even standing?", "opt3"},
    {"Nevermind.", "deny1"}
  
  }
}
imperial_palace_onlooker:addScreen(imperial_palace_onlooker_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Move along citizen.",
  stopConversation = "true",
  options = {
  }
}
imperial_palace_onlooker:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "Indeed, it truly reminds one of the majesty of the empire.",
  stopConversation = "false",
  options = {
    {"Yeah, wasn't that the Jedi Temple though before the Empire?","opt1a"},
  }
}
imperial_palace_onlooker:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "It was. How fitting that the Emperor chose to take residence and make the very heart of the empire than the very symbol of the corruption the Jedi brought to the Old Republic!",
  stopConversation = "false",
  options = {
    {"Is there a reason why travel to the Palace District is cut off?","opt2"},
  }
}
imperial_palace_onlooker:addScreen(opt1a);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "Due to the rioting and disorder taking place across the planet, the Palace is under lock down by order of Grand Vizier Mas Amedda. No one is allowed in, not even me and I am a Liason to the Palace!",
  stopConversation = "false",
  options = {
     {"Is that why you are standing here staring the palace?","opt2a"},
  }
}
imperial_palace_onlooker:addScreen(opt2);

opt2a = ConvoScreen:new {
  id = "opt2a",
  leftDialog = "",
   customDialogText = "Basically.. yes.  I have nothing better to do.",
  stopConversation = "true",
  options = {
     --{"He kept a throne room here?  Can I see it?","opt2b"},
  }
}
imperial_palace_onlooker:addScreen(opt2a);

opt2b = ConvoScreen:new {
  id = "opt2b",
  leftDialog = "",
   customDialogText = "I am afraid not, the throne room is not open to visitation to anyone.  Orders from Chancellor Mon Mothma.",
  stopConversation = "false",
  options = {
     {"How long have you been curator here?","opt2c"},
  }
}
imperial_palace_onlooker:addScreen(opt2b);

opt2c = ConvoScreen:new {
  id = "opt2c",
  leftDialog = "",
   customDialogText = "Since four months ago during Operation Cinder when Naboo was liberated by New Republic forces.  Before that I was posted in General Rieekan's regiment with the New Republic Army.",
  stopConversation = "false",
  options = {
     {"Ah, so this is your reward for fighting for the Rebellion.  House sitting for the Emperor.","opt2d"},
  }
}
imperial_palace_onlooker:addScreen(opt2c);

opt2d = ConvoScreen:new {
  id = "opt2d",
  leftDialog = "",
   customDialogText = "Dead emperor you mean.  I can tell you first hand, I was at Endor, the Emperor was on that Death Star when we destroyed it.  He is dead as someone who contracted Blue Shadow Virus.",
  stopConversation = "false",
  options = {
     {"The Holonet says otherwise.","opt2g"},
  }
}
imperial_palace_onlooker:addScreen(opt2d);

opt2e = ConvoScreen:new {
  id = "opt2e",
  leftDialog = "",
   customDialogText = "The holonet is still run by the Empire on Coruscant, of course they say he is still alive.  It's about the only thing keeping the rest of the systems under their boot from joining the Republic.",
  stopConversation = "false",
  options = {
     {"","opt2g"},
  }
}
imperial_palace_onlooker:addScreen(opt2e);

opt2f = ConvoScreen:new {
  id = "opt2f",
  leftDialog = "",
   customDialogText = "Your guess is as good as any.  I have no idea where much of the data that came into this facility came from to begin with.  I heard rumors, but nothing more.",
  stopConversation = "false",
  options = {
    {"What sort of rumors?","opt2g"},
  }
}
imperial_palace_onlooker:addScreen(opt2f);

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
imperial_palace_onlooker:addScreen(opt2g);

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
imperial_palace_onlooker:addScreen(opt3);




addConversationTemplate("imperial_palace_onlooker", imperial_palace_onlooker);
