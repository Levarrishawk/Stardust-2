jar_jar_binks = ConvoTemplate:new {
  initialScreen = "jar_jar_binks_start",
  templateType = "Lua",
  luaClassHandler = "jar_jar_binks_convo_handler",
  screens = {}
}


--Intro First
jar_jar_binks_start = ConvoScreen:new {
  id = "jar_jar_binks_start",
  leftDialog = "",
  customDialogText = "Heyo, meesa Jar Jar Binks.  What you'sa want?",
  stopConversation = "false",
  options = {
    {"You are looking a bit run down on your luck there.", "opt1"},
    {"Not a thing from the likes of you.", "deny1"}
  
  }
}
jar_jar_binks:addScreen(jar_jar_binks_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "How wude!",
  stopConversation = "true",
  options = {
  }
}
jar_jar_binks:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "Ehh, yousa might be saying that. Meesa life full of tragedy.  Or that'sa what Gungans say.   That'sa also what Naboo say.  My no know.",
  stopConversation = "false",
  options = {
    {"Why would they say that about you?","opt1a"},
  }
}
jar_jar_binks:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "Gungans say I help the uh-oh Empire and they send me packing to Naboo city to live, I come here and Desa hisen Naboo tink I help the uh-oh Empire too.  My no know help no Empire.",
  stopConversation = "false",
  options = {
    {"How would you have helped the Empire?","opt1b"},
   -- {"Find someone else to, I'm busy right now.", "deny1"}
  }
}
jar_jar_binks:addScreen(opt1a);

opt1b = ConvoScreen:new {
  id = "opt1b",
  leftDialog = "",
  customDialogText = "Long time past Meesa Bombad General in Gungan Grand Army. Weesa fight big Droid Armies and Meesa save whole planet from dem Trade Feders.",
  stopConversation = "false",
  options = {
    {"You mean the Trade Federation?","opt1c"},
  }
}
jar_jar_binks:addScreen(opt1b);

opt1c = ConvoScreen:new {
  id = "opt1c",
  leftDialog = "",
  customDialogText = "That was Meesa say, Trade Feders.  After that Meesa become Representative for whole Naboo planet in big bombad Senate for the Senator Padme Amidalas.",
  stopConversation = "false",
  options = {
    {"You.  You served in the Galactic Senate?","opt1d"},
  }
}
jar_jar_binks:addScreen(opt1c);

opt1d = ConvoScreen:new {
  id = "opt1d",
  leftDialog = "",
  customDialogText = "Uhuh, that why Naboo say I help empire.  They say because my gave the emergency powers to da Supreme Chancellor that my responsible for Clone War and the Empire.",
  stopConversation = "false",
  options = {
    {"Maybe you are responsible.","opt1e"},
  }
}
jar_jar_binks:addScreen(opt1d);

opt1e = ConvoScreen:new {
  id = "opt1e",
  leftDialog = "",
  customDialogText = "My no know.  Meesa clumsy even for Gungan.  Meesa always have been clumsy, but now Meesa just clowning for children. Make enough money to eat, make orphan kids happy too.",
  stopConversation = "false",
  options = {
    {"Sounds like you got what you deserved.","deny1"},
  }
}
jar_jar_binks:addScreen(opt1e);


addConversationTemplate("jar_jar_binks", jar_jar_binks);
