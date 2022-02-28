warren_information_officer = ConvoTemplate:new {
  initialScreen = "warren_information_officer_start",
  templateType = "Lua",
  luaClassHandler = "warren_information_officer_convo_handler",
  screens = {}
}


--Intro First
warren_information_officer_start = ConvoScreen:new {
  id = "warren_information_officer_start",
  leftDialog = "",
  customDialogText = "You aren't authorized in this area. I'm going to have to ask you to leave.",
  stopConversation = "false",
  options = {
    {"What is this place?", "opt1"},
   -- {"What can you tell me about this estate?", "opt2"},
    --{"Why would the Republic want to keep this building even standing?", "opt3"},
    {"Sorry, I took a wrong turn.. Good Bye!", "deny1"}
  
  }
}
warren_information_officer:addScreen(warren_information_officer_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Move along!",
  stopConversation = "true",
  options = {
  }
}
warren_information_officer:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "This used to be an Imperial Research Facility known as The Warren.  By order of Admiral Ackbar the facility has been quarantined and placed under guard.  Entry is not permitted.",
  stopConversation = "false",
  options = {
    {"I see.  What was the Empire doing here on Dantooine?","opt1a"},
  }
}
warren_information_officer:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "The Empire was conducting illegal experiments into cybernetics in this facility.  A few years ago there was an incident involving Cyborgs and some rogue Imperial Colonel..  Teraud I think his name was.",
  stopConversation = "false",
  options = {
    {"An incident?  Can't you be more specific?","opt2"},
  }
}
warren_information_officer:addScreen(opt1a);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "No, citizen I can not.  Now kindly move along.",
  stopConversation = "false",
  options = {
     {"Alright.  I'll be on my way then.","deny1"},
  }
}
warren_information_officer:addScreen(opt2);






addConversationTemplate("warren_information_officer", warren_information_officer);
