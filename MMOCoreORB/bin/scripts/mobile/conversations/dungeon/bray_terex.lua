bray_terex = ConvoTemplate:new {
  initialScreen = "bray_terex_start",
  templateType = "Lua",
  luaClassHandler = "bray_terex_convo_handler",
  screens = {}
}


--Intro First
bray_terex_start = ConvoScreen:new {
  id = "bray_terex_start",
  leftDialog = "",
  customDialogText = "Oh, a visitor.  Welcome to the Tomb of Naga Sadow, or at least this portion of it.",
  stopConversation = "false",
  options = {
    {"This portion?", "opt1"},
    {"What can you tell me about Naga Sadow?", "opt4"},
  --  {"What's out on the rest of the planet?", "opt5"},
    {"Nevermind.", "deny1"},
  
  }
}
bray_terex:addScreen(bray_terex_start);

-- CONVO ENDER
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "So long.",
  stopConversation = "true",
  options = {
  }
}
bray_terex:addScreen(deny1);
--

--Diverge
--Diverging Path 1

opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "Yes, I am convinced there is another chamber behind this wall, however I have been unsuccessful in finding a way through.",
  stopConversation = "false",
  options = {
    {"Why not blast through?","opt1a"},
    --{"No, why are you so Angry?","opt3a"},
  }
}
bray_terex:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "Are you crazy?  This structure is over five thousand years old, I'd be more likely to collapse the entire thing than just blast through the wall.",
  stopConversation = "false",
  options = {
    {"I see.","opt1b"},
  }
}
bray_terex:addScreen(opt1a);

opt1b = ConvoScreen:new {
  id = "opt1b",
  leftDialog = "",
  customDialogText = "Is there something else you wanted?",
  stopConversation = "false",
  options = {
    {"What can you tell me about Naga Sadow?","opt4"},
    {"No, thanks.", "deny1"},  -- Continue here.
  }
}
bray_terex:addScreen(opt1b);

opt4 = ConvoScreen:new {
  id = "opt4",
  leftDialog = "",
   customDialogText = "He was the Dark Lord of the Sith who took power immediately after the death of Marka Ragnos, and oversaw the Empire during the Great Hyperspace War.",  -- Bookmark
  stopConversation = "false",
  options = {   
    {"The Great Hyperspace War?","opt3a"},   
  }
}
bray_terex:addScreen(opt4);
-- Diverging Path 2
opt3a = ConvoScreen:new {
  id = "opt3a",
  leftDialog = "",
   customDialogText = "Yes, it all started when a pair of explorers from the Old Republic made contact with the Sith Empire upon landing on Korriban.",  -- Bookmark
  stopConversation = "false",
  options = {   
    {"I presume they didn't receive a warm welcome.","opt1c"},   
  }
}
bray_terex:addScreen(opt3a);


-- Return
opt1c = ConvoScreen:new {
  id = "opt1c",
  leftDialog = "",
  customDialogText = "Of course not, they were immediately captured and brought to the world Ziost, which was the capitol of the Sith Empire at the time.  Soon after the Sith invaded the Republic.",
  stopConversation = "false",
  options = {
    {"What happened next?","opt2"},
  }
}
bray_terex:addScreen(opt1c);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "Well, the empire made great advances into the core worlds, even attacking Coruscant itself.  The Sith Armies fought right up to the steps of the Senate until they were finally pushed back.",
  stopConversation = "false",
  options = {
    {"If they were so close to victory what happened?","opt5"},   
  }
}
bray_terex:addScreen(opt2);

opt5 = ConvoScreen:new {
  id = "opt5",
  leftDialog = "",
   customDialogText = "It's part of the reason that we know Naga Sadow was never buried in this tomb.  He was a master of a technique called Battle Meditation, and he possessed a ship and device combined that enhanced his meditation and he used it to bolster the armies of the empire all over the galaxy.  Until a Jedi strike force destroyed it.",
  stopConversation = "false",
  options = {
    {"If Naga Sadow isn't buried here, where is he?","opt6"},   
  }
}
bray_terex:addScreen(opt5);

opt6 = ConvoScreen:new {
  id = "opt6",
  leftDialog = "",
   customDialogText = "It was believed that he fled to Yavin 4, and killed some 600 years later by a fallen Jedi named Freedon Nadd.  Whether this is true, I don't know. The Archaeological institute hasn't surveyed the Massassi ruins on Yavin, and considering the silence we have been getting from Coruscant lately, I'm not sure we ever will.",
  stopConversation = "false",
  options = {
    {"I see, well thank you for the information.  So long.","deny1"},   
  }
}
bray_terex:addScreen(opt6);

addConversationTemplate("bray_terex", bray_terex);
