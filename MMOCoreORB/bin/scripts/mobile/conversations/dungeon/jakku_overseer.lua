jakku_overseer = ConvoTemplate:new {
  initialScreen = "overseer_start",
  templateType = "Lua",
  luaClassHandler = "jakku_overseer_convo_handler",
  screens = {}
}


--Intro First
overseer_start = ConvoScreen:new {
  id = "overseer_start",
  leftDialog = "",
  customDialogText = "So, you are the intruders that breached the facility.  No matter.  You are too late, the data has been transmitted and all databanks in the facility have been wiped.  I will surrender to you if I must, I assume you have questions.",
  stopConversation = "false",
  options = {
    {"What is Protocol 77?", "opt1"},
    {"What is the purpose of this facility?", "opt2"},
    {"Why would the Empire place such priority on defending Jakku?", "opt3"},
    {"Remain here until security forces arrive to apprehend you.", "deny1"}
  
  }
}
jakku_overseer:addScreen(overseer_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Fine.",
  stopConversation = "true",
  options = {
  }
}
jakku_overseer:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "Protocol 77 was a security measure put in place by Emperor Palpatine meant to protect the work being done in this facility from any unauthorized hands.",
  stopConversation = "false",
  options = {
    {"Who would be considered unauthorized hands?","opt1a"},
  }
}
jakku_overseer:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "Hands like yours for example. The majority of the research from this facility was for the Emperor's eyes only save for the weapons.",
  stopConversation = "false",
  options = {
    {"What exactly was the purpose of this facility?","opt2"},
  }
}
jakku_overseer:addScreen(opt1a);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "This facility served a twofold purpose for the Empire.  The highest priority was in research and data decryption received from satellite outposts established by the empire in the unexplored parts of the galaxy.  The second, well that is a bit complicated.",
  stopConversation = "false",
  options = {
     {"Complicated how?","opt2a"},
  }
}
jakku_overseer:addScreen(opt2);

opt2a = ConvoScreen:new {
  id = "opt2a",
  leftDialog = "",
   customDialogText = "I am just an administrator, not a theoretical physicist.  The weapons research conducted here was on a new type of super weapon to one day replace the Death Star.",
  stopConversation = "false",
  options = {
     {"Replace the death star?  Just what kind of weapon are we talking about?","opt2b"},
  }
}
jakku_overseer:addScreen(opt2a);

opt2b = ConvoScreen:new {
  id = "opt2b",
  leftDialog = "",
   customDialogText = "All I know is that it is supposed to be a directed energy weapon that is capable of destroying a target through hyperspace.",
  stopConversation = "false",
  options = {
     {"How is that possible?","opt2c"},
  }
}
jakku_overseer:addScreen(opt2b);

opt2c = ConvoScreen:new {
  id = "opt2c",
  leftDialog = "",
   customDialogText = "That's the thing.  It was never able to be made to function.  Put simply the power requirements are just too great.  This facility goes deep into the core of this world.  We are able to generate more power than the entire imperial starfleet. However it's barely a drop in the bucket compared to what energy is apparently needed.",
  stopConversation = "false",
  options = {
     {"So where is this weapon?","opt2d"},
  }
}
jakku_overseer:addScreen(opt2c);

opt2d = ConvoScreen:new {
  id = "opt2d",
  leftDialog = "",
   customDialogText = "It doesn't exist. Only design schematics and virtual models ran on the facilities databanks.  When Protocol-77 was initiated, the databanks were wiped clean once the data was transmitted.",
  stopConversation = "false",
  options = {
     {"Transmitted where?","opt2e"},
  }
}
jakku_overseer:addScreen(opt2d);

opt2e = ConvoScreen:new {
  id = "opt2e",
  leftDialog = "",
   customDialogText = "I don't know.  Somewhere deep in the unknown regions of the galaxy.",
  stopConversation = "false",
  options = {
     {"What the hell would be out there to receive that data?","opt2f"},
  }
}
jakku_overseer:addScreen(opt2e);

opt2f = ConvoScreen:new {
  id = "opt2f",
  leftDialog = "",
   customDialogText = "Your guess is as good as any.  I have no idea where much of the data that came into this facility came from to begin with.  I heard rumors, but nothing more.",
  stopConversation = "false",
  options = {
    {"What sort of rumors?","opt2g"},
  }
}
jakku_overseer:addScreen(opt2f);

opt2g = ConvoScreen:new {
  id = "opt2g",
  leftDialog = "",
   customDialogText = "That the Emperor was trying to find the source of his own power and the data that came in was from that source.",
  stopConversation = "false",
  options = {
    {"What is Protocol-77.","opt1"},
    {"Why would the Empire place so much priority on defending Jakku?","opt3"},
    {"Remain here until security forces arrive to apprehend you.", "deny1"}
  }
}
jakku_overseer:addScreen(opt2g);

opt3 = ConvoScreen:new {
  id = "opt3",
  leftDialog = "",
   customDialogText = "The Emperor himself decreed that this facility was vital to the survival of the Empire and it needed to be defended at any cost due to the work being done here.",
  stopConversation = "false",
  options = {
    {"What is Protocol-77.","opt1"},
    {"What is the purpose of this facility?","opt2"},
    {"Remain here until security forces arrive to apprehend you.", "deny1"}
  }
}
jakku_overseer:addScreen(opt3);




addConversationTemplate("jakku_overseer", jakku_overseer);
