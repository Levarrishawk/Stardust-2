chiss_hunter_herald_cave = ConvoTemplate:new {
  initialScreen = "chiss_hunter_herald_cave_start",
  templateType = "Lua",
  luaClassHandler = "chiss_hunter_herald_cave_convo_handler",
  screens = {}
}


--Intro First
chiss_hunter_herald_cave_start = ConvoScreen:new {
  id = "chiss_hunter_herald_cave_start",
  leftDialog = "",
  customDialogText = "How in the hell did you get down here?  How did you find us?",
  stopConversation = "false",
  options = {
    {"Dresk send me to find you, are you alright?", "opt1"},
    --{"Find someone else to, I'm busy right now.", "deny1"}
  
  }
}
chiss_hunter_herald_cave:addScreen(chiss_hunter_herald_cave_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Alright, Good luck to you.",
  stopConversation = "true",
  options = {
  }
}
chiss_hunter_herald_cave:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "Dresk sent you? I suppose thanks are in order, we were somewhat pinned down by these Gundarks, when we tracked them here I had no idea we would run into so many of them.",
  stopConversation = "false",
  options = {
    {"Bit off a bit more than you could chew?","opt1a"},
  }
}
chiss_hunter_herald_cave:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "That's a bit of an understatement, anyways... You handled yourself pretty well getting here.  I know a place where you can find far more interesting game.  Ever hear of Kell Dragons?",
  stopConversation = "false",
  options = {
    {"I've run into a few.","opt1b"},
    {"No.", "opt2"},
  }
}
chiss_hunter_herald_cave:addScreen(opt1a);

opt1b = ConvoScreen:new {
  id = "opt1b",
  leftDialog = "",
  customDialogText = "Well then, I know where the local population has made it's lair, interested?",
  stopConversation = "false",
  options = {
    {"Sure, where is it?","wp1"},
    {"Sounds dangerous", "deny1"},
  }
}
chiss_hunter_herald_cave:addScreen(opt1b);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
  customDialogText = "Imagine the biggest lizard you can think of, then imagine one with teeth the size of that lizard.",
  stopConversation = "false",
  options = {
    {"Why in the blazes would anyone want to hunt one of those?","opt2a"},
  }
}
chiss_hunter_herald_cave:addScreen(opt2);

opt2a = ConvoScreen:new {
  id = "opt2a",
  leftDialog = "",
  customDialogText = "They create naturally occuring pearls within their Gizzards to assist in digestion.  The pearls fetch a hefty price to the right buyer, and I just happen to know where the local population of them roosts.  Interested?",
  stopConversation = "false",
  options = {
    {"Sure, where is it?","wp1"},
  }
}
chiss_hunter_herald_cave:addScreen(opt2a);

wp1 = ConvoScreen:new {
  id = "wp1",
  leftDialog = "",
  customDialogText = "The cave is far to the northwest, beyond the old city ruins.  Here, let me upload the coordinates to your datapad.",
  stopConversation = "false",
  options = {
    {"Alright, I'll check it out sometime.","deny1"},
  }
}
chiss_hunter_herald_cave:addScreen(wp1);

addConversationTemplate("chiss_hunter_herald_cave", chiss_hunter_herald_cave);
