swoop_race_hutt = ConvoTemplate:new {
  initialScreen = "swoop_race_hutt_start",
  templateType = "Lua",
  luaClassHandler = "swoop_race_hutt_convo_handler",
  screens = {}
}


--Intro First
swoop_race_hutt_start = ConvoScreen:new {
  id = "swoop_race_hutt_start",
  leftDialog = "",
  customDialogText = "H'chu Apenkee ootmian tah bu choppa chawa. Chuba vopa buttmalia?",
  stopConversation = "false",
  options = {
    {"I'm sorry I don't speak Huttese.", "opt1"},
    {"Talk in basic you overgrown slug.", "opt2"},
    --{"Uhh, thank you?", "opt3"},
    {"Nevermind.", "deny1"}
  
  }
}
swoop_race_hutt:addScreen(swoop_race_hutt_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Koochoo.",
  stopConversation = "true",
  options = {
  }
}
swoop_race_hutt:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "I said Hello, Welcome to the Swoop Races, Do you want to place a wager on the next race?",
  stopConversation = "false",
  options = {
    {"Who are the groups racing?","opt1a"},
    {"No.","deny1"},
  }
}
swoop_race_hutt:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "It would be between two local swooper gangs, both named for proud and ancient teams of a sport that was once played called Huttball.",
  stopConversation = "false",
  options = {
    {"Huttball?  Never heard of it.","opt1b"},
  }
}
swoop_race_hutt:addScreen(opt1a);

opt1b = ConvoScreen:new {
  id = "opt1b",
  leftDialog = "",
  customDialogText = "It was outlawed by the Empire when the Hutt Cartel lost control of our homeworld, with the Empire seemingly falling apart however I wouldn't be surprised if it makes a comeback.",
  stopConversation = "false",
  options = {
    {"Why would the Empire outlaw it?","opt1c"},
  }
}
swoop_race_hutt:addScreen(opt1b);

opt1c = ConvoScreen:new {
  id = "opt1c",
  leftDialog = "",
  customDialogText = "Probably because the sport was spectacularly bloody, many of the athletes would die in the midst of a game.  All of which were not willing participants either.",
  stopConversation = "false",
  options = {
    {"Sounds brutal.","deny1"},
  }
}
swoop_race_hutt:addScreen(opt1c);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "Ta beesga tah battu battu je se nee choo. Hagwa battu battu je koochoo.",
  stopConversation = "false",
  options = {
     {"Stupid Hutt.","deny1"},
  }
}
swoop_race_hutt:addScreen(opt2);

opt2a = ConvoScreen:new {
  id = "opt2a",
  leftDialog = "",
   customDialogText = "Well I have, and let me tell you how, and when.  I remember it like it was yesterday. You see, it was just before the Clone Wars broke out...",
  stopConversation = "false",
  options = {
     {"Is this story going to take long?","opt2b"},
  }
}
swoop_race_hutt:addScreen(opt2a);

opt2b = ConvoScreen:new {
  id = "opt2b",
  leftDialog = "",
   customDialogText = "I was selling Death Sticks, right here in this bar.  Was having a profitable night too.  I see this long haired Human sitting at the bar, I think he was drinking Jawa Juice...",
  stopConversation = "false",
  options = {
     {"Fascinating...","opt2c"},
  }
}
swoop_race_hutt:addScreen(opt2b);

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
swoop_race_hutt:addScreen(opt2f);

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
swoop_race_hutt:addScreen(opt2g);

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
swoop_race_hutt:addScreen(opt3);




addConversationTemplate("swoop_race_hutt", swoop_race_hutt);
