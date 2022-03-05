local ObjectManager = require("managers.object.object_manager")
RaceTrackManager = require("screenplays.racetracks.racetrackengine")


coruscant_racetrack_screenplay = RaceTrack:new {
	trackConfig={
		debugMode = 0, -- 0 = off, 1 = print debug messages
		planetName = "coruscant", -- The planet the Track is on
		badgeToAward=BDG_RACING_CORUSCANT,  -- Badge to be awarded for best daily time
		lootGroup="coruscant_lower",   -- Loot Group for Speeder Reward
		trackName="CORURACE",  -- Internal trackname , should be unique to the track
		className="coruscant_racetrack_screenplay", -- Class name of this class
		trackCheckpoint="@theme_park/racing/racing:coruscant_waypoint_name_checkpoint", --Waypoint names
		trackLaptime="@theme_park/racing/racing:coruscant_laptime_checkpoint", -- System message sent at each waypoint
		timeResolution=2, -- number of decimal places to use for the laptimes 0 = none, 1 = well 1 etc
		expiryTime = (1*3600), --Amount of time in seconds that a player will be expired from the track (stops silly times over this limit)
		resetTime = (22*3600)+(10*60), --Time of day in seconds that track resets High Scores
		waypointRadius=10, -- size of the waypoint observer
		raceCoordinator = {x= -5734,y= -5050,z=0}, -- Location of the race coordinator. Note the Z coord is VERY important
		waypoints = { {x = -5660, y = -5050}, -- The coords of the waypoints
			{x = -5660, y = -4746},
			{x = -5866, y = -4745},
			{x = -5866, y = -5050},
			{x = -5734, y = -5050}
		}
	}
}

registerScreenPlay("coruscant_racetrack_screenplay", true)

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function coruscant_racetrack_screenplay:start()
	if (isZoneEnabled(self.trackConfig.planetName)) then
		self:spawnMobiles()
		self:createRaceTrack()
	end
end

function coruscant_racetrack_screenplay:spawnMobiles()
	local pCoord = spawnMobile(self.trackConfig.planetName, "coruscant_race_coordinator", 1, self.trackConfig.raceCoordinator.x, self.trackConfig.raceCoordinator.z, self.trackConfig.raceCoordinator.y, 35, 0 )
end

function coruscant_racetrack_screenplay:enteredWaypoint(pActiveArea, pObject)
	return self:processWaypoint(pActiveArea, pObject)
end

coruscant_racetrack_convo_handler = conv_handler:new {}

function coruscant_racetrack_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
	local screen = LuaConversationScreen(pConvScreen)
	local screenID = screen:getScreenID()
	if ( screenID == "cs_jsPlumb_1_116" ) then
		coruscant_racetrack_screenplay:startRacing(pPlayer)
	elseif ( screenID == "cs_jsPlumb_1_181" ) then -- Personal Best
		coruscant_racetrack_screenplay:displayPersonalBestTime(pPlayer)
	elseif ( screenID == "cs_jsPlumb_1_207" ) then -- Track Best
		coruscant_racetrack_screenplay:displayTrackBestTime(pPlayer)
	end
	return pConvScreen
end
