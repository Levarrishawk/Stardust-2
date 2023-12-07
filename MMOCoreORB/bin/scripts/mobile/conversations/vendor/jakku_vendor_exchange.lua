event_exchange_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "event_exchange_convo_handler",
	screens = {}
 }
 
 
 event_exchange_items_screen = ConvoScreen:new {
	id = "items_screen",
	leftDialog = "",
	customDialogText = "Please Select From The Following List Of Items On The Right Hand Side. Some Items May Require Multiple Event Tokens To Exchange.",
	stopConversation = "false",
	options = {
	   {"Xeno Desk Lamp - 1 Token", "1"},
	   {"Xeno Table - 1 Token", "2"},
	   {"Xeno Desk 2 Tokens", "3"},
	   {"Xeno Throne - 2 Tokens", "4"},
	   {"Xeno Couch - 3 Tokens", "5"},      
	   {"Xeno Rug - 3 Tokens", "6"},
	   {"Emperors Throne - 10 Tokens", "7"},
	   {"Emperors Desk - 10 Tokens", "8"},
	   {"Emperors Lamp - 10 Tokens", "9"}, 
	   {"Early Settler Painting - 3 Tokens", "10"}, 
	   {"Corbantis Galaxy Painting - 3 Tokens", "11"},  
	   {"Infinity Galaxy Painting - 3 Tokens", "12"},
	   {"Intrepid Galaxy Painting - 3 Tokens", "13"},
	   {"Kauri Galaxy Painting - 3 Tokens", "14"},
	   {"Kettemoor Galaxy Painting - 3 Tokens", "15"},
	   {"Lowca Galaxy Painting - 3 Tokens", "16"},      
	   {"Naritus Galaxy Painting - 3 Tokens", "17"},
	   {"Scylla Galaxy Painting - 3 Tokens", "18"},
	   {"Tarquinas Galaxy Painting - 3 Tokens", "19"},
	   {"Tempest Galaxy Painting - 3 Tokens", "20"},
	   {"Valcyn Galaxy Painting - 3 Tokens", "21"}, 
	   {"Wanderhome Galaxy Painting - 3 Tokens", "22"},  
	   {"Gold Tier 2 Loot Crate - 5 Tokens", "23"}, 
	   {"Platinum Tier 3 Loot Crate - 10 Tokens", "24"},         
	   {"Back", "first_screen"},
	   {"No thank you.", "deny_quest"},
	   }
 }
 event_exchange_template:addScreen(event_exchange_items_screen);
 
 
 
 
 event_exchange_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Welcome to the Event Token Exchange Service.",
	stopConversation = "false",
	options = {
	   {"Items", "items"},
	   {"No thank you.", "deny_quest"},
	   }
 }
 event_exchange_template:addScreen(event_exchange_first_screen);
 
 
 event_exchange_end_quest = ConvoScreen:new {
	id = "end",
	leftDialog = "",
	customDialogText = "A good choice, Thank you Hero for using the Event Token Exchange Service!",
	stopConversation = "true",
	options = {   
	}
 }
 event_exchange_template:addScreen(event_exchange_end_quest);
 
 
 event_exchange_deny_quest = ConvoScreen:new {
	id = "deny_quest",
	leftDialog = "",
	customDialogText = "You probably will never an go to an event anyway!.",
	stopConversation = "true",
	options = {   
	}
 }
 event_exchange_template:addScreen(event_exchange_deny_quest);
 
 
 event_exchange_insufficient_funds = ConvoScreen:new {
	id = "insufficient_funds",
	leftDialog = "",
	customDialogText = "Sorry, but you do not have enough Event Tokens with you to purchase that.",
	stopConversation = "true",
	options = {   
	}
 }
 event_exchange_template:addScreen(event_exchange_insufficient_funds);
 
 
 event_exchange_insufficient_space = ConvoScreen:new {
	id = "insufficient_space",
	leftDialog = "",
	customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
	stopConversation = "true",
	options = {   
	}
 }
 event_exchange_template:addScreen(event_exchange_insufficient_space);
 
 
 event_exchange_insufficient_item = ConvoScreen:new {
	id = "insufficient_item",
	leftDialog = "",
	customDialogText = "You trying to get yourself killed are you? Come back with the some tokens!.",
	stopConversation = "true",
	options = {   
	}
 }
 event_exchange_template:addScreen(event_exchange_insufficient_item);
 
 
 addConversationTemplate("event exchange_template", event_exhange_template);