coruscant_conversationtemplate = ConvoTemplate:new {
	initialScreen = "coruscant_initial",
	templateType = "Lua",
	luaClassHandler = "coruscant_racetrack_convo_handler",
	screens = {}
}

coruscant_initial = ConvoScreen:new {
	id = "coruscant_initial",
	leftDialog = "@conversation/racing_coruscant:s_e0de16cc",
	stopConversation = "false",
	options = {
		{"@conversation/racing_coruscant:s_dffdee4b","cs_jsPlumb_1_90"},
		{"@conversation/racing_coruscant:s_1736e216","cs_jsPlumb_1_29"},
		{"@conversation/racing_coruscant:s_838e4ffb","cs_jsPlumb_1_181"},
		{"@conversation/racing_coruscant:s_2492930f","cs_jsPlumb_1_207"}
	}
}
coruscant_conversationtemplate:addScreen(coruscant_initial);
cs_jsPlumb_1_29 = ConvoScreen:new {
	id = "cs_jsPlumb_1_29",
	leftDialog = "@conversation/racing_coruscant:s_cea50112",
	stopConversation = "false",
	options = {
		{"@conversation/racing_coruscant:s_e460e3d3","cs_jsPlumb_1_233"},
		{"@conversation/racing_coruscant:s_fbd55d9d",""}
	}
}
coruscant_conversationtemplate:addScreen(cs_jsPlumb_1_29);
cs_jsPlumb_1_90 = ConvoScreen:new {
	id = "cs_jsPlumb_1_90",
	leftDialog = "@conversation/racing_coruscant:s_d24f3595",
	stopConversation = "false",
	options = {
		{"@conversation/racing_coruscant:s_2528fad7","cs_jsPlumb_1_116"},
		{"@conversation/racing_coruscant:s_262e8687","cs_jsPlumb_1_142"}
	}
}
coruscant_conversationtemplate:addScreen(cs_jsPlumb_1_90);
cs_jsPlumb_1_116 = ConvoScreen:new {
	id = "cs_jsPlumb_1_116",
	leftDialog = "@conversation/racing_coruscant:s_b2acc217",
	stopConversation = "true",
	options = {
	}
}
coruscant_conversationtemplate:addScreen(cs_jsPlumb_1_116);
cs_jsPlumb_1_142 = ConvoScreen:new {
	id = "cs_jsPlumb_1_142",
	leftDialog = "@conversation/racing_coruscant:s_c0918d6",
	stopConversation = "true",
	options = {
	}
}
coruscant_conversationtemplate:addScreen(cs_jsPlumb_1_142);
cs_jsPlumb_1_181 = ConvoScreen:new {
	id = "cs_jsPlumb_1_181",
	leftDialog = "@conversation/racing_coruscant:s_abd9745d",
	stopConversation = "true",
	options = {
	}
}
coruscant_conversationtemplate:addScreen(cs_jsPlumb_1_181);
cs_jsPlumb_1_207 = ConvoScreen:new {
	id = "cs_jsPlumb_1_207",
	leftDialog = "@conversation/racing_coruscant:s_abd9745d",
	stopConversation = "true",
	options = {
	}
}
coruscant_conversationtemplate:addScreen(cs_jsPlumb_1_207);
cs_jsPlumb_1_233 = ConvoScreen:new {
	id = "cs_jsPlumb_1_233",
	leftDialog = "@conversation/racing_coruscant:s_4b4fb2b7",
	stopConversation = "true",
	options = {
	}
}
coruscant_conversationtemplate:addScreen(cs_jsPlumb_1_233);
addConversationTemplate("coruscant_conversationtemplate", coruscant_conversationtemplate);