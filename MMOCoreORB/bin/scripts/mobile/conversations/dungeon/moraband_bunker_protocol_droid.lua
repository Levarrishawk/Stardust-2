moraband_bunker_protocol_droid = ConvoTemplate:new {
  initialScreen = "moraband_bunker_protocol_droid_start",
  templateType = "Lua",
  luaClassHandler = "moraband_bunker_protocol_droid_convo_handler",
  screens = {}
}


--Intro First
moraband_bunker_protocol_droid_start = ConvoScreen:new {
  id = "moraband_bunker_protocol_droid_start",
  leftDialog = "",
  customDialogText = "Greetings, I am CT-212.  Maintenance Administrative droid for this facility.  Please be advised that according to Title 187 Subsection 1129 Paragraph 3 of Imperial Law this facility is under the jurisdiction of the Inquisitorius, all activities within the facility are monitored at all times.",
  stopConversation = "false",
  options = {
    {"What can you tell me about this facility?", "opt1"},   
    {"Nevermind.", "deny1"},
  
  }
}
moraband_bunker_protocol_droid:addScreen(moraband_bunker_protocol_droid_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Very well, have a nice day.",
  stopConversation = "true",
  options = {
  }
}
moraband_bunker_protocol_droid:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "This facility is known as Detention and Correction Center 88-D.  Operated under the purview of the Inquisitorius.  The facility is currently inactive in it's primary function and serving it's secondary capacity.",
  stopConversation = "false",
  options = {
    {"What secondary Capacity?","opt1a"},   
  }
}
moraband_bunker_protocol_droid:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "The Secondary capcity of this facility is for the Storage and Cataloguing of Archaeological finds.  Current Storage Capacity is at 37 Percent.",
  stopConversation = "false",
  options = {
    {"I see.  Why are there no Imperial Personnel manning this Facility?","opt1b"},
  }
}
moraband_bunker_protocol_droid:addScreen(opt1a);

opt1b = ConvoScreen:new {
  id = "opt1b",
  leftDialog = "",
  customDialogText = "Pardon me, but I, and every other droid here are Imperial Personnel.",
  stopConversation = "false",
  options = {
    {"I meant organic beings, not droids.","opt1c"},
  }
}
moraband_bunker_protocol_droid:addScreen(opt1b);

opt1c = ConvoScreen:new {
  id = "opt1c",
  leftDialog = "",
  customDialogText = "All organic Imperial Personnel were ordered to withdraw 11 months, 27 days, 3 hours, 47 seconds ago by order of Fleet Admiral Gallius Rax.  The facility has been in an automated state ever since.",
  stopConversation = "false",
  options = {
    {"I see, well I will just have a look around and be on my way.","deny1"},
  }
}
moraband_bunker_protocol_droid:addScreen(opt1c);

addConversationTemplate("moraband_bunker_protocol_droid", moraband_bunker_protocol_droid);
