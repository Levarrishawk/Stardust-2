herald_of_the_prophets = ConvoTemplate:new {
  initialScreen = "herald_of_the_prophets_start",
  templateType = "Lua",
  luaClassHandler = "herald_of_the_prophets_convo_handler",
  screens = {}
}


--Intro First
herald_of_the_prophets_start = ConvoScreen:new {
  id = "herald_of_the_prophets_start",
  leftDialog = "",
  customDialogText = "As anticipated, you have come to Dromund Kaas.  Do not be alarmed, you will not be harmed here. In fact we the Prophets of the Dark Side have been expecting you for quite some time.",
  stopConversation = "false",
  options = {
    {"I am expected?", "opt1"},
    {"Who are the Prophets of the Dark Side?", "opt2"},
    {"I had no idea there was an Imperial Garrison here?", "opt3"},
    {"Nevermind.", "deny1"}
  
  }
}
herald_of_the_prophets:addScreen(herald_of_the_prophets_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Find illumination in darkness.",
  stopConversation = "true",
  options = {
  }
}
herald_of_the_prophets:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "Yes, you are. The Supreme Prophet foresaw your arrival in a vision.",
  stopConversation = "false",
  options = {
    {"The Supreme Prophet?","opt1a"},
  }
}
herald_of_the_prophets:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "The Supreme Prophet is, I suppose you could say is our leader, his name is Kadann, he was once a Jedi but came to Dromund Kaas over two centuries ago and joined our order.",
  stopConversation = "false",
  options = {
    {"What can you tell me about your order?","opt2"},
  }
}
herald_of_the_prophets:addScreen(opt1a);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "That is a long story, one best kept to the Historian of our Order, I am sure my father would love to tell you all about us. In short we were founded a thousand years ago after the final collapse of the Sith Empire.  We have been here on Dromund Kaas ever since.",
  stopConversation = "false",
  options = {
     {"Your father?","cronal1"},
    -- {"But, The Dark Side?  Are you Sith?","opt2a"},
  }
}
herald_of_the_prophets:addScreen(opt2);

cronal1 = ConvoScreen:new {
  id = "cronal1",
  leftDialog = "",
   customDialogText = "My father is called Cronal, He fashions himself a historian.  He's made several journies to the various ruins all over this world to dig up information on the past, and has chronicled the history of the Prophets of the Dark Side as well as anyone could.",
  stopConversation = "false",
  options = {
     {"But, The Dark Side?  Are you Sith?","opt2a"},
  }
}
herald_of_the_prophets:addScreen(cronal1);

opt2a = ConvoScreen:new {
  id = "opt2a",
  leftDialog = "",
   customDialogText = "We are not Sith. Though you could say they are in our Order's Heritage. Again you should talk to Cronal, my father.  He is our order's resident historian of sorts.",
  stopConversation = "false",
  options = {
     {"Where can I find Kadann?","opt2b"},
  }
}
herald_of_the_prophets:addScreen(opt2a);

opt2b = ConvoScreen:new {
  id = "opt2b",
  leftDialog = "",
   customDialogText = "You can find Kadann inside the main building of the Garrison in the Prefect's office in the back of the building on the left.  He is waiting for you I am sure.",
  stopConversation = "false",
  options = {
     {"Alright.  I will speak with him.","opt2c"},
  }
}
herald_of_the_prophets:addScreen(opt2b);

opt2c = ConvoScreen:new {
  id = "opt2c",
  leftDialog = "",
   customDialogText = "May you find illumination in darkness.",
  stopConversation = "true",
  options = {
    -- {"Ah, so this is your reward for fighting for the Rebellion.  House sitting for the Emperor.","opt2d"},
  }
}
herald_of_the_prophets:addScreen(opt2c);

opt3 = ConvoScreen:new {
  id = "opt3",
  leftDialog = "",
   customDialogText = "The troops here are deserters of sorts, which is why we are not hostile to either of the major factions in the Galaxy.  The troops here are loyal to Prophet Kadann and follow his orders only.",
  stopConversation = "false",
  options = {   
    {"What can you tell me about your order?","opt2"},
    {"I see, well I will be on my way.  Good day.", "deny1"},
  }
}
herald_of_the_prophets:addScreen(opt3);




addConversationTemplate("herald_of_the_prophets", herald_of_the_prophets);
