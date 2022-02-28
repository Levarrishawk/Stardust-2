reltha_aiden = ConvoTemplate:new {
  initialScreen = "reltha_aiden_start",
  templateType = "Lua",
  luaClassHandler = "reltha_aiden_convo_handler",
  screens = {}
}


--Intro First
reltha_aiden_start = ConvoScreen:new {
  id = "reltha_aiden_start",
  leftDialog = "",
  customDialogText = "Well now, a visitor. Come to seek glory and fortune amongst these ancient ruins?",
  stopConversation = "false",
  options = {
    {"What is this building?  It doesn't look as old as the others in the valley.", "opt1"},
  --  {"Tell me about Moraband.", "opt2"},
  --  {"What's out on the rest of the planet?", "opt5"},
    {"Nevermind.", "deny1"},
  
  }
}
reltha_aiden:addScreen(reltha_aiden_start);

-- CONVO ENDER
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "So long.",
  stopConversation = "true",
  options = {
  }
}
reltha_aiden:addScreen(deny1);
--

--Diverge
--Diverging Path 1

opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "You have a good eye.  You're right about that. This is the Tomb of Darth Bane, built just a thousand years ago.  The rest of the buildings here are all thousands of years older.  Do you know who Darth Bane was?",
  stopConversation = "false",
  options = {
    {"More well than you know.","opt1a"},
    {"No, who was he?","opt3a"},
  }
}
reltha_aiden:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "I'm not sure what you are implying, and I probably don't want to know either.",
  stopConversation = "false",
  options = {
    {"That would probably be for the best.","opt1b"},
  }
}
reltha_aiden:addScreen(opt1a);

opt1b = ConvoScreen:new {
  id = "opt1b",
  leftDialog = "",
  customDialogText = "Perhaps so.   You have to wonder though, are they truly gone?  The Sith that is.  It was believed that Count Dooku was a Sith Lord in the Clone Wars, but that could have just been another Jedi Lie.  While it is established that Darth Bane truly did exist, what isn't clear is if any other Sith did actually exist after Lord Kaan's defeat.",
  stopConversation = "false",
  options = {
    {"Lord Kaan?","opt1c"},  -- Continue here.
  }
}
reltha_aiden:addScreen(opt1b);
-- Diverging Path 2
opt3a = ConvoScreen:new {
  id = "opt3a",
  leftDialog = "",
   customDialogText = "Darth Bane was one of the last Dark Lords of the Sith standing at the end of the long war between the Old Republic and the Sith Empire. He instituted what was known as the Rule of Two, and killed any remaining Sith Lords so that all remained was himself and his Apprentice.",  -- Bookmark
  stopConversation = "false",
  options = {   
    {"Why would he turn on the other Sith?","opt3b"},   
  }
}
reltha_aiden:addScreen(opt3a);

opt3b = ConvoScreen:new {
  id = "opt3b",
  leftDialog = "",
   customDialogText = "He believed the in-fighting within Sith Society was a key reason for their defeat, and that to be truly strong there could be no competition, only a master to wield the power and an apprentice to crave it.  Essentially the opposite of Lord Kaan and his Brotherhood of the Sith believed.",
  stopConversation = "false",
  options = {   
    {"Lord Kaan?","opt1c"},   
  }
}
reltha_aiden:addScreen(opt3b);
-- Return
opt1c = ConvoScreen:new {
  id = "opt1c",
  leftDialog = "",
  customDialogText = "Yes, Lord Kaan, he was the leader of the Dark Council of the Brotherhood of the Sith in the last days of the old Sith Empire.  They fought a long and protracted war against the Jedi and the Old Republic but were eventually defeated, although one can't really say it was by anything other than sheer dumb luck.",
  stopConversation = "false",
  options = {
    {"Why do you say that?","opt2"},
  }
}
reltha_aiden:addScreen(opt1c);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "Well, Lord Kaan attempted to lure the Republic into a trap in order to destroy the bulk of their forces in one stroke, namely those of the Jedi.  They did so by luring them to a planet called Ruusan somewhere in the Mid-Rim, or so that is what the stories say.  For some reason the planet does not reside in any chart, even the Charts in the Jedi Templ.. I mean Imperial Palace do not contain any planet or system of that name.",
  stopConversation = "false",
  options = {
     {"Are you saying the Jedi deleted it from their archives?","opt2a"},   
  }
}
reltha_aiden:addScreen(opt2);


opt2a = ConvoScreen:new {
  id = "opt2a",
  leftDialog = "",
   customDialogText = "That is what we believe, yes.  What they would have been trying to conceal there, I do not know.  I can tell you this, there was one fellow from the Inquisition that was obsessed with Ruusan, and was quite desperate in locating it.   Jerec was his name.",
  stopConversation = "false",
  options = {
     {"So, what exactly happened to Lord Kaan?","opt2b"},
  }
}
reltha_aiden:addScreen(opt2a);

opt2b = ConvoScreen:new {
  id = "opt2b",
  leftDialog = "",
   customDialogText = "Well, if the stories are true Lord Kaan attempted to perform an ancient ritual that Darth Bane had discovered, one which supposedly once granted the Sith Emperor Vitiate immortality.",
  stopConversation = "false",
  options = {
     {"Immortality?","opt2c"},
  }
}
reltha_aiden:addScreen(opt2b);

opt2c = ConvoScreen:new {
  id = "opt2c",
  leftDialog = "",
   customDialogText = "I know, it sounds far fetched.   Anyways, Lord Kaan was either given the details about the ritual wrong, or got something about it wrong.  The power that he and his fellow sith were channelling simply detonated, killing every every force sensitive being on the planet.  The ritual became known as the Thought Bomb.",
  stopConversation = "false",
  options = {
     {"That's quite a bomb, but why would the Jedi have hidden the planet?","opt3"},
  }
}
reltha_aiden:addScreen(opt2c);

opt3 = ConvoScreen:new {
  id = "opt3",
  leftDialog = "",
   customDialogText = "Good question, perhaps one day we will have an answer to it too.",
  stopConversation = "false",
  options = {   
    {"So is Darth Bane really buried in this tomb?","opt4"},   
  }
}
reltha_aiden:addScreen(opt3);

opt4 = ConvoScreen:new {
  id = "opt4",
  leftDialog = "",
   customDialogText = "Well, there is a corpse in the sarcophogus in the lowest level of the Tomb, scans have shown that much. Whether it is actually the corpse of Bane, who knows.",
  stopConversation = "false",
  options = {   
    {"I see.  Well thank you for the info.","deny1"},   
  }
}
reltha_aiden:addScreen(opt4);



addConversationTemplate("reltha_aiden", reltha_aiden);
