local ObjectManager = require("managers.object.object_manager")
ChandrilaHannaCityPatrol2ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,


	rebel_troopers = {
		{"at_xt", 60, 266.1, 6.0, -3018.1, 180, 0, "an AT-XT","guard1"},
	},

}

registerScreenPlay("ChandrilaHannaCityPatrol2ScreenPlay", true)

function ChandrilaHannaCityPatrol2ScreenPlay:start()
	if (isZoneEnabled("chandrila")) then
	--	spawnSceneObject("chandrila","object/tangible/instrument/organ_max_rebo.iff", 25.4, -0.9, 10.7, 35791444, 0.38,0,-0.92,0)
			self:spawnMobiles()
		self:spawnStatics()
	end
end

function ChandrilaHannaCityPatrol2ScreenPlay:spawnStatics()
--[[	pNpc = spawnMobile("tatooine", "outlaw", 300, 9.0, 5.8, 73.0, 153, 1177470)
	self:setMoodString(pNpc, "angry")
	--]]
end


function ChandrilaHannaCityPatrol2ScreenPlay:spawnMobiles()



	for i,v in ipairs(self.rebel_troopers) do
		pMobile = spawnMobile("chandrila", v[1], v[2], v[3], v[4], v[5], v[6], v[7])
		if (pMobile ~= nil) then
			writeData(SceneObject(pMobile):getObjectID() .. ":currentLoc", 1)
			writeStringData(SceneObject(pMobile):getObjectID() .. ":name", v[9])
			CreatureObject(pMobile):setCustomObjectName(v[8])
			createEvent(getRandomNumber(250,450) * 100, "ChandrilaHannaCityPatrol2ScreenPlay", "HannaPatrol2", pMobile)
			createObserver(DESTINATIONREACHED, "ChandrilaHannaCityPatrol2ScreenPlay", "hannaPatrolDestReached2", pMobile)
			AiAgent(pMobile):setAiTemplate("manualescortwalk")
			AiAgent(pMobile):setFollowState(4)
		end
	end

end

function ChandrilaHannaCityPatrol2ScreenPlay:HannaPatrol2(pMobile)
	if (pMobile == nil) then
		return
	end
	local name = readStringData(SceneObject(pMobile):getObjectID() .. ":name")
	local curLoc = readData(SceneObject(pMobile):getObjectID() .. ":currentLoc")
	local nextLoc

	if (name == "guard1") then
		if (curLoc == 1) then
		nextLoc = { 266.1, 6.0, -3018.1, 0 }
		else
		nextLoc = { 267.5, 6.0, -2836.2, 0 }
		end
	end
  

	AiAgent(pMobile):stopWaiting()
	AiAgent(pMobile):setWait(0)
	AiAgent(pMobile):setNextPosition(nextLoc[1], nextLoc[2], nextLoc[3], nextLoc[4])
	AiAgent(pMobile):executeBehavior()
end

function ChandrilaHannaCityPatrol2ScreenPlay:hannaPatrolDestReached2(pMobile)
	if (pMobile == nil) then
		return 0
	end

	local curLoc = readData(SceneObject(pMobile):getObjectID() .. ":currentLoc")

	if (curLoc == 1) then
		writeData(SceneObject(pMobile):getObjectID() .. ":currentLoc", 2)
	else
		writeData(SceneObject(pMobile):getObjectID() .. ":currentLoc", 1)
	end

	createEvent(getRandomNumber(350,450) * 100, "ChandrilaHannaCityPatrol2ScreenPlay", "HannaPatrol2", pMobile)

	return 0
end

