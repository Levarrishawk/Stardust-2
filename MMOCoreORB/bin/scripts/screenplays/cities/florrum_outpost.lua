FlorrumOutpostScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "FlorrumOutpostScreenPlay"
}

registerScreenPlay("FlorrumOutpostScreenPlay", true)

function FlorrumOutpostScreenPlay:start()
	if (isZoneEnabled("florrum")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function FlorrumOutpostScreenPlay:spawnSceneObjects()

--	spawnSceneObject("09", "object/tangible/furniture/cheap/couch_s01.iff", 9.9, 0.6, 3.5, 35792086, math.rad(-90) )
	 
end

function FlorrumOutpostScreenPlay:spawnMobiles()

	--Outdoors
	local pNpc = spawnMobile("florrum", "surgical_droid_21b",60,3.1,0.1,11.5,0,0)
	self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("florrum", "weequay_soldier",60,3210,51,-771,-118,0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("florrum", "weequay_soldier",60,3207,51,-738,120,0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("florrum", "weequay_soldier",60,3242,50,-722,180,0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("florrum", "weequay_soldier",60,3273,52,-741,43,0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("florrum", "weequay_soldier",60,3266,51,-775,43,0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  spawnMobile("florrum", "weequay_soldier",60,3241,51,-754,90,0)
  spawnMobile("florrum", "weequay_soldier",60,3250,51,-754,-90,0)
  

end
