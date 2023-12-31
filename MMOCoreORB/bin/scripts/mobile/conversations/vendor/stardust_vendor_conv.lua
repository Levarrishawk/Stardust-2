StardustVendorConvoTemplate = ConvoTemplate:new {
	initialScreen = "initial",
	templateType = "Lua",
	luaClassHandler = "StardustVendorConvoHandler",
	screens = {}
}

initial = ConvoScreen:new {
	id = "initial",
	customDialogText = "",
	stopConversation = "false",
	options = {
	}
}
StardustVendorConvoTemplate:addScreen(initial);

buy_window = ConvoScreen:new {
	id = "buy_window",
	customDialogText = "",
	stopConversation = "false",
	options = {}
}
StardustVendorConvoTemplate:addScreen(buy_window);

buy_armor = ConvoScreen:new {
	id = "buy_armor",
	customDialogText = "",
	stopConversation = "false",
	options = {}
}
StardustVendorConvoTemplate:addScreen(buy_armor);

buy_armor_as = ConvoScreen:new {
	id = "buy_armor_as",
	customDialogText = "",
	stopConversation = "false",
	options = {}
}
StardustVendorConvoTemplate:addScreen(buy_armor_as);

buy_armor_aw = ConvoScreen:new {
	id = "buy_armor_aw",
	customDialogText = "",
	stopConversation = "false",
	options = {}
}
StardustVendorConvoTemplate:addScreen(buy_armor_aw);

buy_backpacks = ConvoScreen:new {
	id = "buy_backpacks",
	customDialogText = "",
	stopConversation = "false",
	options = {}
}
StardustVendorConvoTemplate:addScreen(buy_backpacks);

start_sale_backpacks = ConvoScreen:new {
	id = "start_sale_backpacks",
	customDialogText = "",
	stopConversation = "true",
	options = {}
}
StardustVendorConvoTemplate:addScreen(start_sale_backpacks);

start_sale_segment_aw = ConvoScreen:new {
	id = "start_sale_segment_aw",
	customDialogText = "",
	stopConversation = "true",
	options = {}
}
StardustVendorConvoTemplate:addScreen(start_sale_segment_aw);

start_sale_schematic_aw = ConvoScreen:new {
	id = "start_sale_schematic_aw",
	customDialogText = "",
	stopConversation = "true",
	options = {}
}
StardustVendorConvoTemplate:addScreen(start_sale_schematic_aw);

start_sale_segment_as = ConvoScreen:new {
	id = "start_sale_segment_as",
	customDialogText = "",
	stopConversation = "true",
	options = {}
}
StardustVendorConvoTemplate:addScreen(start_sale_segment_as);

start_sale_schematic_as = ConvoScreen:new {
	id = "start_sale_schematic_as",
	customDialogText = "",
	stopConversation = "true",
	options = {}
}
StardustVendorConvoTemplate:addScreen(start_sale_schematic_as);

buy_weapons = ConvoScreen:new {
	id = "buy_weapons",
	customDialogText = "",
	stopConversation = "true",
	options = {}
}
StardustVendorConvoTemplate:addScreen(buy_weapons);

buy_vehicles = ConvoScreen:new {
	id = "buy_vehicles",
	customDialogText = "",
	stopConversation = "true",
	options = {}
}
StardustVendorConvoTemplate:addScreen(buy_vehicles);

information_first = ConvoScreen:new {
	id = "information_first",
	customDialogText = "",
	stopConversation = "false",
	options = {}
}
StardustVendorConvoTemplate:addScreen(information_first);

information_second = ConvoScreen:new {
	id = "information_second",
	customDialogText = "",
	stopConversation = "false",
	options = {}
}
StardustVendorConvoTemplate:addScreen(information_second);

factionRestriction = ConvoScreen:new {
	id = "factionRestriction",
	customDialogText = "I don't sell to outsiders.",
	stopConversation = "true",
	options = {}
}
StardustVendorConvoTemplate:addScreen(factionRestriction);

addConversationTemplate("StardustVendorConvoTemplate", StardustVendorConvoTemplate);

AWVendorConvoTemplate = StardustVendorConvoTemplate:new {
	luaClassHandler = "StardustVendorConvoHandler"
}

addConversationTemplate("AWVendorConvoTemplate", AWVendorConvoTemplate);