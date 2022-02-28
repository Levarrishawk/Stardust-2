prophet_cronal = ConvoTemplate:new {
  initialScreen = "prophet_cronal_start",
  templateType = "Lua",
  luaClassHandler = "prophet_cronal_convo_handler",
  screens = {}
}


--Intro First
prophet_cronal_start = ConvoScreen:new {
  id = "prophet_cronal_start",
  leftDialog = "",
  customDialogText = "Greetings, I am Cronal. You have questions about this planet?  I may have some of the answers you seek?  Come, tell me what you need to know.",
  stopConversation = "false",
  options = {
    {"I have some historical Questions.", "opt1"},
    {"Tell me about the other groups inhabiting Dromund Kaas.", "opt2"},
    {"Why is the weather here always so dismal?", "storm1"},
    {"Nevermind.", "deny1"}
  
  }
}
prophet_cronal:addScreen(prophet_cronal_start);

prophet_cronal_start2 = ConvoScreen:new {
  id = "prophet_cronal_start2",
  leftDialog = "",
  customDialogText = "Was there something else you wanted to discuss?",
  stopConversation = "false",
  options = {
    {"I have some historical Questions.", "opt1"},
    {"Tell me about the other groups inhabiting Dromund Kaas.", "opt2"},
    {"Why is the weather here always so dismal?", "storm1"},
    {"Nevermind.", "deny1"}
  
  }
}
prophet_cronal:addScreen(prophet_cronal_start2);
--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Find illumination in darkness.",
  stopConversation = "true",
  options = {
  }
}
prophet_cronal:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "What aspects of history do you want to know about?",
  stopConversation = "false",
  options = {
    {"Tell me about the Sith Empire.","opt1a"},
    {"Tell me about the Prophets of the Dark Side","opt1h"},
    {"Tell me about events in recent history on Dromund Kaas.","clone1"}
    --{"Go on.","opt1a"},
  }
}
prophet_cronal:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "Thousands of years ago, there was a schism of the Jedi Order known as the Hundred Year Darkness. Jedi and Dark Jedi fought a war that lasted a century.  In the end the Dark Jedi lost and were banished and settled on the planet Korriban, now known in modern star charts as Moraband.",
  stopConversation = "false",
  options = {
    {"What happened then?","opt1b"},
  }
}
prophet_cronal:addScreen(opt1a);

opt1b = ConvoScreen:new {
  id = "opt1b",
  leftDialog = "",
  customDialogText = "The Dark Jedi encountered the primitive Sith species who were native to the world. The Sith worshipped them as gods and the Dark Jedi became the first Dark Lords of the Sith. For centuries their empire grew completely unknown to the Jedi or the Old Republic. Until they were accidently discovered.",
  stopConversation = "false",
  options = {
    {"Go on.","opt1c"},
  }
}
prophet_cronal:addScreen(opt1b);

opt1c = ConvoScreen:new {
  id = "opt1c",
  leftDialog = "",
  customDialogText = "The Sith Empire emerged from hiding and went to war in an event known as the Great Hyperspace War. Which ended up with a victory by the Republic and the Old Sith Empire Defeated.  Or so the Republic Thought.",
  stopConversation = "false",
  options = {
    {"Obviously that wasn't the end..","opt1d"},
  }
}
prophet_cronal:addScreen(opt1c);

opt1d = ConvoScreen:new {
  id = "opt1d",
  leftDialog = "",
  customDialogText = "Before the war ended a Sith Lord known as Vitiate. Called as many Sith Lords to the world he governed called Medriaas which is now known as Nathema, but it was a trap.  He turned on his fellow Sith and performed a ritual which killed all of them, and all life on his world but granted him immortality.",
  stopConversation = "false",
  options = {
    {"Immortality?","opt1e"},
  }
}
prophet_cronal:addScreen(opt1d);

