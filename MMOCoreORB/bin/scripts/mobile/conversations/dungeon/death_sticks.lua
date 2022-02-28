death_sticks = ConvoTemplate:new {
  initialScreen = "death_sticks_start",
  templateType = "Lua",
  luaClassHandler = "death_sticks_convo_handler",
  screens = {}
}


--Intro First
death_sticks_start = ConvoScreen:new {
  id = "death_sticks_start",
  leftDialog = "",
  customDialogText = "You want to hear some important information about the dangers of Death Sticks?",
  stopConversation = "false",
  options = {
    {"I'm not even sure what a Death Stick is, what are they?", "opt1"},
    {"Something is not right here, how exactly did you get into doing this?", "opt2"},
    {"Death Sticks, do you have any for sale?", "opt3"},
    {"Eat poodoo.", "deny1"}
  
  }
}
death_sticks:addScreen(death_sticks_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "I will, have a good day.",
  stopConversation = "true",
  options = {
  }
}
death_sticks:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "A very good question.  You see, Death Sticks are one of the most addictive substances in the known galaxy, but have a nasty reputation of being lethal.",
  stopConversation = "false",
  options = {
    {"Why the blazes would anyone want to use them then?","opt1a"},
  }
}
death_sticks:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "Well, they can be mildly hallucinogenic producing vivid visions to it's users and a state of euphoria.  They were very popular when I was a younger man before the Clone Wars.  In fact I used to sell them, right here in this club.",
  stopConversation = "false",
  options = {
    {"You used to sell Death Sticks? How then did you start doing this?","opt2"},
  }
}
death_sticks:addScreen(opt1a);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "Let me ask you, have you ever had an epiphony?  A moment of such total clarity that blows your mind?",
  stopConversation = "false",
  options = {
     {"I can't say that I have, no.","opt2a"},
  }
}
death_sticks:addScreen(opt2);

opt2a = ConvoScreen:new {
  id = "opt2a",
  leftDialog = "",
   customDialogText = "Well I have, and let me tell you how, and when.  I remember it like it was yesterday. You see, it was just before the Clone Wars broke out...",
  stopConversation = "false",
  options = {
     {"Is this story going to take long?","opt2b"},
  }
}
death_sticks:addScreen(opt2a);

opt2b = ConvoScreen:new {
  id = "opt2b",
  leftDialog = "",
   customDialogText = "I was selling Death Sticks, right here in this bar.  Was having a profitable night too.  I see this long haired Human sitting at the bar, I think he was drinking Jawa Juice...",
  stopConversation = "false",
  options = {
     {"Fascinating...","opt2c"},
  }
}
death_sticks:addScreen(opt2b);

opt2c = ConvoScreen:new {
  id = "opt2c",
  leftDialog = "",
   customDialogText = "I went up to the guy, and asked him if he wanted to buy some Death Sticks.",
  stopConversation = "false",
  options = {
     {"What did he say?","opt2d"},
  }
}
death_sticks:addScreen(opt2c);

opt2d = ConvoScreen:new {
  id = "opt2d",
  leftDialog = "",
   customDialogText = "Well, he didn't even look at me. But he said that I didn't want to sell him Death Sticks, and something about the way he said it was so clear.  He was right, I didn't want to sell him Death Sticks at all...",
  stopConversation = "false",
  options = {
     {"Is that all?","opt2e"},
  }
}
death_sticks:addScreen(opt2d);

opt2e = ConvoScreen:new {
  id = "opt2e",
  leftDialog = "",
   customDialogText = "With just a couple words he made me realize I didn't want to do what I was doing, but that wasn't the end of it!  I felt like I had to repeat after him like he was some kind of life coach so I said it aloud that I didn't want to sell him Death Sticks.",
  stopConversation = "false",
  options = {
     {"Oh please, tell me more.....","opt2f"},
  }
}
death_sticks:addScreen(opt2e);

opt2f = ConvoScreen:new {
  id = "opt2f",
  leftDialog = "",
   customDialogText = "Then he said that I wanted to go home and re-think my life, and right there in that moment everything changed for me.  I never got the guy's name, never saw him again either.  From that moment I completely transformed my life, now I spend my days handing out brochures, pamphlets and educating people on the dangers of Death Stick Addiction.",
  stopConversation = "false",
  options = {
    {"So, do you have any Death Sticks for sale?","opt3"},
  }
}
death_sticks:addScreen(opt2f);

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
death_sticks:addScreen(opt2g);

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
death_sticks:addScreen(opt3);




addConversationTemplate("death_sticks", death_sticks);
