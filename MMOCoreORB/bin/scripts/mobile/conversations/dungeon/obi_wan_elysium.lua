obi_wan_elysium = ConvoTemplate:new {
  initialScreen = "obi_wan_elysium_start",
  templateType = "Lua",
  luaClassHandler = "obi_wan_elysium_convo_handler",
  screens = {}
}


--Intro First
obi_wan_elysium_start = ConvoScreen:new {
  id = "obi_wan_elysium_start",
  leftDialog = "",
  customDialogText = "Hello there my young friend.  You appear to be lost, perhaps I can help you find your way again?",
  stopConversation = "false",
  options = {
    {"Who.. what are you?", "opt1"},
    {"What is this place?", "opt2"},
  --  {"What's out on the rest of the planet?", "opt5"},
    {"Nevermind.", "deny1"},
  
  }
}
obi_wan_elysium:addScreen(obi_wan_elysium_start);

-- CONVO ENDER
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "The force will be with you, always.",
  stopConversation = "true",
  options = {
  }
}
obi_wan_elysium:addScreen(deny1);
--

--Diverge
--Diverging Path 1

opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "I am Jedi Master Obi-Wan Kenobi, or at least I used to be and as for what I am now?  That would not be for you to comprehend at this time I am afraid.",
  stopConversation = "false",
  options = {
    {"Obi-Wan Kenobi?  Aren't you dead?","opt1a"},
    --{"Have you thought of using tools to break the rocks?","opt3a"},
  }
}
obi_wan_elysium:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "No one ever truly dies my young friend.  We all become one with the force in one way or another at the end of life.",
  stopConversation = "false",
  options = {
    {"That is not possible. Not according to everything that I know about the force.","opt1b"},
  }
}
obi_wan_elysium:addScreen(opt1a);

opt1b = ConvoScreen:new {
  id = "opt1b",
  leftDialog = "",
  customDialogText = "Impossible according to what you know of the force perhaps, but yet here I am.  There are many mysteries of the force that I never thought would be possible when I was as alive as you are.",
  stopConversation = "false",
  options = {
    {"What can you tell me about this place?","opt2"},  -- Continue here.
  }
}
obi_wan_elysium:addScreen(opt1b);
-- Diverging Path 2




opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "This place is unusually strong with the force, not unlike another that I stood upon during the Clone Wars.  It is a conduit within the very fabric of the cosmic force that connects to a variety of places and times.  I know little about it except that it is quite old,  perhaps older than even the Jedi Order itself.  Long ago, the ancient Jedi knew of this place and accessed it through some of the oldest Jedi Temples in the Galaxy.   Which I assume is where you come in.",
  stopConversation = "false",
  options = {
     {"Yes, I came from an ancient enclave on Yavin 4.","opt2a"},   
  }
}
obi_wan_elysium:addScreen(opt2);

opt2a = ConvoScreen:new {
  id = "opt2a",
  leftDialog = "",
   customDialogText = "I see.  I know of BOTH of the enclaves on that world.  It doesn't matter to me which one you came from, not here anyway.  You must feel different in this place, don't you?",
  stopConversation = "false",
  options = {
     {"Yes, I feel.. balance.  There is absolutely no conflict in the force here.","opt2b"},   
  }
}
obi_wan_elysium:addScreen(opt2a);

opt2b = ConvoScreen:new {
  id = "opt2b",
  leftDialog = "",
   customDialogText = "Remember that feeling.  Because unfortunately outside of this place the force is anything but in balance, but you already know this.  Always the constant struggle between the Light and the Dark, the Ashla and the Bogan,  The son and the daughter.",
  stopConversation = "false",
  options = {
     {"The son and the daughter?","opt2c"},   
  }
}
obi_wan_elysium:addScreen(opt2b);

opt2c = ConvoScreen:new {
  id = "opt2c",
  leftDialog = "",
   customDialogText = "Hm? Oh...  Nothing.   Just an Old man's rambling.  Pay it no heed.",
  stopConversation = "false",
  options = {
     {"How do I leave this place?","opt2d"},   
  }
}
obi_wan_elysium:addScreen(opt2c);

opt2d = ConvoScreen:new {
  id = "opt2d",
  leftDialog = "",
   customDialogText = "Since the way to here from Yavin 4 has been reopened you can return to there from this crystal, or should any of the pathways here be open, you can travel through one of them.  You should be warned though, the pathways opened within this place can be very dangerous.  You must be cautious for the wrong path can have great consequence.",
  stopConversation = "false",
  options = {
     {"How will I know which way is the right way?","opt2e"},   
  }
}
obi_wan_elysium:addScreen(opt2d);

opt2e = ConvoScreen:new {
  id = "opt2e",
  leftDialog = "",
   customDialogText = "Trust in your feelings.  You will know the way.",
  stopConversation = "false",
  options = {
     {"Alright.","deny1"},   
  }
}
obi_wan_elysium:addScreen(opt2e);


addConversationTemplate("obi_wan_elysium", obi_wan_elysium);
