local ObjectManager = require("managers.object.object_manager")
RaceTrackManager = require("screenplays.racetracks.racetrackengine")


bilbousa_circuit_screenplay = RaceTrack:new {
	trackConfig={
		debugMode = 0, -- 0 = off, 1 = print debug messages
		planetName = "hutta", -- The planet the Track is on
		badgeToAward=BDG_RACING_HUTTA,  -- Badge to be awarded for best daily time
		lootGroup="bilbousa",   -- Loot Group for Speeder Reward
		trackName="HUTTARACE",  -- Internal trackname , should be unique to the track
		className="bilbousa_circuit_screenplay", -- Class name of this class
		trackCheckpoint="@theme_park/racing/racing:coruscant_waypoint_name_checkpoint", --Waypoint names
		trackLaptime="@theme_park/racing/racing:coruscant_laptime_checkpoint", -- System message sent at each waypoint
		timeResolution=2, -- number of decimal places to use for the laptimes 0 = none, 1 = well 1 etc
		expiryTime = (1*3600), --Amount of time in seconds that a player will be expired from the track (stops silly times over this limit)
		resetTime = (22*3600)+(10*60), --Time of day in seconds that track resets High Scores
		waypointRadius=20, -- size of the waypoint observer
		raceCoordinator = {x= 380,y= 627,z=83}, -- Location of the race coordinator. Note the Z coord is VERY important
		waypoints = { {x = 1271, y = 1363}, -- The coords of the waypoints
			{x = -2, y = 1985},
			{x = -563, y = 996},
			{x = -3, y = 643},
			{x = 380, y = 627}
		}
	}
}

registerScreenPlay("bilbousa_circuit_screenplay", true)

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function bilbousa_circuit_screenplay:start()
	if (isZoneEnabled(self.trackConfig.planetName)) then
		self:spawnMobiles()
		self:createRaceTrack()
	end
end

function bilbousa_circuit_screenplay:spawnMobiles()
	local pCoord = spawnMobile(self.trackConfig.planetName, "hutta_race_coordinator", 1, self.trackConfig.raceCoordinator.x, self.trackConfig.raceCoordinator.z, self.trackConfig.raceCoordinator.y, 35, 0 )
end

function bilbousa_circuit_screenplay:enteredWaypoint(pActiveArea, pObject)
	return self:processWaypoint(pActiveArea, pObject)
end

bilbousa_circuit_convo_handler = conv_handler:new {}

function bilbousa_circuit_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
	local screen = LuaConversationScreen(pConvScreen)
	local screenID = screen:getScreenID()
	if ( screenID == "cs_jsPlumb_1_116" ) then
		bilbousa_circuit_screenplay:startRacing(pPlayer)
	elseif ( screenID == "cs_jsPlumb_1_181" ) then -- Personal Best
		bilbousa_circuit_screenplay:displayPersonalBestTime(pPlayer)
	elseif ( screenID == "cs_jsPlumb_1_207" ) then -- Track Best
		bilbousa_circuit_screenplay:displayTrackBestTime(pPlayer)
	end
	return pConvScreen
end
