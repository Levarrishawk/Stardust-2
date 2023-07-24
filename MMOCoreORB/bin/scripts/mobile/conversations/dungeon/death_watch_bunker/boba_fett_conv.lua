bobaFettConvoTemplate = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "deathWatchBobaFettConvoHandler",
	screens = {}
}

intro = ConvoScreen:new {
	id = "intro",
	leftDialog = "",
	customDialogText = "You come to us in our hidden covert at an opportune time. There's a rumor that Apostates known as Death Watch can be found on Endor somewhere in the northwestern area of the planet.  I want you, yes you to go there and check it out.", -- There's a rumor that Death Watch operatives can be found on Endor somewhere in the northwestern area of the planet.  I want you, yes you to go there and check it out.
	stopConversation = "false",
	options = {
		{"Apostates? Who are you people and who are Death Watch?", "formidable_opponent"}, -- Okay. Anything else you can tell me?
		{"Mandalorians, don't see you people every day in these times.", "deny1"},
	}
}
bobaFettConvoTemplate:addScreen(intro);

formidable_opponent = ConvoScreen:new {
	id = "formidable_opponent",
	leftDialog = "",
	customDialogText = "We are followers of the way of the Mand'alor. The Death Watch do not follow the way. They can however be a formidable opponent and shouldn't be taken lightly. Be careful fighting against them.", -- The Death Watch can be a formidable opponent and shouldn't be taken lightly. Be careful fighting against them.
	stopConversation = "false",
	options = {
		{"The way of the Mand'alor?  You mean Mandalorians right?  I thought the Empire killed you all.", "mind_your_business"}, -- Sounds like you've dealt with them before.
		{"@conversation/boba_fett:s_783590a2", "experience_is_reward"}, -- Do I get a reward for completing this mission?
		{"@conversation/boba_fett:s_515da73f", "pass_on_job"},-- Can't somebody else do it?
	}
}
bobaFettConvoTemplate:addScreen(formidable_opponent);

mind_your_business = ConvoScreen:new {
	id = "mind_your_business",
	leftDialog = "",
	customDialogText = "Not all Mandalorians were on Mandalore on the night of a thousand tears, but the events of that day saw the Children of the watch return to the way.  Those who call themselves Death Watch are apostates.  They are no longer Mandalorian, they even seek to deal with the Black Sun for all too precious Beskar.  This is not permissable.", -- Mind your business. The Hutt wants this Death Watch and their leader dead before they cut into his business. My informants tell me they're cutting a deal with Black Sun even as we speak.
	stopConversation = "false",
	options = {
		{"What makes them no longer Mandalorian?", "dont_give_opinions"}, -- Are you sure that's all there is to it?
		{"@conversation/boba_fett:s_783590a2", "experience_is_reward"}, -- Do I get a reward for completing this mission?
		{"@conversation/boba_fett:s_515da73f", "pass_on_job"},-- Can't somebody else do it?
	}
}
bobaFettConvoTemplate:addScreen(mind_your_business);

dont_give_opinions = ConvoScreen:new {
	id = "dont_give_opinions",
	leftDialog = "",
	customDialogText = "They do not follow the way of the Manda'lor. True Mandalorians follow the way.  I grow tired of answering your questions.  Go now and find these apostates.  This is the way.", -- I don't usually give my opinion to barves like you, but in this case I'll make an exception. All I have to say is, the Mandalorians are dead and nobody is bringin' them back. Now go.
	stopConversation = "true",
	options = {
	}
}
bobaFettConvoTemplate:addScreen(dont_give_opinions);

experience_is_reward = ConvoScreen:new {
	id = "experience_is_reward",
	leftDialog = "",
	customDialogText = "It is a matter of Honor and nothing more. I do not expect you to fully understand as you are not of the creed.", -- The experience itself will be its own reward. Don't come to me or the Hutt looking for a hand out, you're likely to end up on the wrong end of a blaster if you keep that up.
	stopConversation = "false",
	options = {
		{"@conversation/boba_fett:s_4c801419", "dont_give_opinions"}, -- Are you sure that's all there is to it?
		{"@conversation/boba_fett:s_515da73f", "pass_on_job"},-- Can't somebody else do it?
	}
}
bobaFettConvoTemplate:addScreen(experience_is_reward);

back_again = ConvoScreen:new {
	id = "back_again",
	leftDialog = "@conversation/boba_fett:s_3c8497c", -- You're back again? Didn't we already have this discussion?
	stopConversation = "false",
	options = {
		{"@conversation/boba_fett:s_1122d80a", "formidable_opponent"},-- Can you tell me again about the Death Watch?
		{"@conversation/boba_fett:s_515da73f", "pass_on_job"},-- Can't somebody else do it?
		{"I had heard you fell into the Sarlacc, How in blazes did you survive?", "deny1"},
	}
}
bobaFettConvoTemplate:addScreen(back_again);

pass_on_job = ConvoScreen:new {
	id = "pass_on_job",
	leftDialog = "",
	customDialogText = "That is your choice, should you reconsider I will be waiting.", -- You won't make any friends around here by passing on what's sure to be a lucrative job like this.
	stopConversation = "true",
	options = {
	}
}
bobaFettConvoTemplate:addScreen(pass_on_job);

not_completed_jabbas = ConvoScreen:new {
	id = "not_completed_jabbas",
	leftDialog = "",
	customDialogText = "I do not know who let you into our covert, but you do not belong here.", -- I've no time for the likes of you. I have more pressing matters to deal with.
	stopConversation = "true",
	options = {
	}
}
bobaFettConvoTemplate:addScreen(not_completed_jabbas);

deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "", 
  customDialogText = "... and we like to keep it that way.  Begone.",
  stopConversation = "true",
  options = {
  }
}
bobaFettConvoTemplate:addScreen(deny1);

addConversationTemplate("bobaFettConvoTemplate", bobaFettConvoTemplate);
