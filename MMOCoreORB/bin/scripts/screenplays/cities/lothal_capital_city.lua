LohthalCityScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "LohthalCityScreenPlay",
	
	planet = "lothal",
}

registerScreenPlay("LohthalCityScreenPlay", true)

function LohthalCityScreenPlay:start()
	if (isZoneEnabled("lothal")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:startTinkerConvo()
		
		writeData("LohthalCityScreenPlay:tinkerConvoInProgress", 0) 
    writeData("LohthalCityScreenPlay:tinkerConvoState", 0) 
	end
end

function LohthalCityScreenPlay:spawnSceneObjects()

	--Cantina Static Objects
	spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 27.1, -0.9, 12.0, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 27.1, -0.9, -10.9, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -16.4, -0.9, 0.4, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 15.0, -0.9, -3.9, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 15.6, -0.9, 5.7, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -1.2, -0.9, 11.3, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 11.8, -0.9, -10.2, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -1.1, -0.9, -10.3, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -11.4, -0.9, -7.6, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 34.4, 0.1, 1.6, 58000198, math.rad(0) )
  spawnSceneObject("lothal", "object/tangible/gambling/wheel/roulette.iff", 34.4, 0.1, 1.6, 58000198, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 31.7, 0.1, -6.8, 58000198, math.rad(0) ) -- -1
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_red_style_02_on.iff", -16.7, -0.9, 26.4, 58000208, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_red_style_02_on.iff", -31.7, -0.9, 17.1, 58000208, math.rad(0) ) -- +9
  spawnSceneObject("lothal", "object/static/particle/pt_sparking_blast_md.iff", 24.5, 3, 9.5, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/particle/pt_flocking_glowzees.iff", 24.5, 0, 9.5, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/tangible/painting/painting_rodian_m.iff", 27.5, 0.6, -5.8, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/item/item_scrolling_screen.iff", 9.8, 3.6, 0.1, 58000199, math.rad(0) )  
  
  spawnSceneObject("lothal", "object/tangible/furniture/tatooine/frn_tato_meat_rack.iff", -26, -0.9, 3.0, 58000207, math.rad(0) ) -- +8
  spawnSceneObject("lothal", "object/tangible/furniture/tatooine/frn_tato_meat_rack.iff", -26, -0.9, -2.5, 58000207, math.rad(0) )
  
 

    
-- Starport N Static Objects
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 12.2, 0.6, 50.2, 58000288, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -0.2, 0.6, 48.1, 58000288, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -13.5, 0.6, 50.9, 58000288, math.rad(0) )
  
  -- Starport S Static Objects
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 12.2, 0.6, 50.2, 58000177, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -0.2, 0.6, 48.1, 58000177, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -13.5, 0.6, 50.9, 58000177, math.rad(0) )
  
  
  -- med center
  spawnSceneObject("lothal", "object/tangible/terminal/terminal_event_buffs.iff", -10.6, 0.3, 0.0, 58000275, math.rad(-90) )
  spawnSceneObject("lothal", "object/tangible/terminal/terminal_event_buffs.iff", 10.8, 0.3, 0.0, 58000271, math.rad(90) )
  
  --cantina
 spawnSceneObject("lothal", "object/soundobject/soundobject_music_cantina_general.iff", 10.65,-0.894992,1.91, 58000199, math.rad(0) )
 
 spawnSceneObject("lothal", "object/tangible/veteran_reward/mace_windu_statue.iff", -0.2,1.3,11.4, 58000253, math.rad(0) )
 
 --terminals
 spawnSceneObject("lothal", "object/tangible/terminal/terminal_mission.iff", -1313.6, 28, -3251.8, 0, math.rad(-90) )
 spawnSceneObject("lothal", "object/tangible/terminal/terminal_mission.iff", -1314.5, 28, -3034.5, 0, math.rad(-90) )
 
 -- Theater
 spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_style_01_on.iff", 10.7, 2.1, 48.6, 58000311, math.rad(0) )
 spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_style_01_on.iff", 6.1, 2.1, 48.6, 58000311, math.rad(0) )
 spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_style_01_on.iff", 0.5, 2.1, 48.6, 58000311, math.rad(0) )
 spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_style_01_on.iff", -5.0, 2.1, 48.6, 58000311, math.rad(0) )
 spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_style_01_on.iff", -9.6, 2.1, 48.6, 58000311, math.rad(0) )
 
 spawnSceneObject("lothal", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", -26.2, 0.6, 43.8, 58000311, math.rad(0) )
 spawnSceneObject("lothal", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", -26.2, 1.3, 36.7, 58000311, math.rad(0) )
 spawnSceneObject("lothal", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", -26.2, 2.0, 29.2, 58000311, math.rad(0) )
 
 spawnSceneObject("lothal", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", -26.2, 2.6, 21.7, 58000311, math.rad(0) )
 spawnSceneObject("lothal", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", -26.2, 2.6, 14.9, 58000311, math.rad(0) )
 spawnSceneObject("lothal", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", -18.8, 2.6, 14.9, 58000311, math.rad(0) )
 spawnSceneObject("lothal", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", -10.0, 2.6, 14.9, 58000311, math.rad(0) )
 spawnSceneObject("lothal", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", 26.3, 2.6, 14.9, 58000311, math.rad(0) )
 spawnSceneObject("lothal", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", 19.4, 2.6, 14.9, 58000311, math.rad(0) )
 spawnSceneObject("lothal", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", 10.0, 2.6, 14.9, 58000311, math.rad(0) ) 
 spawnSceneObject("lothal", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", 26.3, 2.6, 21.7, 58000311, math.rad(0) )
 
 spawnSceneObject("lothal", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", 26.2, 0.6, 43.8, 58000311, math.rad(0) )
 spawnSceneObject("lothal", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", 26.2, 1.3, 36.7, 58000311, math.rad(0) )
 spawnSceneObject("lothal", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", 26.2, 2.0, 29.2, 58000311, math.rad(0) )
 
end

function LohthalCityScreenPlay:spawnMobiles()

  -- Tinker Convo
  local pKid1 = spawnMobile("lothal", "commoner_child",0,-1186.9,28,-3173.7,78,0)  -- -55.1,31.5,-120.3,-33,12112248  Original NGE Position (changed to outdoors due to spatialChat not working in cell)
      self:setMoodString(pKid1, "npc_use_terminal_high")    
  local pKid2 = spawnMobile("lothal", "commoner_child",0,-1186.5,28,-3171.2,-174,0)  -- -56.7,31.5,-118.9,-90,12112248 Original NGE Position (changed to outdoors due to spatialChat not working in cell)
      self:setMoodString(pKid2, "conversation")    
      
  writeData("LohthalCityScreenPlay:pKid1_objectID", SceneObject(pKid1):getObjectID() )
  writeData("LohthalCityScreenPlay:pKid2_objectID", SceneObject(pKid2):getObjectID() ) 


	--Outdoors
	local pNpc = spawnMobile("lothal", "surgical_droid_21b",60,3.1,0.1,11.5,0,0)
	self:setMoodString(pNpc, "neutral")
	
  
  
	-- Cantina
	
  pNpc = spawnMobile("lothal", "bartender",60,-11.5,-0.9,2,230,58000199)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("lothal", "businessman",60,10.65,-0.894992,1.91,330,58000199)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("lothal", "businessman",60,-4.11,-0.894992,5.4,26.8951,58000199)
  self:setMoodString(pNpc, "happy")
  pNpc = spawnMobile("lothal", "commoner",60,10.17,-0.894992,2.74,125.098,58000199)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("lothal", "commoner_fat",60,2.11,-0.894992,5.4,180,58000199)
  self:setMoodString(pNpc, "npc_standing_drinking")
  
  pNpc = spawnMobile("lothal", "commoner_fat",60,-3.2,-0.9,-10.8,65,58000199)
  self:setMoodString(pNpc, "npc_sitting_table_eating")
  pNpc = spawnMobile("lothal", "commoner_naboo",60,3.11,0,5.4,161.005,58000199)
  self:setMoodString(pNpc, "bored")
  pNpc = spawnMobile("lothal", "commoner_naboo",60,1.11,0,5.4,330.024,58000199)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("lothal", "commoner_naboo",60,-3.11,0,5.4,16.6733,58000199)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("lothal", "commoner_naboo",60,16.1,-0.9,4.1,340,58000199)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("lothal", "commoner_tatooine",60,4.11,-0.894992,5.4,158.443,58000199)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("lothal", "commoner_tatooine",60,1.99,-0.894992,-8.44,325.01,58000199)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("lothal", "commoner_tatooine",60,1.19,-0.894992,-7.63,152.004,58000199)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("lothal", "entertainer",60,9.4,0,3.9,310,58000199)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("lothal", "noble",60,8.49,-0.894992,4.64,128.74,58000199)
  self:setMoodString(pNpc, "conversation")
  
  --
  pNpc = spawnMobile("lothal", "patron",60,13.7,-0.9,-5.6,67,58000199)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("lothal", "patron",60,13.6,-0.9,-2.4,147,58000199)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("lothal", "patron",60,16.3,-0.9,-5.6,320,58000199)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("lothal", "patron",60,23.5,-0.9,-8.9,51,58000199)
  self:setMoodString(pNpc, "npc_sitting_table")
  pNpc = spawnMobile("lothal", "patron",60,26.3,-0.9,-8.8,317,58000199)
  self:setMoodString(pNpc, "npc_sitting_table_eating")
  pNpc = spawnMobile("lothal", "patron",60,19.1,-0.9,6.1,41,58000199)
  self:setMoodString(pNpc, "entertained")
  pNpc = spawnMobile("lothal", "patron",60,22.2,-0.9,4.3,22,58000199)
  self:setMoodString(pNpc, "entertained")
  pNpc = spawnMobile("lothal", "patron",60,-3.1,-0.9,11.6,97,58000199)
  self:setMoodString(pNpc, "npc_sitting_table")
  
  
  pNpc = spawnMobile("lothal", "patron",60,1.2,-0.9,11.6,269,58000199)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("lothal", "patron_ithorian",60,14.1,-0.9,4.3,51,58000199)
  self:setMoodString(pNpc, "npc_sitting_table")
  pNpc = spawnMobile("lothal", "patron_klaatu",60,14.4,-0.9,7.5,139,58000199)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("lothal", "patron_quarren",60,17.1,-0.9,7.8,226,58000199)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  

  
  -- Profession Trainers
  spawnMobile("lothal", "trainer_chef",60,11.4,1.1,5.8,178,58000232)
  spawnMobile("lothal", "trainer_tailor",60,11.1,1.1,-11.7,0,58000234)
  spawnMobile("lothal", "trainer_weaponsmith",60,-3.0,1.1,-8.7,117,58000235)
  spawnMobile("lothal", "trainer_droidengineer",60,-10.8,1.1,-12.1,0,58000236)
  spawnMobile("lothal", "trainer_armorsmith",60,-14.9,1.1,0.3,87,58000233)
  spawnMobile("lothal", "trainer_armorweaver",60,-8.5,1.1,3.0,-143,58000233)
  
  spawnMobile("lothal", "trainer_rifleman",60,12.1,1.1,1.7,177,58000343)
  spawnMobile("lothal", "trainer_2hsword",60,11.1,1.1,-11.0,0,58000345)
  spawnMobile("lothal", "trainer_carbine",60,-0.2,1.1,-11.2,0,58000346)
  spawnMobile("lothal", "trainer_polearm",60,-11.0,1.1,-11.7,-5,58000347)
  spawnMobile("lothal", "trainer_creaturehandler",60,-11.7,1.1,3.7,-179,58000344)    
  spawnMobile("lothal", "trainer_artisan",60,11.3,1.1,-10.8,0,58000355)
  spawnMobile("lothal", "trainer_architect",60,3.0,1.1,-9.3,-110,58000356) 
  spawnMobile("lothal", "trainer_politician",60,-0.1,3.2,21.4,180,58000252) 
  spawnMobile("lothal", "trainer_bioengineer",60,10.8,1.1,-11.3,1,58000365)  
  spawnMobile("lothal", "trainer_scout",60,4.8,1.1,-0.8,-94,58000362)
  spawnMobile("lothal", "trainer_ranger",60,-4.5,1.1,-1.4,86,58000362)  
  spawnMobile("lothal", "trainer_marksman",60,-1358,28,-3253.4,92,0)
  spawnMobile("lothal", "trainer_pistol",60,-1370.7,30.5,-3271.6,42,0)  
  spawnMobile("lothal", "trainer_medic",60,24.9,0.3,-0.5,-84,58000271)
  spawnMobile("lothal", "trainer_combatmedic",60,19.3,0.3,10.9,-179,58000271)
  spawnMobile("lothal", "trainer_doctor",60,-29.4,0.3,-5.4,82,58000275) 
  spawnMobile("lothal", "trainer_imagedesigner",60,0.7,0.6,-6.3,-54,58000597)  
  spawnMobile("lothal", "trainer_musician",60,29.0,2.1,74.3,-142,58000313)
  spawnMobile("lothal", "trainer_dancer",60,21.8,2.1,76.0,178,58000313)  
  spawnMobile("lothal", "trainer_smuggler",60,-12.0,1.1,5.2,177,35791510)
  spawnMobile("lothal", "trainer_bountyhunter",60,10.8,1.1,-11.7,0,35791511)
  spawnMobile("lothal", "trainer_commando",60,12.5,1.1,3.7,-171,35791509)
  
  -- Starport
  pNpc = spawnMobile(self.planet, "info_broker",60,8.5,0.6,74.4,-77,58000174) --1855672
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "noble",60,56.669,-0.521137,33.7689,180.017,58000180) --1855678
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "contractor",300,37.163,0.639417,40.7061,180.01,58000180) --1855678
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "mercenary",60,-4.61669,0.639424,67.8263,180.012,58000177) --1855675
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "bounty_hunter",300,8.65132,0.639421,75.5483,256.69,58000174) --1855672
  self:setMoodString(pNpc, "calm")
  pNpc = spawnMobile(self.planet, "businessman",60,37.163,0.639417,39.6061,0,58000180) --1855678
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "scientist",60,56.669,-0.521137,32.6689,360.011,58000180) --1855678
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "shadowy_figure",60,-4.61669,0.639424,66.7263,0,58000177) --1855675
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "farmer",60,-62.7673,2.63942,40.6604,360.011,58000185) --1855683
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "mercenary",300,-62.7673,2.63942,41.7604,179.995,58000185) --1855683
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "trainer_shipwright",60,-0.1,0.6,67.1,-179,58000177) --1855675
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile(self.planet, "commoner",60,8.5,0.6,74.4,-77,58000285) --1855672
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "noble",60,56.669,-0.521137,33.7689,180.017,58000291) --1855678
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "contractor",300,37.163,0.639417,40.7061,180.01,58000291) --1855678
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "mercenary",60,-4.61669,0.639424,67.8263,180.012,58000288) --1855675
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "bounty_hunter",300,8.65132,0.639421,75.5483,256.69,58000285) --1855672
  self:setMoodString(pNpc, "calm")
  pNpc = spawnMobile(self.planet, "businessman",60,37.163,0.639417,39.6061,0,58000291) --1855678
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "scientist",60,56.669,-0.521137,32.6689,360.011,58000291) --1855678
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "pirate",60,-4.61669,0.639424,66.7263,0,58000288) --1855675
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "farmer",60,-62.7673,2.63942,40.6604,360.011,58000296) --1855683
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "mercenary",300,-62.7673,2.63942,41.7604,179.995,58000296) --1855683
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "trainer_shipwright",60,-0.1,0.6,67.1,-179,58000288) --1855675
  self:setMoodString(pNpc, "neutral")
	
	
	pNpc = spawnMobile(self.planet, "patron",60,-1369.8,28,-3162.6,-78,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "patron",60,-1373.7,28,-3161.4,109,0) 
  self:setMoodString(pNpc, "conversation")
  
  spawnMobile(self.planet, "businessman",60,-1376.7,28,-3171.8,-15,0)
  
  pNpc = spawnMobile(self.planet, "patron",60,-1388.7,28,-3163.4,14,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "patron",60,-1387.6,28,-3160.6,-153,0) 
  self:setMoodString(pNpc, "conversation")
  
  spawnMobile(self.planet, "junk_dealer",60,-1467.1,28,-3177.3,-0,0)
  
  pNpc = spawnMobile(self.planet, "commoner",60,-1365,28,-3044,122,0) 
  self:setMoodString(pNpc, "npc_accusing")
  
  pNpc = spawnMobile(self.planet, "commoner",60,-1363.4,28,-3046.9,-54,0) 
  self:setMoodString(pNpc, "npc_consoling")
  
  pNpc = spawnMobile(self.planet, "entertainer",60,-45,0.1,-18.5,-47,58000211) 
  self:setMoodString(pNpc, "npc_accusing")
  pNpc = spawnMobile(self.planet, "commoner",60,-47.5,0.1,-16.5,124,58000211) 
  self:setMoodString(pNpc, "npc_consoling")
  
  pNpc = spawnMobile(self.planet, "vendor",60,-1215.7,28,-3089.5,90,0) 
  self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile(self.planet, "patron",60,-1213.1,28,-3089.8,-83,0) 
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile(self.planet, "vendor",60,-1216.6,28,-3101.9,90,0) 
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile(self.planet, "patron",60,-1212.8,28,-3103.9,175,0) 
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  pNpc = spawnMobile(self.planet, "vendor",60,-1162.6,28,-3111.1,-174,0) 
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile(self.planet, "commoner",60,-1178.6,28,-3172.8,-94,0) 
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  pNpc = spawnMobile(self.planet, "scientist",60,-1230.4,28,-3175.7,-52,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "artisan",60,-1234.8,28,-3173.2,93,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "entertainer",60,-1229.8,28,-3170.7,-147,0) 
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile(self.planet, "teras_kasi_master",60,-1172.3,28,-3068.1,-35,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "hunter",60,-1176.7,28,-3066.7,115,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "medic",60,-1171.9,28,-3064.5,177,0) 
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile(self.planet, "contractor",60,-1128.5,28,-3075.1,-3,0) 
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile(self.planet, "noble",60,-1113.3,28.2,-3031.7,39,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "agriculturalist",60,-1109.5,28.2,-3028.4,-127,0) 
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile(self.planet, "imperial_moff",60,1.3,3.1,-9.8,-93,58000253) 
  self:setMoodString(pNpc, "npc_accusing")  
  pNpc = spawnMobile(self.planet, "senator",60,-1.3,3.1,-9.8,84,58000253) 
  self:setMoodString(pNpc, "npc_accusing")
  
  pNpc = spawnMobile(self.planet, "farmer",60,-1.7,0.3,-1.6,170,58000253) 
  self:setMoodString(pNpc, "npc_accusing")
  pNpc = spawnMobile(self.planet, "rancher",60,-4.7,0.3,-3.4,136,58000253) 
  self:setMoodString(pNpc, "angry")
  pNpc = spawnMobile(self.planet, "farmer",60,-6.7,0.3,0.4,124,58000253) 
  self:setMoodString(pNpc, "happy")
  pNpc = spawnMobile(self.planet, "farmer",60,0.1,0.3,2.0,173,58000253) 
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile(self.planet, "scientist",60,1.9,0.3,-1.7,170,58000253) 
  self:setMoodString(pNpc, "npc_consoling")
  pNpc = spawnMobile(self.planet, "medic",60,4.9,0.3,-3.2,-144,58000253) 
  self:setMoodString(pNpc, "npc_accusing")
  pNpc = spawnMobile(self.planet, "commoner",60,6.6,0.3,0.5,-138,58000253) 
  self:setMoodString(pNpc, "npc_accusing")
  
  --Placeholder, will likely remove with creation of questline / theme park
  
  --Placeholder
  
  spawnMobile(self.planet, "r5",60,25.5,1.3,-5.0,56,58000253) 
  
  pNpc = spawnMobile(self.planet, "noble",60,-1248.3,28,-3115.0,-158,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "commoner",60,-1249.5,28,-3119.6,20,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "commoner",60,-1251.7,28,-3115.7,62,0) 
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile(self.planet, "informant_npc_lvl_2",60,-1217.0,28,-3037.3,90,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "bounty_hunter",60,-1212.5,28,-3038.3,-79,0) 
  self:setMoodString(pNpc, "npc_accusing")
  
  pNpc = spawnMobile(self.planet, "commoner_technician",60,-1213.7,28,-3062.8,167,0) 
  self:setMoodString(pNpc, "npc_use_terminal_high")
  pNpc = spawnMobile(self.planet, "vendor",60,-1210.6,28,-3066.7,91,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "commoner",60,-1208.1,28,-3066.8,-103,0) 
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile(self.planet, "commoner_technician",60,-1359.2,28,-3192.1,179,0) 
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  pNpc = spawnMobile(self.planet, "vendor",60,-1362.3,28,-3223.7,123,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "commoner",60,-1359.9,28,-3226.5,-35,0) 
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile(self.planet, "commoner",60,-1300.1,30.5,-3269.6,-39,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "artisan",60,-1302.4,30.5,-3266.9,129,0) 
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile(self.planet, "commoner_old",60,-1314.2,28,-3207.8,-97,0) 
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile(self.planet, "commoner",60,-1148.5,28.5,-3260.5,3,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "commoner",60,-1148.5,28.5,-3255,162,0) 
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile(self.planet, "businessman",60,-1106.3,28,-3227.0,44,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "contractor",60,-1100.5,28,-3223.8,-117,0) 
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile(self.planet, "commoner_old",60,-1079.4,28,-3106.3,-138,0) 
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile(self.planet, "commoner",60,-1317.6,28,-3054.0,-63,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "commoner",60,-1319.2,28,-3053.4,111,0) 
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile(self.planet, "vendor",60,-1295.7,28,-3117.6,-167,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "commoner_fat",60,-1296,28,-3120.3,7,0) 
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile(self.planet, "commoner_technician",60,-1177.8,28,-2913.8,41,0) 
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  pNpc = spawnMobile(self.planet, "businessman",60,-1177.8,28,-2912.4,110,0) 
  self:setMoodString(pNpc, "npc_accusing")
  
  pNpc = spawnMobile(self.planet, "rodian_thug",60,-1349.6,28,-2867.0,55,0) 
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  pNpc = spawnMobile(self.planet, "commoner",60,16.7,0.3,-3.3,-13,58000271) 
  self:setMoodString(pNpc, "npc_sitting_chair")  
  pNpc = spawnMobile(self.planet, "medic",60,15.4,0.3,-1.9,147,58000271) 
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  pNpc = spawnMobile(self.planet, "commoner",60,-1414.3,28,-2886.2,-179,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "commoner",60,-1411.8,28,-2890.4,-28,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "commoner",60,-1416.1,28,-2890,28,0) 
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile(self.planet, "commoner",60,-1446.8,28,-2985,-90,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "commoner",60,-1450.8,28,-2981.8,133,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "commoner",60,-1451,28,-2989.5,51,0) 
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile(self.planet, "commoner",60,-1514.5,28,-3106.5,131,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "commoner",60,-1509.6,28,-3109.3,-58,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "commoner",60,-1517.1,28,-3112.2,26,0) 
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile(self.planet, "commoner",60,-1597.4,28,-3113.4,-157,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "commoner",60,-1599.6,28,-3118.1,27,0) 
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile(self.planet, "commoner",60,-1389.3,28,-3110.8,-5,0) 
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  pNpc = spawnMobile(self.planet, "vendor",60,-1288.8,28,-3167.0,2,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "commoner",60,-1289.0,28,-3164.7,146,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "commoner",60,-1286.9,28,-3164.7,-159,0) 
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile(self.planet, "commoner",60,-1434.7,28,-3045.5,171,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "commoner",60,-1430,28,-3049.5,-21,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "commoner",60,-1436.5,28,-3049.8,146,0) 
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile(self.planet, "commoner",60,-1476.1,28,-3302,-86,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "commoner",60,-1479.8,28,-3302.7,88,0) 
  self:setMoodString(pNpc, "conversation")
