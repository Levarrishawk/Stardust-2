local ObjectManager = require("managers.object.object_manager")

MorabandValleyScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "MorabandValleyScreenPlay"
}

registerScreenPlay("MorabandValleyScreenPlay", true)

function MorabandValleyScreenPlay:start()
	if (isZoneEnabled("moraband")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:spawnActiveArea1()
		self:spawnActiveArea2()
		self:spawnActiveArea3()
	end
end

function MorabandValleyScreenPlay:spawnSceneObjects()

	--Sith Academy
	spawnSceneObject("moraband", "object/static/structure/general/cave_wall_damprock_style_01.iff", -55.6, 4.0, 71, 42000029, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/cave_wall_damprock_style_01.iff", -28.9, 34, 56, 42000033, math.rad(0) )
  -- Council Chamber
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_throne.iff", 0, 58, -52.7, 42000037, math.rad(0) )
  
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", -14, 55, -37, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", -14, 55, -33, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", -14, 55, -29, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", -14, 55, -25, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", -14, 55, -21, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", -14, 55, -17, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", -14, 55, -13, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", -14, 55, -9, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", -14, 55, -5, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", -14, 55, -1, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", -14, 55, 3, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", -14, 55, 8, 42000037, math.rad(90) )
  
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", 14, 55, -37, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", 14, 55, -33, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", 14, 55, -29, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", 14, 55, -25, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", 14, 55, -21, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", 14, 55, -17, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", 14, 55, -13, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", 14, 55, -9, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", 14, 55, -5, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", 14, 55, -1, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", 14, 55, 3, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", 14, 55, 8, 42000037, math.rad(-90) )
  
  --
  spawnSceneObject("moraband", "object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -1202, 16, -823.6, 0, math.rad(-5) )
  spawnSceneObject("moraband", "object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -1202, 20, -823.6, 0, math.rad(-5) )
  
  spawnSceneObject("moraband", "object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -1481.4, 14, -948.7, 0, math.rad(-15) )
  spawnSceneObject("moraband", "object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -1481.4, 18, -948.7, 0, math.rad(-15) )
  
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -10.0, 58, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -6.0, 58, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -2.0, 58, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 2.0, 58, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 6.0, 58, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 10.0, 58, -58, 42000037, math.rad(0) )
 
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -10.0, 68, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -6.0, 68, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -2.0, 68, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 2.0, 68, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 6.0, 68, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 10.0, 68, -58, 42000037, math.rad(0) )
 
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -10.0, 78, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -6.0, 78, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -2.0, 78, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 2.0, 78, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 6.0, 78, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 10.0, 78, -58, 42000037, math.rad(0) )
 
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -10.0, 88, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -6.0, 88, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -2.0, 88, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 2.0, 88, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 6.0, 88, -58, 42000037, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 10.0, 88, -58, 42000037, math.rad(0) )
 
  
  spawnSceneObject("moraband", "object/tangible/furniture/city/statue_sentinel_02.iff", -20, 55, 7, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/tangible/furniture/city/statue_sentinel_02.iff", -20, 55, -15, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/tangible/furniture/city/statue_sentinel_02.iff", -20, 55, -37, 42000037, math.rad(90) ) 
  spawnSceneObject("moraband", "object/tangible/furniture/city/statue_sentinel_02.iff", 20, 55, 7, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/tangible/furniture/city/statue_sentinel_02.iff", 20, 55, -15, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/tangible/furniture/city/statue_sentinel_02.iff", 20, 55, -37, 42000037, math.rad(-90) )
  
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -20, 55, 7, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -20, 55, -15, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -20, 55, -37, 42000037, math.rad(90) ) 
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 20, 55, 7, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 20, 55, -15, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 20, 55, -37, 42000037, math.rad(-90) )
  
  spawnSceneObject("moraband", "object/tangible/furniture/city/statue_sentinel_02.iff", -10, 55, 50, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -10, 55, 50, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/tangible/furniture/city/statue_sentinel_02.iff", -10, 55, 42, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -10, 55, 42, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/tangible/furniture/city/statue_sentinel_02.iff", -10, 55, 34, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -10, 55, 34, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/tangible/furniture/city/statue_sentinel_02.iff", -10, 55, 26, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -10, 55, 26, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/tangible/furniture/city/statue_sentinel_02.iff", -10, 55, 18, 42000037, math.rad(90) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -10, 55, 18, 42000037, math.rad(90) )
  
  spawnSceneObject("moraband", "object/tangible/furniture/city/statue_sentinel_02.iff", 10, 55, 50, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 10, 55, 50, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/tangible/furniture/city/statue_sentinel_02.iff", 10, 55, 42, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 10, 55, 42, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/tangible/furniture/city/statue_sentinel_02.iff", 10, 55, 34, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 10, 55, 34, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/tangible/furniture/city/statue_sentinel_02.iff", 10, 55, 26, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 10, 55, 26, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/tangible/furniture/city/statue_sentinel_02.iff", 10, 55, 18, 42000037, math.rad(-90) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 10, 55, 18, 42000037, math.rad(-90) )
 
 
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 0, -37, 0, 42000040, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 0, -32, 0, 42000040, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 0, -28, 0, 42000040, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 0, -23, 0, 42000040, math.rad(0) )
  spawnSceneObject("moraband", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 0, -18, 0, 42000040, math.rad(0) )
  
  spawnSceneObject("moraband", "object/static/particle/pt_flocking_glowzees.iff", 0, -37, 0, 42000040, math.rad(0) )
  spawnSceneObject("moraband", "object/static/particle/pt_flocking_glowzees.iff", 0, -32, 0, 42000040, math.rad(0) )
  spawnSceneObject("moraband", "object/static/particle/pt_flocking_glowzees.iff", 0, -28, 0, 42000040, math.rad(0) )
  spawnSceneObject("moraband", "object/static/particle/pt_flocking_glowzees.iff", 0, -23, 0, 42000040, math.rad(0) )
  spawnSceneObject("moraband", "object/static/particle/pt_flocking_glowzees.iff", 0, -18, 0, 42000040, math.rad(0) )
  
  spawnSceneObject("moraband", "object/static/particle/pt_poi_electricity_2x2.iff", 0, -5, 0, 42000040, math.rad(0) )
  
  
  -- Dreshdae Structures
  
  spawnSceneObject("moraband", "object/static/structure/tatooine/antenna_tatt_style_1.iff", 1082, 18, -5292, 0, math.rad(0) )
  spawnSceneObject("moraband", "object/static/installation/mockup_mining_liquid_moisture_harvester.iff", 1078, 18, -5269, 0, math.rad(0) )
  spawnSceneObject("moraband", "object/static/installation/mockup_mining_liquid_moisture_harvester.iff", 1103, 18, -5231, 0, math.rad(0) )
  spawnSceneObject("moraband", "object/static/installation/mockup_mining_liquid_moisture_harvester.iff", 1163, 18, -5265, 0, math.rad(0) )
  spawnSceneObject("moraband", "object/static/installation/mockup_mining_liquid_moisture_harvester.iff", 1167, 18, -5338, 0, math.rad(0) )
  spawnSceneObject("moraband", "object/static/installation/mockup_mining_liquid_moisture_harvester.iff", 1117, 18, -5423, 0, math.rad(0) )
  spawnSceneObject("moraband", "object/static/installation/mockup_mining_liquid_moisture_harvester.iff", 1052, 18, -5402, 0, math.rad(0) )
  spawnSceneObject("moraband", "object/static/installation/mockup_mining_liquid_moisture_harvester.iff", 995, 18, -5342, 0, math.rad(0) )
 
