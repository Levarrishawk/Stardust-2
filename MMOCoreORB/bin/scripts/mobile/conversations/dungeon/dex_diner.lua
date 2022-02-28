dex_diner = ConvoTemplate:new {
  initialScreen = "dex_diner_start",
  templateType = "Lua",
  luaClassHandler = "dex_diner_convo_handler",
  screens = {}
}


--Intro First
dex_diner_start = ConvoScreen:new {
  id = "dex_diner_start",
  leftDialog = "",
  customDialogText = "Hey there! Welcome to Dex's Diner, I'm the owner, Hermione.  What can I get ya?",
  stopConversation = "false",
  options = {
    {"If your name is Hermione, why is it called Dex's Diner?", "opt1"},
    {"What looks good today?", "opt2"},
   -- {"Death Sticks, do you have any for sale?", "opt3"},
    {"No thanks, not right now.", "deny1"}
  
  }
}
dex_diner:addScreen(dex_diner_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Alright, have a good day!",
  stopConversation = "true",
  options = {
  }
}
dex_diner:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "The diner takes it's name from it's previous owner.  Dexter Jettster, the Besalisk that owned it before... well, the Empire.",
  stopConversation = "false",
  options = {
    {"I see, what ever happened to Dex?","opt1a"},
  }
}
dex_diner:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "He dissapeared over twenty years ago.  I don't know if he is alive or not.   Now can I get you something?",
  stopConversation = "false",
  options = {
    {"What looks good today?","opt2"},
  }
}
dex_diner:addScreen(opt1a);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "Our nerf steaks with black hole pepper seasoning today are excellent, does that sound good?",
  stopConversation = "false",
  options = {
     {"I am not really in the mood for nerf meat, anything else?","opt2a"},
  }
}
dex_diner:addScreen(opt2);

opt2a = ConvoScreen:new {
  id = "opt2a",
  leftDialog = "",
   customDialogText = "How about some Gartro Eggs, Sunny side up with a side of Fried Protato Wedges?",
  stopConversation = "false",
  options = {
     {"Too greasy...","opt2b"},
  }
}
dex_diner:addScreen(opt2a);

opt2b = ConvoScreen:new {
  id = "opt2b",
  leftDialog = "",
   customDialogText = "Mongo Beefhead patty sliders perhaps?  Or our Manaan Slider made with 100% natural Firaxan Shark Filet?",
  stopConversation = "false",
  options = {
     {"On second thought I am not hungry, a drink perhaps?","opt2c"},
  }
}
dex_diner:addScreen(opt2b);

opt2c = ConvoScreen:new {
  id = "opt2c",
  leftDialog = "",
   customDialogText = "Fresh Squeezed Jawa Juice?",
  stopConversation = "false",
  options = {
     {"I'm not going to even ask how one freshly squeezes that..","opt2d"},
  }
}
dex_diner:addScreen(opt2c);

opt2d = ConvoScreen:new {
  id = "opt2d",
  leftDialog = "",
   customDialogText = "How about some Juri Juice, ours comes with twice the normal amount of Rodian Blood!",
  stopConversation = "false",
  options = {
     {"How barbaric...","opt2e"},
  }
}
dex_diner:addScreen(opt2d);

opt2e = ConvoScreen:new {
  id = "opt2e",
  leftDialog = "",
   customDialogText = "Some Blue Milk then?",
  stopConversation = "false",
  options = {
     {"Come to think of it I am not really thirsty either.","opt2f"},
  }
}
dex_diner:addScreen(opt2e);

opt2f = ConvoScreen:new {
  id = "opt2f",
  leftDialog = "",
   customDialogText = "Alright well, we don't have room for customers that aren't paying.  Out with you!",
  stopConversation = "true",
  options = {
   -- {"So, do you have any Death Sticks for sale?","opt3"},
  }
}
dex_diner:addScreen(opt2f);

opt2g = ConvoScreen:new {
  id = "opt2g",
  leftDialog = "",
   customDialogText = "Hey there! Welcome to Dex's Diner, I'm the owner, Hermione.  What can I get ya?",
  stopConversation = "false",
  options = {
    {"It.","opt1"},
    {"Why would the Empire place so much priority on defending Jakku?","opt3"},
    {"Remain here until security forces arrive to apprehend you.", "deny1"}
  }
}
dex_diner:addScreen(opt2g);

opt3 = ConvoScreen:new {
  id = "opt3",
  leftDialog = "",
   customDialogText = "No, I don't have any Death Sticks.  If I did, I would just put them in the Trash Compactor.  Terrible things they are.",
  stopConversation = "false",
  options = {
    --{"What is Protocol-77.","opt1"},
    --{"What is the purpose of this facility?","opt2"},
    {"Have a good day then.", "deny1"}
  }
}
dex_diner:addScreen(opt3);




addConversationTemplate("dex_diner", dex_diner);