end


function LohthalCityScreenPlay:startTinkerConvo(pActiveArea1, pMovingObject, pPlayer, pKid1, pKid2)
  
   local pKid2 = getSceneObject(readData("LohthalCityScreenPlay:pKid2_objectID"))
   local pKid1 = getSceneObject(readData("LohthalCityScreenPlay:pKid1_objectID"))

   if not(readData("LohthalCityScreenPlay:tinkerConvoInProgress") == 1) then       
          writeData("LohthalCityScreenPlay:tinkerConvoInProgress", 1)
          createEvent(90 * 1000, "LohthalCityScreenPlay", "touristConvoF1", pKid2, "")
          createEvent(100 * 1000, "LohthalCityScreenPlay", "touristConvoM1", pKid1, "")
   else
      return 0
   end              
end






function LohthalCityScreenPlay:touristConvoF1(pKid2, pPlayer)
  
  local pKid2 = getSceneObject(readData("LohthalCityScreenPlay:pKid2_objectID"))
  
  if (readData("LohthalCityScreenPlay:tinkerConvoState") == 0) then
      spatialChat(pKid2, "You know that is never gonna work.  That old piece of junk'll never fly!")     
        writeData("LohthalCityScreenPlay:tinkerConvoState", 1)   
        createEvent(20 * 1000, "LohthalCityScreenPlay", "touristConvoF2", pKid2, "")  
  end
