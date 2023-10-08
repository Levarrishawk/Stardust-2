VillageSui = ScreenPlay:new {
	productionServer = false
}

function VillageSui:showMainPage(pPlayer)
	if (pPlayer == nil) then
		return
	end

	local curPhase = VillageJediManagerTownship:getCurrentPhase()
	local phaseID = VillageJediManagerTownship:getCurrentPhaseID()
	local nextPhaseChange = VillageJediManagerTownship.getNextPhaseChangeTime()
	local phaseTimeLeft = self:getPhaseDuration()

	local suiPrompt = " \\#pcontrast1 " .. "Current Phase:" .. " \\#pcontrast2 " .. curPhase .. " (id " .. phaseID .. ")\n" .. " \\#pcontrast1 " .. "Current Server Time:" .. " \\#pcontrast2 " .. os.date("%c") .. "\n"
	local suiPrompt = suiPrompt .. " \\#pcontrast1 " .. "Next Phase Change: " .. " \\#pcontrast2 " .. os.date("%c", nextPhaseChange)  .. "\n \\#pcontrast1 " .. "Phase Time Left: " .. " \\#pcontrast2 " .. phaseTimeLeft

	local sui = SuiListBox.new("VillageGmSui", "mainCallback")
	sui.setTitle("Village Time")
	sui.setPrompt(suiPrompt)

	sui.sendTo(pPlayer)
end

function VillageSui:getPhaseDuration()
	local eventID = getServerEventID("VillagePhaseChange")

	if (eventID == nil) then
		return
	end

	return self:getTimeString(getServerEventTimeLeft(eventID))
end

function VillageSui:getTimeString(miliTime)
	local timeLeft = miliTime / 1000
	local daysLeft = math.floor(timeLeft / (24 * 60 * 60))
	local hoursLeft = math.floor((timeLeft / 3600) % 24)
	local minutesLeft = math.floor((timeLeft / 60) % 60)
	local secondsLeft = math.floor(timeLeft % 60)

	return daysLeft .. "d " .. hoursLeft .. "h " .. minutesLeft .. "m " .. secondsLeft .. "s"
end