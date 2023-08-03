

ds_297 = { planetName = "lok", npcTemplate = "ds_297", x = -1922.7, z = 12, y = -3195.6, direction = 173, cellID = 0, position = STAND }

ticketTakerDS297 = CorvetteTicketTakerLogic:new {
	numberOfActs = 1,
	npc = ds_297,
	takerName = "ticketTakerDS297",
	faction = FACTIONIMPERIAL,
	goodbyeString = "@conversation/corvette_imperial_pilot:s_8bb955f8", -- As you say, nothing.
	helpMeString = "@conversation/corvette_imperial_pilot:s_a7ad2e69", -- I hear you can help me intercept a Rebel blockade runner?
	nevermindString = "@conversation/corvette_imperial_pilot:s_1a71d76e", -- Um... nothing. Nevermind.
	aboutMissionString = "@conversation/corvette_imperial_pilot:s_1ab00f5e", -- [Tell him about your mission]
}

registerScreenPlay("ticketTakerDS297", true)

ticketTakerDS297ConvoHandler = CorvetteTicketTakerConvoHandler:new {
	ticketTaker = ticketTakerDS297
}