end

function LohthalCityScreenPlay:touristConvoM1(pKid1, pPlayer)
  
  local pKid1 = getSceneObject(readData("LohthalCityScreenPlay:pKid1_objectID"))
  
  if (readData("LohthalCityScreenPlay:tinkerConvoState") == 1) then
      spatialChat(pKid1, "It will too! And when I do I'm gonna fly anywhere I want to and you can't come!")     
        writeData("LohthalCityScreenPlay:tinkerConvoState", 2)   
        createEvent(20 * 1000, "LohthalCityScreenPlay", "touristConvoM2", pKid1, "")   
  end
end

function LohthalCityScreenPlay:touristConvoF2(pKid2, pPlayer)
  
  local pKid2 = getSceneObject(readData("LohthalCityScreenPlay:pKid2_objectID"))
  
  if (readData("LohthalCityScreenPlay:tinkerConvoState") == 2) then
      spatialChat(pKid2, "Nuh uh! You can't go unless you take me too!")     
        writeData("LohthalCityScreenPlay:tinkerConvoState", 3)    
        createEvent(20 * 1000, "LohthalCityScreenPlay", "touristConvoF3", pKid2, "")  
  end
end

function LohthalCityScreenPlay:touristConvoM2(pKid1, pPlayer)
  
  local pKid1 = getSceneObject(readData("LohthalCityScreenPlay:pKid1_objectID"))
  
  if (readData("LohthalCityScreenPlay:tinkerConvoState") == 3) then
      spatialChat(pKid1, "Can too, and I'm gonna fly all the way to Coruscant and see the Jedi Temple without you!")     
        writeData("LohthalCityScreenPlay:tinkerConvoState", 4)  
        createEvent(22 * 1000, "LohthalCityScreenPlay", "touristConvoM3", pKid1, "")   
  end
