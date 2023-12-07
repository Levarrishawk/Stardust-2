JakkuVendorConvoTemplate = ConvoTemplate:new {
	initialScreen = "initial",
	templateType = "Lua",
	luaClassHandler = "JakkuVendorConvoHandler",
	screens = {}
}

initial = ConvoScreen:new {
	id = "initial",
	customDialogText = "",
	stopConversation = "false",
	options = {
	}
}
JakkuVendorConvoTemplate:addScreen(initial);

buy_window = ConvoScreen:new {
	id = "buy_window",
	customDialogText = "",
	stopConversation = "false",
	options = {}
}
JakkuVendorConvoTemplate:addScreen(buy_window);

buy_armor = ConvoScreen:new {
	id = "buy_armor",
	customDialogText = "",
	stopConversation = "false",
	options = {}
}
JakkuVendorConvoTemplate:addScreen(buy_armor);

buy_armor_as = ConvoScreen:new {
	id = "buy_armor_as",
	customDialogText = "",
	stopConversation = "false",
	options = {}
}
JakkuVendorConvoTemplate:addScreen(buy_armor_as);

buy_armor_aw = ConvoScreen:new {
	id = "buy_armor_aw",
	customDialogText = "",
	stopConversation = "false",
	options = {}
}
JakkuVendorConvoTemplate:addScreen(buy_armor_aw);

start_sale_segment_aw = ConvoScreen:new {
	id = "start_sale_segment_aw",
	customDialogText = "",
	stopConversation = "true",
	options = {}
}
JakkuVendorConvoTemplate:addScreen(start_sale_segment_aw);

start_sale_schematic_aw = ConvoScreen:new {
	id = "start_sale_schematic_aw",
	customDialogText = "",
	stopConversation = "true",
	options = {}
}
JakkuVendorConvoTemplate:addScreen(start_sale_schematic_aw);

start_sale_segment_as = ConvoScreen:new {
	id = "start_sale_segment_as",
	customDialogText = "",
	stopConversation = "true",
	options = {}
}
JakkuVendorConvoTemplate:addScreen(start_sale_segment_as);

start_sale_schematic_as = ConvoScreen:new {
	id = "start_sale_schematic_as",
	customDialogText = "",
	stopConversation = "true",
	options = {}
}
JakkuVendorConvoTemplate:addScreen(start_sale_schematic_as);

buy_weapons = ConvoScreen:new {
	id = "buy_weapons",
	customDialogText = "",
	stopConversation = "true",
	options = {}
}
JakkuVendorConvoTemplate:addScreen(buy_weapons);

buy_vehicles = ConvoScreen:new {
	id = "buy_vehicles",
	customDialogText = "",
	stopConversation = "true",
	options = {}
}
JakkuVendorConvoTemplate:addScreen(buy_vehicles);

information_first = ConvoScreen:new {
	id = "information_first",
	customDialogText = "",
	stopConversation = "false",
	options = {}
}
JakkuVendorConvoTemplate:addScreen(information_first);

information_second = ConvoScreen:new {
	id = "information_second",
	customDialogText = "",
	stopConversation = "false",
	options = {}
}
JakkuVendorConvoTemplate:addScreen(information_second);

factionRestriction = ConvoScreen:new {
	id = "factionRestriction",
	customDialogText = "I don't sell to outsiders.",
	stopConversation = "true",
	options = {}
}
JakkuVendorConvoTemplate:addScreen(factionRestriction);

addConversationTemplate("JakkuVendorConvoTemplate", JakkuVendorConvoTemplate);

AWVendorConvoTemplate = JakkuVendorConvoTemplate:new {
	luaClassHandler = "JakkuVendorConvoHandler"
}

addConversationTemplate("AWVendorConvoTemplate", AWVendorConvoTemplate);