end

function MorabandValleyScreenPlay:spawnMobiles()

	--Dreshdae Village 
	
  local pNpc = spawnMobile("moraband", "commoner", 60, -0.5, 0.4, -4.6, 33, 42000304)
    self:setMoodString(pNpc, "npc_sitting_chair")
    
    pNpc = spawnMobile("moraband", "commoner", 60, -0.6, 0.4, -1.4, 142, 42000304)
    self:setMoodString(pNpc, "npc_sitting_chair")
    
    pNpc = spawnMobile("moraband", "commoner", 60, 5.1, 0.4, -4.6, -14, 42000304)
    self:setMoodString(pNpc, "npc_sitting_chair")
    
    pNpc = spawnMobile("moraband", "commoner", 60, -4.0, 0.4, -7.2, -47, 42000304)
    self:setMoodString(pNpc, "conversation")
    
    pNpc = spawnMobile("moraband", "commoner", 60, -6.8, 0.4, -4.3, 133, 42000304)
    self:setMoodString(pNpc, "conversation")
    
    pNpc = spawnMobile("moraband", "commoner", 60, -8.7, 1.0, 9.7, 119, 42000305)
    self:setMoodString(pNpc, "npc_sitting_chair")
    
    pNpc = spawnMobile("moraband", "commoner", 60, -6.5, 1.0, 7.6, -49, 42000305)
    self:setMoodString(pNpc, "npc_accusing")
    
    pNpc = spawnMobile("moraband", "commoner", 60, 1072, 18, -5327, 49, 0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("moraband", "commoner", 60, 1116, 18, -5336, -73, 0)
    self:setMoodString(pNpc, "neutral")
 
    pNpc = spawnMobile("moraband", "commoner", 60, 1101, 18, -5311, -173, 0)
    self:setMoodString(pNpc, "neutral")
 
 
    -- Shyrack Cave
    spawnMobile("moraband", "terentatek", 60, -58, -57.8, -231, -5, 42000085)
    spawnMobile("moraband", "terentatek", 60, -80.8, -58.4, -187.4, 52, 42000084)
    spawnMobile("moraband", "terentatek", 60, -49.6, -58.8, -182.1, -52, 42000084)
    
    spawnMobile("moraband", "shyrack", 60, -64.5, -58.2, -139, 0, 42000081)
    spawnMobile("moraband", "shyrack", 60, -48.5, -61, -126, 0, 42000081)
    
    spawnMobile("moraband", "shyrack", 60, -22.3, -60.1, -109.7, 87, 42000078) -- Lower level (multi tiered cell)
    
    spawnMobile("moraband", "shyrack", 60, 3.4, -63.4, -107.1, -36, 42000082)
    
    spawnMobile("moraband", "shyrack", 60, 4.5, -59.4, -68.9, 90, 42000076) -- Lower level (multi tiered cell)
    
    spawnMobile("moraband", "shyrack", 60, 39.3, -58.3, -86.7, -46, 42000083)
    spawnMobile("moraband", "shyrack", 60, 30.8, -59.2, -90.2, -5, 42000083)
    spawnMobile("moraband", "shyrack", 60, 49, -57.6, -85.6, -63, 42000083)
    spawnMobile("moraband", "shyrack", 60, 46, -59.3, -67.9, -89, 42000083)
    
    spawnMobile("moraband", "shyrack", 60, -77, -63.5, -106, -174, 42000065) -- Lower level (multi tiered cell)
    spawnMobile("moraband", "shyrack", 60, -92.6, -62.8, -120.8, -14, 42000065)
    spawnMobile("moraband", "shyrack", 60, -111.3, -61.4, -104.9, 121, 42000065)
    
    spawnMobile("moraband", "shyrack", 60, -107.8, -58.8, -137, -101, 42000080)
    spawnMobile("moraband", "shyrack", 60, -124.4, -52.5, -138.4, -23, 42000080)
    
    spawnMobile("moraband", "shyrack", 60, -128.8, -45.8, -112.3, 89, 42000079)
    
    spawnMobile("moraband", "shyrack", 60, -52.7, -41.6, -103.5, 69, 42000078) -- Upper Level (multi tiered cell)
    spawnMobile("moraband", "shyrack", 60, -27.2, -36.2, -99, -7, 42000078)
    
    spawnMobile("moraband", "shyrack", 60, -20.1, -27.1, -68.9, 94, 42000076) -- Upper level (multi tiered cell)
    spawnMobile("moraband", "shyrack", 60, 18.5, -27.3, -75.3, -11, 42000076)
    
    spawnMobile("moraband", "tukata", 60, -21, -21.1, -26.7, -1, 42000058)
    spawnMobile("moraband", "tukata", 60, -28.6, -22.5, -20.2, 78, 42000058)
    spawnMobile("moraband", "tukata", 60, -39.6, -24.7, -23.2, 0, 42000058)
    spawnMobile("moraband", "tukata", 60, -8.6, -22.5, -46, -91, 42000058)
    
    spawnMobile("moraband", "tukata", 60, -43.8, -21.8, -47.1, 40, 42000059)
    spawnMobile("moraband", "tukata", 60, -52.3, -21.8, -40.8, 105, 42000059)
    
    spawnMobile("moraband", "tukata", 60, -72.6, -22.5, -45.6, 71, 42000061)
    spawnMobile("moraband", "tukata", 60, -66.8, -22.8, -64.9, 7, 42000061)
    
    spawnMobile("moraband", "tukata", 60, -73, -30.1, -113.3, -95, 42000065) -- Top Level (Multi tiered cell)
    spawnMobile("moraband", "tukata", 60, -86.8, -29, -122.4, 83, 42000065)
    spawnMobile("moraband", "tukata", 60, -104, -30.7, -106.1, 165, 42000065)
    
    spawnMobile("moraband", "tukata", 60, -104, -30.9, -84, 177, 42000067) -- Top level (multi tiered cell)
    spawnMobile("moraband", "tukata", 60, -127.3, -30.1, -81.4, 87, 42000067)
    
    spawnMobile("moraband", "tukata", 60, -125.9, -25.9, -63.6, 86, 42000062) -- Top level (multi tiered cell)
    spawnMobile("moraband", "tukata", 60, -105.3, -28.1, -65.2, -88, 42000062)
    
    spawnMobile("moraband", "tukata", 60, -103.9, -34.2, -30, 177, 42000072) -- Upper level   
    spawnMobile("moraband", "tukata", 60, -113.6, -50.4, -31, -78, 42000072) -- Lower level
    
    spawnMobile("moraband", "tukata", 60, -119.3, -38.6, -8.7, 98, 42000073)
    
    spawnMobile("moraband", "tukata", 60, -80, -53.8, -61.3, 172, 42000070)
    
    spawnMobile("moraband", "tukata", 60, -102.3, -47.2, -81.2, -92, 42000067) -- Lower level (multi tiered cell)
    spawnMobile("moraband", "tukata", 60, -115, -46.7, -88.3, -92, 42000067)
    spawnMobile("moraband", "tukata", 60, -123.3, -45.8, -82.1, -87, 42000067)
    spawnMobile("moraband", "tukata", 60, -136.6, -46.2, -89.2, -40, 42000067)
    spawnMobile("moraband", "tukata", 60, -143.3, -46, -82, 135, 42000067)
    
    spawnMobile("moraband", "tukata", 60, -144.6, -45.5, -114.6, 0, 42000068)
    spawnMobile("moraband", "tukata", 60, -163.5, -48.1, -121.6, 92, 42000068)
    spawnMobile("moraband", "tukata", 60, -176.4, -44, -102.2, 173, 42000068)   
    
    spawnMobile("moraband", "tukata", 60, -174.5, -41.1, -77.4, 179, 42000066)
    
    spawnMobile("moraband", "tukata", 60, -169.7, -41.7, -87.2, -175, 42000066)
    spawnMobile("moraband", "tukata", 60, -164.9, -41.4, -58.6, -175, 42000066)
    
    spawnMobile("moraband", "tukata", 60, -151.1, -43, -41.6, 89, 42000064)
    
    spawnMobile("moraband", "tukata", 60, -127.8, -41.4, -65, -68, 42000062)
    spawnMobile("moraband", "tukata", 60, -116.3, -41.4, -57.4, -104, 42000062)
    spawnMobile("moraband", "tukata", 60, -97.3, -43.7, -60.5, -88, 42000062)
    
    spawnMobile("moraband", "tukata", 60, -71, -38.6, -57.7, 44, 42000061)
    
    spawnMobile("moraband", "tukata", 60, -64.7, -37, -17.2, 70, 42000060)
    
    spawnMobile("yavin4", "klor_slug",600,-9,-37.3,-9,48,42000040)
    spawnMobile("yavin4", "klor_slug",600,-10.5,-37.3,4.2,111,42000040)
    spawnMobile("yavin4", "klor_slug",600,6.6,-37.3,12.8,-149,42000040)
    spawnMobile("yavin4", "klor_slug",600,10.2,-37.3,4.8,-110,42000040)
    spawnMobile("yavin4", "klor_slug",600,10.9,-37.3,-3.9,-69,42000040)
    spawnMobile("yavin4", "klor_slug",600,-12.1,-37.3,18.2,74,42000040)
    
    spawnMobile("yavin4", "klor_slug",600,-0.6,-37.3,-28.3,-19,42000040)
    
    spawnMobile("yavin4", "klor_slug",600,-24,-1.3,10.3,93,42000040)
    spawnMobile("yavin4", "klor_slug",600,-16.4,-1.3,-21,49,42000040)
    spawnMobile("yavin4", "klor_slug",600,12.1,-1.3,-23.4,21,42000040)
    spawnMobile("yavin4", "klor_slug",600,23.4,-1.3,11,-77,42000040)
      
   end

  


function MorabandValleyScreenPlay:spawnActiveArea1()
  local pSpawnArea1 = spawnSceneObject("moraband", "object/active_area.iff", -1319, 14, -585, 0, 0)
    
  if (pSpawnArea1 ~= nil) then
    local activeArea1 = LuaActiveArea(pSpawnArea1)
          activeArea1:setCellObjectID(0)
          activeArea1:setRadius(32)
          createObserver(ENTEREDAREA, "MorabandValleyScreenPlay", "notifySpawnArea1", pSpawnArea1)
          --createObserver(EXITEDAREA, "MorabandValleyScreenPlay", "notifySpawnAreaLeave", pSpawnArea1)
      end
end

function MorabandValleyScreenPlay:notifySpawnArea1(pActiveArea1, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral())) then

      player:sendSystemMessage("You feel cold as you approach the edifice of the Tomb.")
      player:playMusicMessage("sound/music_event_danger.snd")
      
      end
    return 0    
  end)
