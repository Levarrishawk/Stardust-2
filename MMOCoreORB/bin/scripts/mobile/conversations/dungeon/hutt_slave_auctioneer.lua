hutt_slave_auctioneer = ConvoTemplate:new {
  initialScreen = "hutt_slave_auctioneer_start",
  templateType = "Lua",
  luaClassHandler = "hutt_slave_auctioneer_convo_handler",
  screens = {}
}


--Intro First
hutt_slave_auctioneer_start = ConvoScreen:new {
  id = "hutt_slave_auctioneer_start",
  leftDialog = "",
  customDialogText = "Oh, you look like a person who knows a great investment when you see one.   These here Twi'leks are some of the finest stock recently... recruited from Ryloth.  Capable, and willing to serve any and all of your needs!",
  stopConversation = "false",
  options = {
    {"I thought slavery was illegal.", "opt1"},
    {"What sort of services do they perform?", "opt2"},
    --{"Uhh, thank you?", "opt3"},
    {"Nevermind.", "deny1"}
  
  }
}
hutt_slave_auctioneer:addScreen(hutt_slave_auctioneer_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Koochoo.",
  stopConversation = "true",
  options = {
  }
}
hutt_slave_auctioneer:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "Illegal in the New Republic, but this isn't the New Republic now is it and the Empire looks the other way when it comes to our business.  Even if you were to take any of these even to Chandrila, I guarantee you no Republic authority would even be able to tell.",
  stopConversation = "false",
  options = {
    {"How is that possible?","opt1a"},
    --{"No.","deny1"},
  }
}
hutt_slave_auctioneer:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "Why, that's easy! In the years since the Old Republic enacted anti-slavery laws banning the use of Slave Collars, we simply implant our stock with subcutaneous devices which ensure their compliance.",
  stopConversation = "false",
  options = {
    {"How do they ensure compliance?","opt1b"},
  }
}
hutt_slave_auctioneer:addScreen(opt1a);

opt1b = ConvoScreen:new {
  id = "opt1b",
  leftDialog = "",
  customDialogText = "If you were to become the proud owner of one of these fine specimens we would give you a device which would allow you to activate the implant which causes extreme pain to the subject.   If they try to escape the implant also serves as a tracking beacon, and in case of extreme circumstances can issue a lethal discharge that will with some pain terminate the subject.",
  stopConversation = "false",
  options = {
    {"Wouldn't that leave evidence?","opt1c"},
  }
}
hutt_slave_auctioneer:addScreen(opt1b);

opt1c = ConvoScreen:new {
  id = "opt1c",
  leftDialog = "",
  customDialogText = "That's the best part. Should you be required to terminate the subject the implant breaks down and dissolves into their system within minutes.  Long before any forensic examination can take place.",
  stopConversation = "false",
  options = {
    {"Sounds brutal.","deny1"},
  }
}
hutt_slave_auctioneer:addScreen(opt1c);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "Anything you require. Cooking, cleaning, they will dance for you, perform a variety of laborious tasks, or if you are the sort.. Some of them will perform more, intimate tasks.",
  stopConversation = "false",
  options = {
     {"How vulgar.","deny1"},
  }
}
hutt_slave_auctioneer:addScreen(opt2);

opt2a = ConvoScreen:new {
  id = "opt2a",
  leftDialog = "",
   customDialogText = "Well I have, and let me tell you how, and when.  I remember it like it was yesterday. You see, it was just before the Clone Wars broke out...",
  stopConversation = "false",
  options = {
     {"Is this story going to take long?","opt2b"},
  }
}
hutt_slave_auctioneer:addScreen(opt2a);

opt2b = ConvoScreen:new {
  id = "opt2b",
  leftDialog = "",
   customDialogText = "I was selling Death Sticks, right here in this bar.  Was having a profitable night too.  I see this long haired Human sitting at the bar, I think he was drinking Jawa Juice...",
  stopConversation = "false",
  options = {
     {"Fascinating...","opt2c"},
  }
}
hutt_slave_auctioneer:addScreen(opt2b);

opt2c = ConvoScreen:new {
  id = "opt2c",
  leftDialog = "",
   customDialogText = "I went up to the guy, and asked him if he wanted to buy some Death Sticks.",
  stopConversation = "false",
  options = {
     {"What did he say?","opt2d"},
  }
}
hutt_slave_auctioneer:addScreen(opt2c);

opt2d = ConvoScreen:new {
  id = "opt2d",
  leftDialog = "",
   customDialogText = "Well, he didn't even look at me. But he said that I didn't want to sell him Death Sticks, and something about the way he said it was so clear.  He was right, I didn't want to sell him Death Sticks at all...",
  stopConversation = "false",
  options = {
     {"Is that all?","opt2e"},
  }
}
hutt_slave_auctioneer:addScreen(opt2d);

opt2e = ConvoScreen:new {
  id = "opt2e",
  leftDialog = "",
   customDialogText = "With just a couple words he made me realize I didn't want to do what I was doing, but that wasn't the end of it!  I felt like I had to repeat after him like he was some kind of life coach so I said it aloud that I didn't want to sell him Death Sticks.",
  stopConversation = "false",
  options = {
     {"Oh please, tell me more.....","opt2f"},
  }
}
hutt_slave_auctioneer:addScreen(opt2e);

opt2f = ConvoScreen:new {
  id = "opt2f",
  leftDialog = "",
   customDialogText = "Then he said that I wanted to go home and re-think my life, and right there in that moment everything changed for me.  I never got the guy's name, never saw him again either.  From that moment I completely transformed my life, now I spend my days handing out brochures, pamphlets and educating people on the dangers of Death Stick Addiction.",
  stopConversation = "false",
  options = {
    {"So, do you have any Death Sticks for sale?","opt3"},
  }
}
hutt_slave_auctioneer:addScreen(opt2f);

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
hutt_slave_auctioneer:addScreen(opt2g);

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
hutt_slave_auctioneer:addScreen(opt3);




addConversationTemplate("hutt_slave_auctioneer", hutt_slave_auctioneer);
