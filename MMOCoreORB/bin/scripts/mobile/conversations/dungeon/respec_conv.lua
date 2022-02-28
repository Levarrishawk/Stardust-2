respecConvoTemplate = ConvoTemplate:new {
	initialScreen = "intro",
	templateType = "Lua",
	luaClassHandler = "respecConvoHandler",
	screens = {}
}

intro = ConvoScreen:new {
	id = "intro",
	leftDialog = "", --"@conversation/fs_experience_converter:s_962f82a6", -- Welcome, friend! Come here and tell me what insight I may provide for you today?
	customDialogText = "Greetings, I can assist you with transferring your combat skills from one area of expertise to another.  How can I help you?",
	stopConversation = "false",
	options = {
		{"One Handed Melee", "learn_combat_meleespecialize_onehand"},
		{"Two Handed Melee", "learn_combat_meleespecialize_twohand"}, 
		{"Polearms", "learn_combat_meleespecialize_polearm"},
		{"Unarmed", "learn_combat_meleespecialize_unarmed"}, 
		{"Carbines", "learn_combat_rangedspecialize_carbine"}, 
		{"Rifles", "learn_combat_rangedspecialize_rifle"}, 
		{"Pistols", "learn_combat_rangedspecialize_pistol"}, 
		{"Heavy Weapons", "learn_combat_rangedspecialize_heavy"}
	}
}
respecConvoTemplate:addScreen(intro);

learn_combat_meleespecialize_onehand = ConvoScreen:new {
	id = "learn_combat_meleespecialize_onehand",
	leftDialog = "@conversation/fs_experience_converter:s_7542cfea", -- Allow me to help you understand your experiences...
	stopConversation = "true",
	options = {}
}
respecConvoTemplate:addScreen(learn_combat_meleespecialize_onehand);

learn_combat_meleespecialize_twohand = ConvoScreen:new {
	id = "learn_combat_meleespecialize_twohand",
	leftDialog = "@conversation/fs_experience_converter:s_7542cfea", -- Allow me to help you understand your experiences...
	stopConversation = "true",
	options = {}
}
respecConvoTemplate:addScreen(learn_combat_meleespecialize_twohand);

learn_combat_meleespecialize_polearm = ConvoScreen:new {
	id = "learn_combat_meleespecialize_polearm",
	leftDialog = "@conversation/fs_experience_converter:s_7542cfea", -- Allow me to help you understand your experiences...
	stopConversation = "true",
	options = {}
}
respecConvoTemplate:addScreen(learn_combat_meleespecialize_polearm);

learn_combat_meleespecialize_unarmed = ConvoScreen:new {
	id = "learn_combat_meleespecialize_unarmed",
	leftDialog = "@conversation/fs_experience_converter:s_7542cfea", -- Allow me to help you understand your experiences...
	stopConversation = "true",
	options = {}
}
respecConvoTemplate:addScreen(learn_combat_meleespecialize_unarmed);

learn_combat_rangedspecialize_carbine = ConvoScreen:new {
	id = "learn_combat_rangedspecialize_carbine",
	leftDialog = "@conversation/fs_experience_converter:s_433c2a58", -- Allow me to help you to open your mind to new possibilities...
	stopConversation = "true",
	options = {}
}
respecConvoTemplate:addScreen(learn_combat_rangedspecialize_carbine);

learn_combat_rangedspecialize_rifle = ConvoScreen:new {
  id = "learn_combat_rangedspecialize_rifle",
  leftDialog = "@conversation/fs_experience_converter:s_433c2a58", -- Allow me to help you to open your mind to new possibilities...
  stopConversation = "true",
  options = {}
}
respecConvoTemplate:addScreen(learn_combat_rangedspecialize_rifle);

learn_combat_rangedspecialize_pistol = ConvoScreen:new {
  id = "learn_combat_rangedspecialize_pistol",
  leftDialog = "@conversation/fs_experience_converter:s_433c2a58", -- Allow me to help you to open your mind to new possibilities...
  stopConversation = "true",
  options = {}
}
respecConvoTemplate:addScreen(learn_combat_rangedspecialize_pistol);

learn_combat_rangedspecialize_heavy = ConvoScreen:new {
  id = "learn_combat_rangedspecialize_heavy",
  leftDialog = "@conversation/fs_experience_converter:s_433c2a58", -- Allow me to help you to open your mind to new possibilities...
  stopConversation = "true",
  options = {}
}
respecConvoTemplate:addScreen(learn_combat_rangedspecialize_heavy);

what_aspects = ConvoScreen:new {
	id = "what_aspects",
	leftDialog = "@conversation/fs_experience_converter:s_7abe0196", -- I sense that you are able to learn the following: %TO
	stopConversation = "true",
	options = {}
}
respecConvoTemplate:addScreen(what_aspects);

cant_convert = ConvoScreen:new {
	id = "cant_convert",
	leftDialog = "@conversation/fs_experience_converter:s_37fbfae6", -- I am sorry, stranger.  Your mind is still too cloudy for me to help you.  Remove your doubts with journey and mediation.  Then return to me.
	stopConversation = "true",
	options = {}
}
respecConvoTemplate:addScreen(cant_convert);

addConversationTemplate("respecConvoTemplate", respecConvoTemplate);
