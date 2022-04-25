--[[
INFO:

Exploration of Mustafar

Reward
Quest XP: 31930
Credits: 10,000
Map of Mustafar
Difficulty
Recommended combat levels: 70 and higher

You receive this quest by right clicking on map console at starport entrance. then you have to travel to 6 different regions of the planet to complete, and at some of them you will have to kill some of the local animals to see what their combat skills are will fill in more as i go.
Tulrus Isle

Travel to (/wp 1920 -525) and kill 5 Tulrus, they are around (CL78+)
Berken's Flow

Travel to (/wp 1055 2466) and kill 5 of any Xandank, they are around (CL75+)
Central Volcano

Travel to (/wp 44 1367) then examine the Crash Site at (/wp 100 555)
Burning Plain

Travel to (/wp -1177 2038) and kill 5 Kubaza Beetles, they are around (CL70+)
If you can't find any at the above location check out either (/wp -1075 2352) or (/wp 88 1633)
Smoking Forest

Travel to the bridge at (/wp -2200 -247) and kill 5 Blistmoks. The bridge connects northern part of Crystal Flats to Smoking Forest.
Crystal Flats

Travel to (/wp -1159 -2911) and kill 5 Lava Fleas, they are around (CL80+)

/wp 1920 -525 Tulrus Isle; 
/wp 1055 2466 Berkens Flow; 
/wp 44 1367 Central Volcano; 
/wp 95 555 Crash Site;
/wp -1177 2038 Burning Plains; 
/wp -2195 -355 Smoking Forest; 
/wp -1159 -2911 Crystal Flats;



--]]

exploreMustafarScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "exploreMustafarScreenPlay",


}

registerScreenPlay("exploreMustafarScreenPlay", true)

function exploreMustafarScreenPlay:start()
	if (isZoneEnabled("mustafar")) then
		self:spawnObjects()
	end
end

function exploreMustafarScreenPlay:spawnObjects()
	local pMap = spawnSceneObject("mustafar", "object/tangible/item/som/mustafar_damaged_map.iff", -48.9, 31, -113, 12112248, math.rad(0) )
end
