end

function LohthalCityScreenPlay:touristConvoF3(pKid2, pPlayer)
  
  local pKid2 = getSceneObject(readData("LohthalCityScreenPlay:pKid2_objectID"))
  
  if (readData("LohthalCityScreenPlay:tinkerConvoState") == 4) then
      spatialChat(pKid2, "Jedi Temple?  I thought our history teacher said they blew it up like a million years ago.")     
        writeData("LohthalCityScreenPlay:tinkerConvoState", 5)           
  end
end

function LohthalCityScreenPlay:touristConvoM3(pKid1, pPlayer)
  
  local pKid1 = getSceneObject(readData("LohthalCityScreenPlay:pKid1_objectID"))
  
  if (readData("LohthalCityScreenPlay:tinkerConvoState") == 5) then
      spatialChat(pKid1, "I dunno. History class is boring.") 
        writeData("LohthalCityScreenPlay:tinkerConvoState", 0)   
        createEvent(6 * 100 * 1000, "LohthalCityScreenPlay", "resetTinkerConvo", pKid1, "")   
  end
end

function LohthalCityScreenPlay:resetTinkerConvo(pPlayer, pKid1, pKid2)
    writeData("LohthalCityScreenPlay:tinkerConvoInProgress", 0)    
    self:startTinkerConvo()
end
