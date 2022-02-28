prophet_kadann = ConvoTemplate:new {
  initialScreen = "prophet_kadann_start",
  templateType = "Lua",
  luaClassHandler = "prophet_kadann_convo_handler",
  screens = {}
}


--Intro First
prophet_kadann_start = ConvoScreen:new {
  id = "prophet_kadann_start",
  leftDialog = "",
  customDialogText = "Greetings, I have been expecting you. I am Kadann, Supreme Prophet of the Dark Side. Indeed you are the one from my vision, Welcome to Dromund Kaas.",
  stopConversation = "false",
  options = {
    {"Tell me about your vision?", "opt1"},
    {"You lead these Dark Siders?", "opt2"},
   -- {"I had no idea there was an Imperial Garrison here?", "opt3"},
    {"Nevermind.", "deny1"}
  
  }
}
prophet_kadann:addScreen(prophet_kadann_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Find illumination in darkness.",
  stopConversation = "true",
  options = {
  }
}
prophet_kadann:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "I saw the shadow of death of something that has slept a long time. A wellspring of cold, unyielding hate. A long forgotten evil from the past awoken from it's long slumber.",
  stopConversation = "false",
  options = {
    {"Go on.","opt1a"},
  }
}
prophet_kadann:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "The shadow spread like a disease, consuming and theatening all life in it's path and you standing in it's way.",
  stopConversation = "false",
  options = {
    {"Why me?","opt1b"},
  }
}
prophet_kadann:addScreen(opt1a);

opt1b = ConvoScreen:new {
  id = "opt1b",
  leftDialog = "",
  customDialogText = "The force works in strange ways my young friend.  Nevertheless you will encounter this, and you will do what you are destined to.",
  stopConversation = "false",
  options = {
    {"... And what might that be?","opt1c"},
  }
}
prophet_kadann:addScreen(opt1b);

opt1c = ConvoScreen:new {
  id = "opt1c",
  leftDialog = "",
  customDialogText = "To save the galaxy, in your own small way.",
  stopConversation = "false",
  options = {
    {"You said whatever this is was awoken?  What is it?","opt1d"},
  }
}
prophet_kadann:addScreen(opt1c);

opt1d = ConvoScreen:new {
  id = "opt1d",
  leftDialog = "",
  customDialogText = "Many old ghosts haunt the ruins scattered about this world.  Long ago, this planet was once the capitol of the Sith Empire.  Though we Prophets have been here a long time we are not alone on this planet.",
  stopConversation = "false",
  options = {
    {"Not alone? Who else would live on this nightmare of a world?","opt1e"},
  }
}
prophet_kadann:addScreen(opt1d);

opt1e = ConvoScreen:new {
  id = "opt1e",
  leftDialog = "",
   customDialogText = "You would want to speak with Cronal, he's our unofficial Historian. He has spent more time studying old texts and salvaged databanks all over the planet than anyone in our order's history.  He would be the man to ask.",
  stopConversation = "false",
  options = {
     {"You lead this group?","opt2"},
  }
}
prophet_kadann:addScreen(opt1e);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "Lead them? Yes, in a manner of speaking. Our order is a religious one firstly, I am simply the oldest among us and carry the title of Supreme Prophet.",
  stopConversation = "false",
  options = {
     {"I see.  Sariss mentioned you are over two centuries old?","opt2a"},
  }
}
prophet_kadann:addScreen(opt2);

opt2a = ConvoScreen:new {
  id = "opt2a",
  leftDialog = "",
   customDialogText = "Indeed I am.  The force can both sustain life as well as destroy.  It is up to the wielder how they choose to go about that.",
  stopConversation = "false",
  options = {
     {"I didn't expect to hear something like that from a Dark Sider.","opt2b"},
  }
}
prophet_kadann:addScreen(opt2a);

opt2b = ConvoScreen:new {
  id = "opt2b",
  leftDialog = "",
   customDialogText = "No, perhaps not.  Two centuries ago I was a Jedi, raised and trained in the light.",
  stopConversation = "false",
  options = {
     {"How did you end up here then?","opt2c"},
  }
}
prophet_kadann:addScreen(opt2b);

opt2c = ConvoScreen:new {
  id = "opt2c",
  leftDialog = "",
   customDialogText = "I became disillusioned by the Jedi Order's strict obeyance to the Code.  My meditation and contemplations grew more restless as time went along and then the visions started.",
  stopConversation = "false",
  options = {
     {"Go on.","opt2d"},
  }
}
prophet_kadann:addScreen(opt2c);

opt2d = ConvoScreen:new {
  id = "opt2d",
  leftDialog = "",
   customDialogText = "By that time Dromund Kaas was all but forgotten to all but the eldest in the Jedi.  Even Master Yoda only knew of it as myth, but I began to see it in visions.  I knew it really existed.",
  stopConversation = "false",
  options = {
     {"What did you do?","opt2e"},
  }
}
prophet_kadann:addScreen(opt2d);

opt2e = ConvoScreen:new {
  id = "opt2e",
  leftDialog = "",
   customDialogText = "I searched through the archives of the Jedi Temple, looked for any old data on hyperspace lanes and eventually located one that led here, to the Dromund System.  I was determined to follow my visions, but the council forbade it.  I decided then to leave the Jedi. I became one of what the order called The Lost Twenty.",
  stopConversation = "false",
  options = {
     {"How fascinating.","opt2f"},
  }
}
prophet_kadann:addScreen(opt2e);

opt2f = ConvoScreen:new {
  id = "opt2f",
  leftDialog = "",
   customDialogText = "When I came to Dromund Kaas I discovered the Prophets. They expected my arrival then, just as I expected yours today.",
  stopConversation = "true",
  options = {
    --{"What sort of rumors?","opt2g"},
  }
}
prophet_kadann:addScreen(opt2f);

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
prophet_kadann:addScreen(opt2g);

opt3 = ConvoScreen:new {
  id = "opt3",
  leftDialog = "",
   customDialogText = "The troops here are deserters of sorts.  They are loyal to Prophet Kadann and follow his orders only.",
  stopConversation = "false",
  options = {   
    {"What can you tell me about your order?","opt2"},
    {"I see, well I will be on my way.  Good day.", "deny1"}
  }
}
prophet_kadann:addScreen(opt3);




addConversationTemplate("prophet_kadann", prophet_kadann);
