chandriltech_greeter = ConvoTemplate:new {
  initialScreen = "chandriltech_greeter_start",
  templateType = "Lua",
  luaClassHandler = "chandriltech_greeter_convo_handler",
  screens = {}
}


--Intro First
chandriltech_greeter_start = ConvoScreen:new {
  id = "chandriltech_greeter_start",
  leftDialog = "",
  customDialogText = "Welcome to Chandriltech, where imagination meets innovation!  How can I help you?",
  stopConversation = "false",
  options = {
    {"What is Chandriltech?", "opt1"},
    {"I would like a tour of the facility.", "opt2"},
    {"What if I just walked right past you?", "opt3"},
    {"Nothing right now, thanks.", "deny1"}
  
  }
}
chandriltech_greeter:addScreen(chandriltech_greeter_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Alright, have a good day!",
  stopConversation = "true",
  options = {
  }
}
chandriltech_greeter:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "Chandriltech is the largest technology firm on Chandrila, we have for the past 30 years specialized in the greatest advancements in handheld sensors, and a vast variety of Droid components.  Why I'd wager you carry around one of our Datapads in your pocket.   Yep, that's the one.  The ChandrilTech 3700 series personal Datapad, with 100 slots for Waypoint and Miscellaneous Data Storage.  It's our most best selling electronic devices of all time!",
  stopConversation = "false",
  options = {
    {"I would like a tour of the facility.","opt2"},
    {"What if I just walked right past you?", "opt3"},
    --{"No thanks, not right now.", "deny1"}
  }
}
chandriltech_greeter:addScreen(opt1);


opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "I'm sorry, this facility is accessible only to authorized Chandriltech employees.  Our security staff is very insistent of this, orders from the very top of the company.  I'm not even allowed down on the third level.",
  stopConversation = "false",
  options = {
     {"What's on the third level?","opt2a"},
  }
}
chandriltech_greeter:addScreen(opt2);

opt2a = ConvoScreen:new {
  id = "opt2a",
  leftDialog = "",
   customDialogText = "That would be the main production floor.  Access to it has been restricted for the past eight months.",
  stopConversation = "false",
  options = {
     {"What if I just walked right past you?", "opt3"},
  }
}
chandriltech_greeter:addScreen(opt2a);


opt3 = ConvoScreen:new {
  id = "opt3",
  leftDialog = "",
   customDialogText = "I would have to engage the intrusion alarm, and I am afraid our security staff has orders to shoot to kill.",
  stopConversation = "false",
  options = {
    --{"What is Protocol-77.","opt1"},
    --{"What is the purpose of this facility?","opt2"},
    {"Have a good day then.", "deny1"}
  }
}
chandriltech_greeter:addScreen(opt3);




addConversationTemplate("chandriltech_greeter", chandriltech_greeter);
