bex_delata = ConvoTemplate:new {
  initialScreen = "bex_delata_start",
  templateType = "Lua",
  luaClassHandler = "bex_delata_convo_handler",
  screens = {}
}


--Intro First
bex_delata_start = ConvoScreen:new {
  id = "bex_delata_start",
  leftDialog = "",
  customDialogText = "Can you not see that I am busy?  What do you want?",
  stopConversation = "false",
  options = {
    {"Just curious what you can tell me about this building?", "opt1"},
  --  {"Tell me about Moraband.", "opt2"},
  --  {"What's out on the rest of the planet?", "opt5"},
    {"Nevermind.", "deny1"},
  
  }
}
bex_delata:addScreen(bex_delata_start);

-- CONVO ENDER
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "So long.",
  stopConversation = "true",
  options = {
  }
}
bex_delata:addScreen(deny1);
--

--Diverge
--Diverging Path 1

opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "This is the Tomb of none other than Marka Ragnos, and if you would leave me alone I might be able to clear the entrance at some point in my lifetime.",
  stopConversation = "false",
  options = {
    {"Who was Marka Ragnos?.","opt1a"},
    {"Have you thought of using tools to break the rocks?","opt3a"},
  }
}
bex_delata:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "Who was Marka Ragnos?  You come to Moraband and you don't even know who Marka Ragnos was?",
  stopConversation = "false",
  options = {
    {"No, I don't.","opt1b"},
  }
}
bex_delata:addScreen(opt1a);

opt1b = ConvoScreen:new {
  id = "opt1b",
  leftDialog = "",
  customDialogText = "Marka Ragnos was perhaps the greatest Dark Lord of the Sith to ever live.  He reigned at a time when the ancient Sith Empire was at it's absolute pinnacle of power and prosperity.",
  stopConversation = "false",
  options = {
    {"What do you hope to find inside this tomb?","opt1c"},  -- Continue here.
  }
}
bex_delata:addScreen(opt1b);
-- Diverging Path 2
opt3a = ConvoScreen:new {
  id = "opt3a",
  leftDialog = "",
   customDialogText = "No, I thought I might use the force to lift these boulders.  Of course I plan to use tools, I am taking scans of the entrance to be sure it won't collapse further if I remove the rocks.",  -- Bookmark
  stopConversation = "false",
  options = {   
    {"What do you hope to find inside the tomb?","opt1a"},   
  }
}
bex_delata:addScreen(opt3a);


-- Return
opt1c = ConvoScreen:new {
  id = "opt1c",
  leftDialog = "",
  customDialogText = "Good question.  Perhaps nothing, the tomb is over five thousand years old after all.  It's likely there is nothing left inside but stale air, dust and maybe some bones.",
  stopConversation = "false",
  options = {
    {"That's probably true about most of these tombs.","opt2"},
  }
}
bex_delata:addScreen(opt1c);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "Maybe so, but there hasn't been any documented study of them for centuries, so here we are.",
  stopConversation = "false",
  options = {
     {"I'll leave you to it.  So long.","deny1"},   
  }
}
bex_delata:addScreen(opt2);






addConversationTemplate("bex_delata", bex_delata);
