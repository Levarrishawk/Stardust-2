

klaatu = { planetName = "chandrila", npcTemplate = "klaatu", x = -31.8, z = 1.6, y = 51.8, direction = -150, cellID = 35791481, position = STAND }

ticketTakerKlaatu = CorvetteTicketTakerLogic:new {
	numberOfActs = 1,
	npc = klaatu,
	takerName = "ticketTakerKlaatu",
	faction = 0,
	goodbyeString = "@conversation/corvette_neutral_pilot:s_facfb7c0", -- Oh, sorry. I'll be going then.
	helpMeString = "@conversation/corvette_neutral_pilot:s_4fb4580f", -- I hear you can help me intercept a CorSec Corellian corvette?
	nevermindString = "@conversation/corvette_neutral_pilot:s_1a71d76e", -- Um... nothing. Nevermind.
	aboutMissionString = "@conversation/corvette_neutral_pilot:s_1ab00f5e", -- [Tell him about your mission]
}

registerScreenPlay("ticketTakerKlaatu", true)

ticketTakerKlaatuConvoHandler = CorvetteTicketTakerConvoHandler:new {
	ticketTaker = ticketTakerKlaatu
}