opt1e = ConvoScreen:new {
  id = "opt1e",
  leftDialog = "",
   customDialogText = "Indeed. With this power he rallied the remaining Sith, declaring himself Emperor and no one dared challenge him out of fear of his maddening power.  He led the remaining Sith into unknown space and came upon Dromund Kaas.  Here he built a new Sith Empire that lasted until its final collapse a millennium ago.",
  stopConversation = "false",
  options = {
     {"If this Sith Emperor was Immortal, what happened to him?","opt1f"},
  }
}
prophet_cronal:addScreen(opt1e);

opt1f = ConvoScreen:new {
  id = "opt1f",
  leftDialog = "",
   customDialogText = "Detailed records are hard to come by. Most of what I have learned is from salvaged datatapes and Much of the data on them is so old that it was badly fragmented.  What I have surmized is that Vitiate was able to transfer his conciousness between bodies.  They were called his Voices, and he had many of them, inside and outside of the Ancient Empire.",
  stopConversation = "false",
  options = {
     {"What happened to them?","opt1g"},
  }
}
prophet_cronal:addScreen(opt1f);

opt1g = ConvoScreen:new {
  id = "opt1g",
  leftDialog = "",
   customDialogText = "One of his last voices known was destroyed by a Jedi Knight during a war with the Old Republic, the last one known was outside of the Sith Empire deep in Wild Space on a planet called Zakuul.  I've not found any further reference to this planet anywhere however, it seems the Ancient Sith were keen to forget it ever existed and purged much about it from it's databanks.",
  stopConversation = "false",
  options = {
     {"Tell me about the Prophets of the Dark Side.","opt1h"}, 
     {"Enough about History.","prophet_cronal_start2"},
  }
}
prophet_cronal:addScreen(opt1g);

opt1h = ConvoScreen:new {
  id = "opt1h",
  leftDialog = "",
   customDialogText = "A thousand years ago, after the final fall of the Sith Empire a Lord of the Sith known as Darth Bane instituted a policy on the Order of the Sith Lords called the Rule of Two.  This mandated that there can only be two Sith Lords in the whole Galaxy.  A Master to wield the power, and an Apprentice to crave the power.",
  stopConversation = "false",
  options = {
     {"Why do that, aren't there strength in numbers?","opt1i"},
  }
}
prophet_cronal:addScreen(opt1h);

opt1i = ConvoScreen:new {
  id = "opt1i",
  leftDialog = "",
   customDialogText = "Normally, yes.  Darth Bane thought that the Sith Empire failed because of the constant in-fighting of the Sith more-so than the many wars against the Jedi and the Republic.",
  stopConversation = "false",
  options = {
     {"That makes sense, what happened next?","opt1j"},
  }
}
prophet_cronal:addScreen(opt1i);

opt1j = ConvoScreen:new {
  id = "opt1j",
  leftDialog = "",
   customDialogText = "Decades after Darth Bane passed the mantle onto his successors.  Darth Millennial, became disillusioned with the Rule of Two and abandoned the Sith way.  Rebelling against his master and barely surviving the encounter he found refuge here on Dromund Kaas.  He was shortly drawn here to the temple this complex was built around by the Empire in more recent years after we were discovered by Palpatine.",
  stopConversation = "false",
  options = {
     {"Why this Temple, what is special about it?","opt1k"},
  }
}
prophet_cronal:addScreen(opt1j);

opt1k = ConvoScreen:new {
  id = "opt1k",
  leftDialog = "",
   customDialogText = "Don't you feel it? Sensitive to the force or not it moves through all living things.  It is built on one of the strongest Nexuses of the Dark Side of the force in the galaxy. It was built thousands of years even before Vitiate rebuilt the Sith Empire here after the Great Hyperspace War.  It is a cold feeling isn't it?  The closer you get to the temple the more the feeling intensifies.",
  stopConversation = "false",
  options = {
     {"I do feel it.  It is a little unsettling.","opt1l"},
  }
}
prophet_cronal:addScreen(opt1k);

