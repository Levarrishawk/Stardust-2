NayliOutpostScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "NayliOutpostScreenPlay"
}

registerScreenPlay("NayliOutpostScreenPlay", true)

function NayliOutpostScreenPlay:start()
	if (isZoneEnabled("chandrila")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function NayliOutpostScreenPlay:spawnSceneObjects()

	spawnSceneObject("chandrila", "object/tangible/furniture/cheap/couch_s01.iff", 9.9, 0.6, 3.5, 35792086, math.rad(-90) )
	spawnSceneObject("chandrila", "object/tangible/item/lytus_family_artefact.iff", 9.9, 0.6, 3.5, 35792086, math.rad(-90) )
	spawnSceneObject("chandrila", "object/tangible/furniture/cheap/coffee_table_s01.iff", 8.8, 0.6, 3.3, 35792086, math.rad(90) )
	
	spawnSceneObject("chandrila", "object/tangible/furniture/cheap/couch_s01.iff", 6.3, 0.6, 0.6, 35792086, math.rad(0) )
	spawnSceneObject("chandrila", "object/tangible/item/lytus_family_artefact.iff", 6.3, 0.6, 0.6, 35792086, math.rad(0) )
	
	spawnSceneObject("chandrila", "object/tangible/furniture/cheap/couch_s01.iff", 2.1, 0.6, 0.6, 35792086, math.rad(0) )
	spawnSceneObject("chandrila", "object/tangible/item/lytus_family_artefact.iff", 2.1, 0.6, 0.6, 35792086, math.rad(0) )
	
	spawnSceneObject("chandrila", "object/tangible/furniture/cheap/couch_s01.iff", 3.0, 0.6, 6.2, 35792086, math.rad(180) )
  spawnSceneObject("chandrila", "object/tangible/item/lytus_family_artefact.iff", 3.0, 0.6, 6.2, 35792086, math.rad(180) )
  
  spawnSceneObject("chandrila", "object/tangible/terminal/terminal_mission.iff", -5249.1, 19.9, 341.8, 0, math.rad(90) )
  
end

function NayliOutpostScreenPlay:spawnMobiles()

	--Outdoors
	local pNpc = spawnMobile("chandrila", "surgical_droid_21b",60,3.1,0.1,11.5,0,0)
	self:setMoodString(pNpc, "neutral")

	pNpc = spawnMobile("chandrila", "chandrila_park_ranger",60,-5255.0,23.0,345.1,151,0)
	self:setMoodString(pNpc, "conversation")
	
	pNpc = spawnMobile("chandrila", "chandrila_park_ranger",60,-5254.0,23.0,343.0,-18,0)
	self:setMoodString(pNpc, "conversation")
	
	pNpc = spawnMobile("chandrila", "chandrila_park_ranger",60,-5271.7,18.2,268.9,-123,0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("chandrila", "chandrila_park_ranger",60,-5214.4,20.1,312.0,-90,0)
  self:setMoodString(pNpc, "conversation")
	
	pNpc = spawnMobile("chandrila", "commoner",60,4.4,0.6,2.2,-42,35792086)
  self:setMoodString(pNpc, "conversation")
	
	pNpc = spawnMobile("chandrila", "commoner",60,1.3,0.6,4.2,133,35792086)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("chandrila", "commoner",60,-5243.8,19.7,317.5,-140,0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("chandrila", "noble",60,-5246.7,19.6,313.4,29,0)
  self:setMoodString(pNpc, "conversation")
  
  -- Squalls
  spawnMobile("chandrila", "squall",60,-5263.9,19.2,296.1,165,0)
  spawnMobile("chandrila", "squall",60,-5249.3,19.2,299,120,0)
  spawnMobile("chandrila", "squall",60,-5231,19.6,303,-82,0)
  spawnMobile("chandrila", "squall",60,-5227.6,19.8,307.4,43,0)
  

  
	-- Gladean Park Ranger OP POI
	pNpc = spawnMobile("chandrila", "chandrila_park_ranger",60,-5013.6,9.1,4091.8,45,0)
  self:setMoodString(pNpc, "conversation") 
  pNpc = spawnMobile("chandrila", "chandrila_park_ranger",60,-5013.1,9.3,4079.6,124,0)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("chandrila", "chandrila_park_ranger",60,-5025.9,9.8,4078.8,-134,0)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("chandrila", "chandrila_park_ranger",60,-5026.1,10.0,4092.0,-47,0)
  self:setMoodString(pNpc, "conversation")

end