end

function MorabandValleyScreenPlay:spawnActiveArea2()
  local pSpawnArea2 = spawnSceneObject("moraband", "object/active_area.iff", -1102, 93, -484, 0, 42000220)
    
  if (pSpawnArea2 ~= nil) then
    local activeArea2 = LuaActiveArea(pSpawnArea2)
          activeArea2:setCellObjectID(42000220)
          activeArea2:setRadius(512)
          createObserver(ENTEREDAREA, "MorabandValleyScreenPlay", "notifySpawnArea2", pSpawnArea2)
          --createObserver(EXITEDAREA, "MorabandValleyScreenPlay", "notifySpawnAreaLeave", pSpawnArea1)
      end
end

function MorabandValleyScreenPlay:notifySpawnArea2(pActiveArea2, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if (( player:isRebel()or player:isNeutral() )) then

      player:sendSystemMessage("You feel uneasy as you enter the building.  The Dark Side is strong here.")
      player:playMusicMessage("sound/music_bcome_light_jedi.snd")
    end  
    if (( player:isImperial() )) then
      player:sendSystemMessage("You feel a rush of energy.  The Dark Side is strong here.")
      player:playMusicMessage("sound/music_become_dark_jedi.snd")
    end
    return 0    
  end)
end


function MorabandValleyScreenPlay:spawnActiveArea3()
  local pSpawnArea3 = spawnSceneObject("moraband", "object/active_area.iff", -1159, 12, -1021, 0, 0)
    
  if (pSpawnArea3 ~= nil) then
    local activeArea3 = LuaActiveArea(pSpawnArea3)
          activeArea3:setCellObjectID(0)
          activeArea3:setRadius(20)
          createObserver(ENTEREDAREA, "MorabandValleyScreenPlay", "notifySpawnArea3", pSpawnArea3)
          --createObserver(EXITEDAREA, "MorabandValleyScreenPlay", "notifySpawnAreaLeave", pSpawnArea1)
      end
end

function MorabandValleyScreenPlay:notifySpawnArea3(pActiveArea2, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral())) then

      player:sendSystemMessage("You feel an uncontrollable sense of anger as you approach the edifice of the Tomb.")
      player:playMusicMessage("sound/music_event_danger.snd")
      
      end
    return 0    
  end)
end