opt1l = ConvoScreen:new {
  id = "opt1l",
  leftDialog = "",
   customDialogText = "Yes, yes it is unsettling. But it is the power of this place that allows us to see things that others could never.  The Dark Force is truly strong here, though we do not give into it, nor let it dominate our destinies as it would a Sith.  We peer into the darkness to find illumination, hence our mantra of May you Find Illumination in Darkness.",
  stopConversation = "false",
  options = {
     {"So, what happened next?","opt1m"},
  }
}
prophet_cronal:addScreen(opt1l);

opt1m = ConvoScreen:new {
  id = "opt1m",
  leftDialog = "",
   customDialogText = "Truthfully, not much for the next thousand years we lived here in isolation.  Some of our followers splintered off, seeking answers elsewhere on this world. But for a milennia we were alone until we were discovered by Darth Sidious, known to the Galaxy at large as Emperor Palpatine.",
  stopConversation = "false",
  options = {
     {"What did Palpatine do when he came here?","opt1n"},
  }
}
prophet_cronal:addScreen(opt1m);

opt1n = ConvoScreen:new {
  id = "opt1n",
  leftDialog = "",
   customDialogText = "He met with Prophet Kadann and gave him an ultimatum.  Serve him, or be destroyed.   Kadann accepted and for a time the Prophets were heavily integrated into the deepest confines of the Imperial Hierarchy.  Within the Empire we were known as the Secret Order of the Emperor.",
  stopConversation = "false",
  options = {
     {"Not so secret anymore?","opt1o"},
  }
}
prophet_cronal:addScreen(opt1n);

opt1o = ConvoScreen:new {
  id = "opt1o",
  leftDialog = "",
   customDialogText = "Members of the Inquisitorius would be sent to Dromund Kaas to learn Dark Side teachings from us, as were the few Emperor's Hands.  The Imperial Army stationed an entire Garrison here, both to guard us, and to eliminate us if we were seen as a threat.",
  stopConversation = "false",
  options = {
     {"So, what happened?","opt1p"},
  }
}
prophet_cronal:addScreen(opt1o);

opt1p = ConvoScreen:new {
  id = "opt1p",
  leftDialog = "",
   customDialogText = "Two years ago Prophet Kadann had a vision in which he saw the Rebels victorious against the Empire and the demise of the Emperor.  Kadann tried to warn Palpatine but the Emperor would not hear him.  His arrogance only allowed him to see his victory and nothing else.  He branded Kadann a traitor and issued an order to the garrison commander to eliminate us.",
  stopConversation = "false",
  options = {
     {"How did that go?","opt1q"},
  }
}
prophet_cronal:addScreen(opt1p);

opt1q = ConvoScreen:new {
  id = "opt1q",
  leftDialog = "",
   customDialogText = "In the years the commander was stationed here he came to trust Kadann's visions.  He disobeyed the Emperor with the support of all of his troops.  They remain loyal to the Prophets and the Dark Force now. Though they are deserters, agents of the Empire are welcome here, as are others.  We no longer take sides in the ongoing conflict as we never wanted part of it in the first place, we were compelled to by The Emperor.",
  stopConversation = "false",
  options = {
     {"Enough about History","prophet_cronal_start2"},
  }
}
prophet_cronal:addScreen(opt1q);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "There are two groups that can be found elsewhere on the planet.  One calls themselves the Sith Shadow, and the other the Cult of Vitiate.  The two have dealings with each other, they might now be tied to each other.",
  stopConversation = "false",
  options = {
     {"Tell me about the Sith Shadow","opt2a"},
     {"Tell me about the Cult of Vitiate","opt2d"},
  }
}
prophet_cronal:addScreen(opt2);

opt2a = ConvoScreen:new {
  id = "opt2a",
  leftDialog = "",
   customDialogText = "The Sith Shadow started a few years ago by a fallen Jedi that became an Inquisitor and was sent here to train.  His name is Mellichae, a charismatic man he is.  He has grown a rather large army of supporters, mostly weak minded thugs and former pirates he was able to manipulate or control to do his bidding.",
  stopConversation = "false",
  options = {
     {"What is so significant about a gang of ruffians in the swamp?","opt2b"},
  }
}
prophet_cronal:addScreen(opt2a);

opt2b = ConvoScreen:new {
  id = "opt2b",
  leftDialog = "",
   customDialogText = "Mellichae claimed to have had a vision of something profound though he never shared what it was with anyone.  He went off into the jungle for days only to return with an ancient Lightsaber that he found in ruins far to the east of here, after discovering it he became obsessed for a time with some group of Force Sensitives living on Dathomir and took a transport with several of his followers there leaving his apprentice if you want to call her that here.  A few survivors of his expedition returned here recently, they could not say what happened to Mellichae however, but immediately left to go look for his apprentice after they arrived.",
  stopConversation = "false",
  options = {
     {"He had an apprentice?","opt2c"},
  }
}
prophet_cronal:addScreen(opt2b);

opt2c = ConvoScreen:new {
  id = "opt2c",
  leftDialog = "",
   customDialogText = "Yes, her name is Varyn.  Varyn Kai, a force sensitive child that was discovered by the Inquisitorius a year after the formation of the Empire.  She was quite close with my daughter Sariss whom I believe you have already met.  It wasn't long after Varyn met Mellichae that he won her over.  She accompanied him when he journeyed to the east, but I was surprised that she did not follow him to Dathomir the two were inseperable. The moment Mellichae left her demeanor changed, she did not stay with us for long after and left heading north alone.  I assume to the Ruins of Kaas City, as that is the only thing of interest for hundreds of Kilometers in that direction.",
  stopConversation = "false",
  options = {
     {"Tell me about the Cult of Vitiate","opt2d"},
     {"Enough about this.","prophet_cronal_start2"},
  }
}
prophet_cronal:addScreen(opt2c);

opt2d = ConvoScreen:new {
  id = "opt2d",
  leftDialog = "",
   customDialogText = "Fifteen years ago some of our Order when exploring came across a structure in the far east.  They identified it as the Tomb of Vitiate, and indeed remains were discovered in the tomb.  It was believed to be the remains of one of the last Voices of the Sith Emperor.  In the years that followed the original team of 12 that went grew more and more obsessed with the tomb.",
  stopConversation = "false",
  options = {
     {"What did they do?","opt2e"},
  }
}
prophet_cronal:addScreen(opt2d);

opt2e = ConvoScreen:new {
  id = "opt2e",
  leftDialog = "",
   customDialogText = "They spent more and more time at the tomb studying it.  Their obsession turned to madness, and before long they left for a trip to study the Tomb and simply never returned.  It is as if they all lost their minds.  They wander around inside of the tomb endlessly.  I've never seen anything like it.",
  stopConversation = "false",
  options = {
     {"What do you suppose they found in the tomb that drove them crazy?","opt2f"},
  }
}
prophet_cronal:addScreen(opt2e);

opt2f = ConvoScreen:new {
  id = "opt2f",
  leftDialog = "",
   customDialogText = "Some historical texts I have read described similar occurances here at the Dark Force Temple in the days of the old Sith Empire, but this was also when Vitiate was...",
  stopConversation = "false",
  options = {
    {"Was.. what?","opt2g"},
  }
}
prophet_cronal:addScreen(opt2f);

opt2g = ConvoScreen:new {
  id = "opt2g",
  leftDialog = "",
   customDialogText = "... Was when Vitiate, the Sith Emperor was still alive.  Could it be possible that his consciousness has endured this long?",
  stopConversation = "false",
  options = {    
    {"So, you are telling me that these cultists may be posessed by the spirit of this ancient Sith Emperor?","opt3"},
   -- {"Good day.", "deny1"}
  }
}
prophet_cronal:addScreen(opt2g);

opt3 = ConvoScreen:new {
  id = "opt3",
  leftDialog = "",
   customDialogText = "I don't know, but I do know this.  If somehow Vitiate still lives, we are all in danger.",
  stopConversation = "false",
  options = {   
    {"Enough about this.","prophet_cronal_start2"},
    --{"I see, well I will be on my way.  Good day.", "deny1"}
  }
}
prophet_cronal:addScreen(opt3);

clone1 = ConvoScreen:new {
  id = "clone1",
  leftDialog = "",
   customDialogText = "Recently? Well, during the Clone Wars the Separatist Alliance maintained a Droid Foundry to the east until it was destroyed in a raid by the Republic.",
  stopConversation = "false",
  options = {   
    {"One of the Battles of the Clone Wars was fought here?","clone2"},
    --{"I see, well I will be on my way.  Good day.", "deny1"}
  }
}
prophet_cronal:addScreen(clone1);

clone2 = ConvoScreen:new {
  id = "clone2",
  leftDialog = "",
   customDialogText = "Indeed, though we managed to keep ourselves shrouded as we have from the galaxy for centuries.  Good thing too, Kadann felt the presence of the Jedi leading the clones against the Droid Army, it was none other than Yoda himself.",
  stopConversation = "false",
  options = {   
    {"Yoda was here, and he didn't sense your presence?","clone3"},
    --{"I see, well I will be on my way.  Good day.", "deny1"}
  }
}
prophet_cronal:addScreen(clone2);

clone3 = ConvoScreen:new {
  id = "clone3",
  leftDialog = "",
   customDialogText = "Of course not.  What does a shadow look like in a dark room? A lot like the rest of the room.  This world is shrouded in the Dark Side, the Jedi were utterly blind to us here.  Even one as powerful as Yoda was.",
  stopConversation = "false",
  options = {   
    {"What happened to the facility then after the battle?","clone4"},
    --{"I see, well I will be on my way.  Good day.", "deny1"}
  }
}
prophet_cronal:addScreen(clone3);

clone4 = ConvoScreen:new {
  id = "clone4",
  leftDialog = "",
   customDialogText = "It has been some time since any of us ventured closely enough, but I would wager that it remains as abandoned as it had been, there was some seismic activity from the east a few years ago so it would not surprise me if part of the facility collapsed as it was built underground.",
  stopConversation = "false",
  options = {   
    {"Would there be anything worth salavaging there?","clone5"},
    --{"I see, well I will be on my way.  Good day.", "deny1"}
  }
}
prophet_cronal:addScreen(clone4);

clone5 = ConvoScreen:new {
  id = "clone5",
  leftDialog = "",
   customDialogText = "Perhaps there is, there were some droids left active in the lower levels of the facility the last time I visited years ago, though after all of this time it would not surprise me if they had gone haywire.   I would be careful should you decide to venture there.",
  stopConversation = "false",
  options = {   
    {"Thanks for the advice.  I'll keep it in mind if I head there.","prophet_cronal_start2"},
    --{"I see, well I will be on my way.  Good day.", "deny1"}
  }
}
prophet_cronal:addScreen(clone5);

storm1 = ConvoScreen:new {
  id = "storm1",
  leftDialog = "",
   customDialogText = "The storms here are quite unnatural. The earliest historical documents I have found among the ruins of Kaas City to the north chronicle the weather disturbances grow over the first few hundred years of the colonization of the world by the Sith who fled here.  They attributed it simply to the presence of the Sith Emperor, that his power permanantly distorted and transfixed the weather of the planet.",
  stopConversation = "false",
  options = {   
    {"Interesting, I guess I will have to bring an umbrella next time.","prophet_cronal_start2"},
    --{"I see, well I will be on my way.  Good day.", "deny1"}
  }
}
prophet_cronal:addScreen(storm1);

addConversationTemplate("prophet_cronal", prophet_cronal);
