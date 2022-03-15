local ObjectManager = require("managers.object.object_manager")

BilbousaCityScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "BilbousaCityScreenPlay"
}

registerScreenPlay("BilbousaCityScreenPlay", true)

function BilbousaCityScreenPlay:start()
	if (isZoneEnabled("hutta")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		--self:spawnActiveArea1()
	end
end

function BilbousaCityScreenPlay:spawnSceneObjects()

	--Bounty Hunter's Guild
	spawnSceneObject("hutta", "object/tangible/terminal/terminal_mission_bounty.iff", 0.0, 1.3, -7.7, 390000049, math.rad(0) )
	spawnSceneObject("hutta", "object/tangible/terminal/terminal_mission_bounty.iff", 3.0, 1.3, -7.7, 390000049, math.rad(0) )
	spawnSceneObject("hutta", "object/tangible/terminal/terminal_mission_bounty.iff", -3.0, 1.3, -7.7, 390000049, math.rad(0) )
	
	spawnSceneObject("hutta", "object/static/structure/tatooine/wall_pristine_tatooine_large_style_01.iff", -13.4, 5.8, 74.4, 390000159, math.rad(0) )
	spawnSceneObject("hutta", "object/static/structure/tatooine/wall_pristine_tatooine_large_style_01.iff", -36.7, 3.0, 73.1, 390000178, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/tatooine/wall_pristine_tatooine_large_style_01.iff", 19.5, 0.2, 71, 390000168, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/tatooine/wall_pristine_tatooine_large_style_01.iff", -11.7, 3.0, 15.2, 390000191, math.rad(0) )
  
  spawnSceneObject("hutta", "object/static/structure/tatooine/wall_pristine_tatooine_large_style_01.iff", 4.7, 3.0, 14.8, 390000172, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/tatooine/wall_pristine_tatooine_large_style_01.iff", 12.5, 5.8, 66.9, 390000161, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/tatooine/wall_pristine_tatooine_large_style_01.iff", -14.4, 3.0, 27.1, 390000177, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -6.2, 3.0, 21.3, 390000177, math.rad(90) )
  
  spawnSceneObject("hutta", "object/static/structure/tatooine/wall_pristine_tatooine_large_style_01.iff", -26.5, 3.6, 44.1, 390000177, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/tatooine/wall_pristine_tatooine_large_style_01.iff", -0.1, 0.2, 79.2, 390000170, math.rad(0) )
 
  
  spawnSceneObject("hutta", "object/tangible/terminal/terminal_bazaar.iff", 0.0, 0.3, -2.4, 390000128, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/terminal/terminal_bazaar.iff", 0.0, 0.3, -2.4, 390000130, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/terminal/terminal_bazaar.iff", 0.0, 0.3, -2.4, 390000132, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/terminal/terminal_bazaar.iff", 0.0, 0.3, -2.4, 390000134, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/terminal/terminal_bazaar.iff", 0.0, 0.3, -2.4, 390000136, math.rad(0) )
  
  spawnSceneObject("hutta", "object/tangible/terminal/terminal_bazaar.iff", 0.0, 0.3, -2.4, 390000138, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/terminal/terminal_bazaar.iff", 0.0, 0.3, -2.4, 390000140, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/terminal/terminal_bazaar.iff", 0.0, 0.3, -2.4, 390000142, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/terminal/terminal_bazaar.iff", 0.0, 0.3, -2.4, 390000144, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/terminal/terminal_bazaar.iff", 0.0, 0.3, -2.4, 390000146, math.rad(0) )
  
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", -11.5, 0.2, 142.3, 390000156, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 11.5, 0.2, 142.3, 390000156, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 7.8, 0.2, 125.1, 390000156, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", -7.8, 0.2, 125.1, 390000156, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", -7.7, 0.2, 114.5, 390000156, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 7.7, 0.2, 114.5, 390000156, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 3.1, 0.2, 102.5, 390000157, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 0.2, 5.8, 1348.3, 390000159, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", -12.5, 5.8, 95.9, 390000159, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", -12.2, 5.8, 70.8, 390000159, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 11.5, 5.8, 62.8, 390000160, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 4.8, 5.8, 59.8, 390000160, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", -5.8, 3.0, 55.8, 390000164, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", -36.0, 3.0, 66.5, 390000178, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", -26.4, 3.0, 55.6, 390000164, math.rad(0) )
 
  
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -21.3, 3.6, 53.5, 390000177, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -21.3, 3.6, 32.8, 390000177, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -15.0, 2.0, 34.5, 390000177, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -12.8, 2.0, 53.5, 390000177, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -0.5, 2.0, 53.5, 390000177, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 2.5, 2.0, 32.0, 390000177, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 2.5, 2.0, 28.0, 390000177, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 2.5, 2.0, 23.9, 390000177, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 9.7, 2.0, 53.3, 390000177, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -13.5, 3.0, 22.5, 390000177, math.rad(0) )
  
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_rug_rectangle_large_style_05.iff", -6.0, 5.8, 84.5, 390000159, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_rug_rectangle_large_style_05.iff", -10.4, 2.0, 44.0, 390000177, math.rad(0) )
  
  -- Hotel interior
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_lamp_free_s02_lit.iff", 8.4, 1.0, 10.9, 390000078, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_lamp_free_s02_lit.iff", -5.3, 1.0, 8.5, 390000078, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_lamp_free_s02_lit.iff", 8.4, 1.0, -11.2, 390000078, math.rad(0) )
  
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_lamp_free_s02_lit.iff", 13.7, 1.3, 10.6, 390000079, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_lamp_free_s02_lit.iff", 26.7, 1.3, 7.9, 390000079, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_lamp_free_s02_lit.iff", 12.6, 1.3, -18.4, 390000079, math.rad(0) )
  
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_lamp_free_s02_lit.iff", -12.8, 1.6, 12.9, 390000080, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_lamp_free_s02_lit.iff", -26.2, 1.6, -1.5, 390000080, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_lamp_free_s02_lit.iff", -19.7, 1.6, -12.5, 390000081, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_lamp_free_s02_lit.iff", -11.2, 1.6, -12.5, 390000081, math.rad(0) )
  
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_potted_plants_sml_s03.iff", 8.6, 1.0, 4.3, 390000078, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_potted_plants_sml_s03.iff", 8.6, 1.0, -4.3, 390000078, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_potted_plants_sml_s03.iff", -8.0, 1.0, 2.0, 390000078, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_potted_plants_sml_s03.iff", -8.0, 1.0, 8.3, 390000078, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_potted_plants_sml_s03.iff", -8.0, 1.0, -4.3, 390000078, math.rad(0) )
 
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", -22.2, 1.6, 9.9, 390000080, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 0.0, 13.0, 0.0, 390000078, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 20.3, 1.6, 12.3, 390000079, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -22.2, 2.0, -14.0, 390000079, math.rad(45) )
 
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_table_s02.iff", 23.1, 1.3, -5.7, 390000079, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 23.1, 1.3, -5.7, 390000079, math.rad(45) )
 
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_table_s02.iff", 18.9, 1.3, -7.3, 390000079, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 18.9, 1.3, -7.3, 390000079, math.rad(45) )
  
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_table_s02.iff", 17.3, 1.3, -2.2, 390000079, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 17.3, 1.3, -2.2, 390000079, math.rad(45) )
  
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_table_s02.iff", 21.7, 1.3, 3.0, 390000079, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 21.7, 1.3, 3.0, 390000079, math.rad(45) )
  
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_chair_wooden_s2.iff", 24.6, 1.3, -5.0, 390000079, math.rad(-119) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_chair_wooden_s2.iff", 20.7, 1.3, -6.7, 390000079, math.rad(-119) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_chair_wooden_s2.iff", 19.1, 1.3, -1.9, 390000079, math.rad(-119) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_chair_wooden_s2.iff", 23.5, 1.3, 3.5, 390000079, math.rad(-119) )
  
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_chair_wooden_s2.iff", 21.2, 1.3, 5.1, 390000079, math.rad(162) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_chair_wooden_s2.iff", 16.9, 1.3, 0.1, 390000079, math.rad(162) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_chair_wooden_s2.iff", 18.5, 1.3, -5.6, 390000079, math.rad(162) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_chair_wooden_s2.iff", 22.7, 1.3, -3.8, 390000079, math.rad(162) )
 
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_chair_wooden_s2.iff", 19.5, 1.3, 2.8, 390000079, math.rad(77) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_chair_wooden_s2.iff", 15.3, 1.3, -2.1, 390000079, math.rad(77) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_chair_wooden_s2.iff", 16.9, 1.3, -7.3, 390000079, math.rad(77) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_chair_wooden_s2.iff", 21.1, 1.3, -5.7, 390000079, math.rad(77) )
 
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_potted_plants_sml_s03.iff", 13.8, 1.3, 4.5, 390000079, math.rad(0) )
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_potted_plants_sml_s03.iff", 13.8, 1.3, -4.5, 390000079, math.rad(0) )
  
  spawnSceneObject("hutta", "object/tangible/furniture/all/frn_all_lamp_free_s02_lit.iff", -9.9, 1.0, 2.0, 390000080, math.rad(0) )
 
 -- Cantina
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 22.0, -0.9, 4.3, 390000021, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 16.1, -0.9, 5.8, 390000021, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 15.5, -0.9, 3.8, 390000021, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 25.3, -0.9, -7.2, 390000021, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 12.4, -0.9, -10.3, 390000021, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -0.7, -0.9, -10.5, 390000021, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 12.0, -0.9, 10.9, 390000021, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 10.6, -0.9, 10.9, 390000021, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -0.8, -0.9, 11.6, 390000021, math.rad(0) )
  
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 35.9, 0.1, 1.9, 390000020, math.rad(0) )
  spawnSceneObject("hutta", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 30.7, 0.1, -7.0, 390000020, math.rad(0) )
  
 
  
      
end

function BilbousaCityScreenPlay:spawnMobiles()

	-- 
	
  local pNpc = spawnMobile("hutta", "slicer", 60, -923.1, 80, 1600.7, 153, 0)
    self:setMoodString(pNpc, "npc_consoling")
   
   pNpc = spawnMobile("hutta", "bounty_hunter", 60, -920.9, 80, 1596.5, -65, 0)
   self:setMoodString(pNpc, "npc_accusing")
   
   
    
 
 
   -- Bilbousa City / Guards
    --Starport Plaza
    spawnMobile("hutta", "jabba_enforcer", 60, -773, 80, 1709, 132, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -759, 80, 1709, -152, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -806, 80, 1693, 80, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -760, 80, 1681, -93, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -771, 80, 1681, 78, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -707.9, 80, 1706, -93, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -712.7, 80, 1630.4, -59, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -710.3, 80, 1602, -135, 0)
    
    --Bank
    spawnMobile("hutta", "jabba_enforcer", 60, -786, 80.5, 1581, -46, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -747, 80.5, 1581, 49, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -746, 80.5, 1542, 132, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -786, 80, 1542, -132, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -779, 80, 1561, -90, 0)
    
    --Palace front
    spawnMobile("hutta", "jabba_enforcer", 60, -776, 80, 1415, 0, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -758, 80, 1415, 0, 0)
    
    -- Great Bazaar
    spawnMobile("hutta", "jabba_enforcer", 60, -756, 80, 1453, -90, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -776, 80, 1453, 90, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -767, 80, 1612, -180, 0)
    
    --Bounty Hunter's Guild
    spawnMobile("hutta", "jabba_enforcer", 60, -855, 80, 1548, 0, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -891, 80, 1532, -44, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -890, 80, 1592, -144, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -937.4, 81.2, 1570, 78, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -937.4, 81.2, 1554, 96, 0)
    
    --Garage Area
    spawnMobile("hutta", "jabba_enforcer", 60, -852, 80, 1446, -139, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -926.5, 80, 1459.9, 141, 0)
    
    --Hotel Area
    spawnMobile("hutta", "jabba_enforcer", 60, -849.4, 80, 1651.3, 50, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -836.9, 80, 1664.4, -132, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -868, 81, 1682.9, 132, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -865.5, 81, 1685, 132, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -900.8, 80, 1631.1, 0, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -970, 80, 1638.6, 82, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -985.1, 80, 1698.8, 179, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -959.2, 80, 1783, 178, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -862.6, 80, 1784.8, 121, 0)
    
    --Cantina / Cloner Area
    spawnMobile("hutta", "jabba_enforcer", 60, -691.3, 80, 1577.2, -54, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -691.2, 80, 1538.2, -9, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -612.9, 80, 1544.89, 131, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -592, 80, 1588.9, 88, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -575.3, 80, 1514.8, -93, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -630.6, 80, 1474.9, -90, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -630.6, 80, 1451.4, -90, 0)
    spawnMobile("hutta", "jabba_enforcer", 60, -685.1, 80, 1439.2, -180, 0)
    
    
  -- Bounty Hunter's Guild Interior
    spawnMobile("hutta", "dengar", 60, 3.6, 4.1, -12.9, -135, 390000049)
    spawnMobile("hutta", "bossk", 60, -4.1, 4.1, -13.3, 135, 390000049)
    spawnMobile("hutta", "ig_88", 60, -4.2, 3.4, -20.8, 39, 390000049)  
    spawnMobile("hutta", "bounty_hunter", 60, 4.1, 3.3, -20.9, -39, 390000049)
    spawnMobile("hutta", "bounty_hunter", 60, 38.0, 2.3, -2.8, 87, 390000056)
    spawnMobile("hutta", "medic", 60, 21.2, 4.2, -31.5, 170, 390000057)  
    
    spawnMobile("hutta", "informant_npc_lvl_1", 60, -11.7, 2.3, 5.8, 129, 390000049) 
    spawnMobile("hutta", "informant_npc_lvl_2", 60, -0.2, 2.3, 7.9, 180, 390000049)   
    spawnMobile("hutta", "informant_npc_lvl_3", 60, 11.2, 2.3, 6.1, -140, 390000049)
    
    spawnMobile("hutta", "zirta_the_hutt", 60, 0.2, 8.9, -30.9, -1, 390000049)
    
    spawnMobile("hutta", "jabba_enforcer", 60, 9.1, 8.1, -34.4, -57, 390000049)
    spawnMobile("hutta", "jabba_enforcer", 60, -9.1, 8.1, -34.4, 13, 390000049)
    
    spawnMobile("hutta", "jabba_enforcer", 60, -5.4, 4.1, 17.7, 180, 390000049)
    spawnMobile("hutta", "jabba_enforcer", 60, 5.4, 4.1, 17.7, 180, 390000049)
    
    spawnMobile("hutta", "trainer_imagedesigner", 60, -8.2, 0.6, -4.1, 79, 390000204)
    
    spawnMobile("hutta", "hutt_commoner", 60, -758.6, 80.5, 1570, -50, 0)
    
    pNpc = spawnMobile("hutta", "commoner", 60, -760.6, 80.5, 1572, 115, 0)
    self:setMoodString(pNpc, "conversation")
    
    pNpc = spawnMobile("hutta", "commoner", 60, -757.7, 80.5, 1573.3, -163, 0)
    self:setMoodString(pNpc, "conversation")
    
    spawnMobile("hutta", "hutt_commoner", 60, -805.1, 80, 1638.7, 36, 0)
    
    pNpc = spawnMobile("hutta", "commoner", 60, -803.3, 80, 1644, -158, 0)
    self:setMoodString(pNpc, "conversation")
    
    spawnMobile("hutta", "hutt_commoner", 60, -737.5, 80, 1663.1, 16, 0)
    
    pNpc = spawnMobile("hutta", "commoner", 60, -735.9, 80, 1670.4, -175, 0)
    self:setMoodString(pNpc, "conversation")
    
    pNpc = spawnMobile("hutta", "commoner", 60, -728.7, 80, 1662.2, -109, 0)
    self:setMoodString(pNpc, "conversation")
    
    pNpc = spawnMobile("hutta", "bartender",60,-11.5,-0.9,2,230,390000021)
    self:setMoodString(pNpc, "conversation")
    pNpc = spawnMobile("hutta", "businessman",60,10.65,-0.894992,1.91,330,390000021)
    self:setMoodString(pNpc, "npc_standing_drinking")
    pNpc = spawnMobile("hutta", "businessman",60,-4.11,-0.894992,5.4,26.8951,390000021)
    self:setMoodString(pNpc, "happy")
    pNpc = spawnMobile("hutta", "commoner",60,10.43,-0.894992,-1.47,123.102,390000021)
    self:setMoodString(pNpc, "worried")
    spawnMobile("hutta", "commoner",60,10.7,-0.894992,-0.23,80.4821,390000021)
    pNpc = spawnMobile("hutta", "commoner",60,10.17,-0.894992,2.74,125.098,390000021)
    self:setMoodString(pNpc, "conversation")
    pNpc = spawnMobile("hutta", "commoner_fat",60,2.11,-0.894992,5.4,180,390000021)
    self:setMoodString(pNpc, "npc_standing_drinking")
    pNpc = spawnMobile("hutta", "commoner_fat",60,-2.2,-0.9,-10.9,65,390000021)
    self:setMoodString(pNpc, "npc_sitting_table_eating")
    pNpc = spawnMobile("hutta", "commoner_naboo",60,3.11,0,5.4,161.005,390000021)
    self:setMoodString(pNpc, "bored")
    pNpc = spawnMobile("hutta", "commoner_naboo",60,1.11,0,5.4,330.024,390000021)
    self:setMoodString(pNpc, "npc_standing_drinking")
    pNpc = spawnMobile("hutta", "commoner_naboo",60,-3.11,0,5.4,16.6733,390000021)
    self:setMoodString(pNpc, "npc_standing_drinking")
    pNpc = spawnMobile("hutta", "commoner_naboo",60,16.1,-0.9,4.1,340,390000021)
    self:setMoodString(pNpc, "conversation")
    pNpc = spawnMobile("hutta", "commoner_tatooine",60,4.11,-0.894992,5.4,158.443,390000021)
    self:setMoodString(pNpc, "npc_standing_drinking")
    pNpc = spawnMobile("hutta", "commoner_tatooine",60,1.99,-0.894992,-8.44,325.01,390000021)
    self:setMoodString(pNpc, "conversation")
    pNpc = spawnMobile("hutta", "commoner_tatooine",60,1.19,-0.894992,-7.63,152.004,390000021)
    self:setMoodString(pNpc, "conversation")
    pNpc = spawnMobile("hutta", "entertainer",60,9.4,0,3.9,310,390000021)
    self:setMoodString(pNpc, "conversation")
    pNpc = spawnMobile("hutta", "patron",60,-9.34,-0.894992,5.66,59.306,390000021)
    self:setMoodString(pNpc, "calm")
    pNpc = spawnMobile("hutta", "patron",60,20.2,-0.9,5,107,390000021)
    self:setMoodString(pNpc, "happy")
    pNpc = spawnMobile("hutta", "noble",60,8.49,-0.894992,4.64,128.74,390000021)
    self:setMoodString(pNpc, "conversation")
    pNpc = spawnMobile("hutta", "patron",60,14.2,-0.9,-4.8,67,390000021)
    self:setMoodString(pNpc, "npc_sitting_chair")
    pNpc = spawnMobile("hutta", "patron",60,14.7,-0.9,-3,147,390000021)
    self:setMoodString(pNpc, "npc_sitting_chair")
    pNpc = spawnMobile("hutta", "patron",60,16.5,-0.9,-4.8,320,390000021)
    self:setMoodString(pNpc, "npc_sitting_chair")
    pNpc = spawnMobile("hutta", "patron",60,24.5,-0.9,-8.1,51,390000021)
    self:setMoodString(pNpc, "npc_sitting_table")
    pNpc = spawnMobile("hutta", "patron",60,26.1,-0.9,-8.2,317,390000021)
    self:setMoodString(pNpc, "npc_sitting_table_eating")
    pNpc = spawnMobile("hutta", "patron",60,8.8,-0.9,-6,208,390000021)
    self:setMoodString(pNpc, "entertained")
    pNpc = spawnMobile("hutta", "patron",60,6.8,-0.9,-6.5,230,390000021)
    self:setMoodString(pNpc, "entertained")
    pNpc = spawnMobile("hutta", "patron",60,-2.2,-0.9,11.8,97,390000021)
    self:setMoodString(pNpc, "npc_sitting_table")
    pNpc = spawnMobile("hutta", "patron",60,0.6,-0.9,11.9,269,390000021)
    self:setMoodString(pNpc, "npc_sitting_chair")
    pNpc = spawnMobile("hutta", "patron_chiss",60,3.62,-0.894992,-4.77,184.005,390000021)
    self:setMoodString(pNpc, "sad")
    pNpc = spawnMobile("hutta", "bounty_hunter",60,1.74,-0.894992,-4.91,95.0028,390000021)
    self:setMoodString(pNpc, "npc_consoling")
    pNpc = spawnMobile("hutta", "patron_devaronian",60,21.4,-0.9,5.4,161,390000021)
    self:setMoodString(pNpc, "npc_sitting_table")
    pNpc = spawnMobile("hutta", "patron_ishitib",60,22.3,-0.9,3.1,339,390000021)
    self:setMoodString(pNpc, "npc_sitting_chair")
    pNpc = spawnMobile("hutta", "patron_ithorian",60,14.9,-0.9,4.9,51,390000021)
    self:setMoodString(pNpc, "npc_sitting_table")
    pNpc = spawnMobile("hutta", "patron_klaatu",60,15,-0.9,6.9,139,390000021)
    self:setMoodString(pNpc, "npc_sitting_chair")
    pNpc = spawnMobile("hutta", "patron_nikto",60,23.4,-0.9,4.8,272,390000021)
    self:setMoodString(pNpc, "npc_sitting_chair")
    pNpc = spawnMobile("hutta", "patron_quarren",60,17,-0.9,6.8,226,390000021)
    self:setMoodString(pNpc, "npc_sitting_chair")
    pNpc = spawnMobile("hutta", "r3",60,15.9215,-0.894992,-0.217826,56.8618,390000021)
    self:setMoodString(pNpc, "happy")
    pNpc = spawnMobile("hutta", "jabba_enforcer",400,2.84,-0.894992,-6.3,16.0005,390000021)
    self:setMoodString(pNpc, "npc_imperial")
    pNpc = spawnMobile("hutta", "jabba_enforcer",400,3.62,-0.894992,-6.78,360.011,390000021)
    self:setMoodString(pNpc, "npc_accusing")
    pNpc = spawnMobile("hutta", "bartender",60,-14,-0.9,0,90,390000021)
    self:setMoodString(pNpc, "worried")
    
    spawnMobile("hutta", "hutt_commoner", 60, 22.9, -0.9, 7.0, -162, 390000021)
    spawnMobile("hutta", "hutt_commoner", 60, 33.1, 0.1, 2.5, 109, 390000020)
    
    pNpc = spawnMobile("hutta", "jabba_enforcer",400,35.0,0.1,1.2,-75,390000020)
    self:setMoodString(pNpc, "npc_accusing")
    
    spawnMobile("hutta", "jabba_enforcer",400,-586,80,1644,-89,0)
    spawnMobile("hutta", "jabba_enforcer",400,-614,80,1679,89,0)
    spawnMobile("hutta", "jabba_enforcer",400,-570,80,1710,180,0)  
    spawnMobile("hutta", "jabba_enforcer",400,-515,80,1736,-52,0)
    spawnMobile("hutta", "jabba_enforcer",400,-532.7,80,1789,180,0)
    spawnMobile("hutta", "jabba_enforcer",400,-581.7,80,1789,175,0)
    spawnMobile("hutta", "jabba_enforcer",400,-606,80,1789,166,0)
    
    pNpc = spawnMobile("hutta", "slicer",60,-2.63337,0.3,2.46637,180.004,390000102)
    self:setMoodString(pNpc, "conversation")
    pNpc = spawnMobile("hutta", "commoner",60,-22.8506,1.29946,6.24726,180.009,390000102)
    self:setMoodString(pNpc, "conversation")
    pNpc = spawnMobile("hutta", "info_broker",60,-22.8506,1.2998,5.24726,360.011,390000102)
    self:setMoodString(pNpc, "conversation")
    pNpc = spawnMobile("hutta", "jabba_enforcer",60,7.4,0.3,-0.7,-81,390000102)
    self:setMoodString(pNpc, "npc_imperial")
    pNpc = spawnMobile("hutta", "medic",60,-2.63337,0.3,1.46637,0,390000102)
    self:setMoodString(pNpc, "conversation")
    pNpc = spawnMobile("hutta", "smuggler",60,18.4,1.3,5.2,80,390000102)
    self:setMoodString(pNpc, "npc_accusing")
    self:setMoodString(pNpc, "angry")
    
    spawnMobile("hutta", "hutt_battle_droid",120,-789,80,1695,90,0)
    spawnMobile("hutta", "hutt_battle_droid",120,-743,80,1695,-90,0)
    
    spawnMobile("hutta", "hutt_battle_droid",120,-789,80,1639,90,0)
    spawnMobile("hutta", "hutt_battle_droid",120,-743,80,1639,-90,0)
    
    spawnMobile("hutta", "hutt_battle_droid",120,-789,80,1505,90,0)
    spawnMobile("hutta", "hutt_battle_droid",120,-743,80,1505,-90,0)
    
    spawnMobile("hutta", "hutt_battle_droid",120,-789,80,1463,90,0)
    spawnMobile("hutta", "hutt_battle_droid",120,-743,80,1463,-90,0)
    
    spawnMobile("hutta", "jabba_enforcer",400,-767.2,80,1528,175,0)
    
    pNpc = spawnMobile("hutta", "smuggler",60,-834,80,1564.2,-8,0)
    self:setMoodString(pNpc, "npc_consoling")       
    pNpc = spawnMobile("hutta", "commoner",60,-834.5,80,1570.7,-178,0)
    self:setMoodString(pNpc, "npc_accusing") 
    
    pNpc = spawnMobile("hutta", "commoner",60,-799.6,80,1574.6,-84,0)
    self:setMoodString(pNpc, "neutral") 
    
    --sp
    pNpc = spawnMobile("hutta", "contractor",300,3.1,0.6,65.6,-42,390000005)
    self:setMoodString(pNpc, "conversation")
    pNpc = spawnMobile("hutta", "commoner_tatooine",60,54.6956,-0.521137,37.0243,360.011,390000008)
    self:setMoodString(pNpc, "conversation")
    pNpc = spawnMobile("hutta", "mercenary",60,54.6956,-0.521137,38.1243,180.008,390000008)
    self:setMoodString(pNpc, "conversation")
    pNpc = spawnMobile("hutta", "chassis_dealer",60,2.14833,0.639422,67.5897,224.216,390000005) 
    self:setMoodString(pNpc, "neutral")
    pNpc = spawnMobile("hutta", "farmer",300,-36.1846,1.63942,64.2406,180.002,390000010)
    self:setMoodString(pNpc, "conversation")
    pNpc = spawnMobile("hutta", "commoner_technician",300,-36.1846,1.63942,63.1406,360.011,390000010)
    self:setMoodString(pNpc, "conversation")
    pNpc = spawnMobile("hutta", "medic",300,-53.137,2.63942,38.7938,180.007,390000013)
    self:setMoodString(pNpc, "conversation")
    pNpc = spawnMobile("hutta", "mercenary",300,-53.137,2.63942,37.6938,360.011,390000013)
    self:setMoodString(pNpc, "conversation")
    pNpc = spawnMobile("hutta", "commoner_fat",300,-54.237,2.63942,38.7938,135.003,390000013) 
    self:setMoodString(pNpc, "conversation")
    pNpc = spawnMobile("hutta", "trainer_shipwright",60,1.0,0.6,66.7,48,390000005) 
    self:setMoodString(pNpc, "conversation")                  
    
    pNpc = spawnMobile("hutta", "commoner",60,-835,80,1636,1,0)
    self:setMoodString(pNpc, "neutral") 
    pNpc = spawnMobile("hutta", "commoner",60,-835,80,1641,178,0)
    self:setMoodString(pNpc, "conversation") 
    pNpc = spawnMobile("hutta", "commoner",60,-876,80,1434,0,0)
    self:setMoodString(pNpc, "conversation") 
    
    pNpc = spawnMobile("hutta", "commoner",60,-801,80,1560,-78,0)
    self:setMoodString(pNpc, "conversation") 
    pNpc = spawnMobile("hutta", "commoner",60,-803.5,80,1563,117,0)
    self:setMoodString(pNpc, "conversation") 
    
    pNpc = spawnMobile("hutta", "smuggler",60,-838,80,1602,115,0)
    self:setMoodString(pNpc, "neutral") 
    
    pNpc = spawnMobile("hutta", "commoner",60,-720.1,80,1623.8,-86,0)
    self:setMoodString(pNpc, "conversation") 
    pNpc = spawnMobile("hutta", "commoner",60,-723.5,80,1623.1,89,0)
    self:setMoodString(pNpc, "conversation") 
    
    pNpc = spawnMobile("hutta", "commoner",60,-727,80,1559.8,133,0)
    self:setMoodString(pNpc, "npc_accusing") 
    
    pNpc = spawnMobile("hutta", "smuggler",60,-724.7,80,1556.7,-40,0)
    self:setMoodString(pNpc, "npc_consoling") 
    
    pNpc = spawnMobile("hutta", "commoner_fat",60,-694.7,80,1505,-66,0)
    self:setMoodString(pNpc, "angry") 
    
    pNpc = spawnMobile("hutta", "commoner",60,-676,80,1427.2,43,0)
    self:setMoodString(pNpc, "conversation") 
    
    pNpc = spawnMobile("hutta", "commoner",60,-674.3,80,1430.2,-125,0)
    self:setMoodString(pNpc, "conversation") 
    -- slave pen
    pNpc = spawnMobile("hutta", "twilek_slave",60,-762,80,1498,134,0)
    self:setMoodString(pNpc, "sad")
    
    pNpc = spawnMobile("hutta", "twilek_slave",60,-764,80,1499,134,0)
    self:setMoodString(pNpc, "sad") 
    
    pNpc = spawnMobile("hutta", "twilek_slave",60,-768,80,1498,134,0)
    self:setMoodString(pNpc, "sad")
    
    pNpc = spawnMobile("hutta", "twilek_slave",60,-771,80,1498,134,0)
    self:setMoodString(pNpc, "sad")
    
    pNpc = spawnMobile("hutta", "twilek_slave",60,-768,80,1499,123,0)
    self:setMoodString(pNpc, "angry")
    
    pNpc = spawnMobile("hutta", "twilek_slave",60,-770,80,1502,134,0)
    self:setMoodString(pNpc, "sad")
    
    pNpc = spawnMobile("hutta", "twilek_slave",60,-767,80,1503,-90,0)
    self:setMoodString(pNpc, "sad")
    
    pNpc = spawnMobile("hutta", "twilek_slave",60,-771,80,1507,-48,0)
    self:setMoodString(pNpc, "sad")
    
    pNpc = spawnMobile("hutta", "twilek_slave",60,-767,80,1508,-6,0)
    self:setMoodString(pNpc, "angry")
    
    pNpc = spawnMobile("hutta", "twilek_slave",60,-761,80,1509,34,0)
    self:setMoodString(pNpc, "sad")
    
    pNpc = spawnMobile("hutta", "twilek_slave",60,-759,80,1507,99,0)
    self:setMoodString(pNpc, "sad")
    
    pNpc = spawnMobile("hutta", "twilek_slave",60,-759,80,1505,140,0)
    self:setMoodString(pNpc, "angry")
    
    pNpc = spawnMobile("hutta", "twilek_slave",60,-759,80,1499,90,0)
    self:setMoodString(pNpc, "sad")
    
    pNpc = spawnMobile("hutta", "twilek_slave",60,-763,80,1503,110,0)
    self:setMoodString(pNpc, "angry")
    
    pNpc = spawnMobile("hutta", "twilek_slave",60,-772,80,1501,-90,0)
    self:setMoodString(pNpc, "sad")
    
    pNpc = spawnMobile("hutta", "twilek_slave",60,-764,80,1496,170,0)
    self:setMoodString(pNpc, "sad")
    
    pNpc = spawnMobile("hutta", "jabba_compound_guard",60,-774.9,80,1493,-152,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "jabba_compound_guard",60,-756.4,80,1493,130,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "jabba_compound_guard",60,-774.9,80,1512,-45,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "vendor",60,-731.6,80,1501.7,-133,0)
    self:setMoodString(pNpc, "npc_accusing")
    
    pNpc = spawnMobile("hutta", "commoner",60,-733.3,80,1499.4,35,0)
    self:setMoodString(pNpc, "conversation")
    
    pNpc = spawnMobile("hutta", "vendor",60,-732,80,1482,-111,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "vendor",60,-731.6,80,1455.9,-58,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "vendor",60,-732,80,1442.2,-133,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "vendor",60,-804.9,80,1443.3,100,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "vendor",60,-805,80,1462.6,100,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "vendor",60,-804.9,80,1476,24,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "vendor",60,-805.1,80,1502.4,121,0)
    self:setMoodString(pNpc, "neutral")
    
    spawnMobile("hutta", "gardulla_the_hutt",60,-16.65,2.81087,45,106.884,390000177)
    
    spawnMobile("hutta", "gamorrean_guard",60,-6.7,0.2,119.5,85,390000156)
    spawnMobile("hutta", "gamorrean_guard",60,7.5,0.2,119.5,-90,390000156)
    spawnMobile("hutta", "gamorrean_guard",60,0.3,0.2,105.3,-3,390000157)
    spawnMobile("hutta", "gamorrean_guard",60,-15.3,2.0,35.5,43,390000177)
    spawnMobile("hutta", "gamorrean_guard",60,-12.3,2.0,53.1,-177,390000177)
    spawnMobile("hutta", "gamorrean_guard",60,0.5,2.0,42,-86,390000177)
    spawnMobile("hutta", "gamorrean_guard",60,0.5,2.0,46.1,-86,390000177)
    
    spawnMobile("hutta", "gamorrean_guard",60,-11.2,3.0,55.5,2,390000164)
    spawnMobile("hutta", "gamorrean_guard",60,-35.9,3.0,59.2,54,390000178)
    spawnMobile("hutta", "gamorrean_guard",60,-33.1,3.0,74.4,177,390000178)
    
    spawnMobile("hutta", "gamorrean_guard",60,-20.8,0.2,80.1,-17,390000165)
    spawnMobile("hutta", "gamorrean_guard",60,3.5,0.2,82.4,-90,390000170)
    spawnMobile("hutta", "gamorrean_guard",60,-52.0,0.2,82.4,90,390000166)
    
    spawnMobile("hutta", "gamorrean_guard",60,11.3,5.8,69.5,-111,390000160)
    spawnMobile("hutta", "gamorrean_guard",60,-5.7,5.8,70.8,0,390000159)
    spawnMobile("hutta", "gamorrean_guard",60,-15.2,6.6,84.4,90,390000159)
    
    pNpc = spawnMobile("hutta", "commoner_fat",60,-696.4,80,1486.5,-94,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "commoner_fat",60,-677.4,80,1492.1,94,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "entertainer",60,-629.9,80,1542.1,-135,0)
    self:setMoodString(pNpc, "npc_accusing")
    
    pNpc = spawnMobile("hutta", "commoner_fat",60,-632.4,80,1540.7,35,0)
    self:setMoodString(pNpc, "npc_consoling")
    
    pNpc = spawnMobile("hutta", "businessman",60,-585.1,80,1547.7,-96,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "businessman",60,-602.3,80,1561.1,166,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "commoner",60,-536.3,80,1548.4,-87,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "businessman",60,-554.3,80,1612.5,35,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "commoner",60,-607.9,80,1607.5,-112,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "commoner",60,-578.1,80,1658.1,-34,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "commoner",60,-530.9,80,1668.7,-34,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "smuggler",60,-579.0,80,1742.8,-16,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "commoner",60,-656,80,1777.5,-163,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "commoner",60,-813.8,80,1684.8,122,0)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "commoner",60,-938.8,80,1654.3,92,0)
    self:setMoodString(pNpc, "neutral")
    
    
 -- Hotel
    pNpc = spawnMobile("hutta", "bartender",60,20.0,1.6,13.0,174,390000079)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "commoner",60,17.5,1.3,9.9,70,390000079)
    self:setMoodString(pNpc, "conversation")
    
    pNpc = spawnMobile("hutta", "businessman",60,18.9,1.3,10.2,-85,390000079)
    self:setMoodString(pNpc, "conversation")
    
    pNpc = spawnMobile("hutta", "commoner",60,21.6,1.3,10.6,-9,390000079)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "hutt_commoner",60,2.6,1.0,-1.6,-50,390000078)
    self:setMoodString(pNpc, "neutral")
    
    pNpc = spawnMobile("hutta", "noble",60,-0.9,1.0,1.2,140,390000078)
    self:setMoodString(pNpc, "conversation")
    
    pNpc = spawnMobile("hutta", "patron",60,-20.4,1.6,8.1,-47,390000080)
    self:setMoodString(pNpc, "npc_accusing")   
    
    pNpc = spawnMobile("hutta", "businessman",60,-22.3,1.6,9.9,132,390000080)
    self:setMoodString(pNpc, "npc_consoling")
    
    pNpc = spawnMobile("hutta", "commoner_fat",60,-18.9,1.0,0.4,129,390000080)
    self:setMoodString(pNpc, "conversation")
    
    pNpc = spawnMobile("hutta", "hutt_commoner",60,-15.8,1.0,-1.8,-54,390000080)
    self:setMoodString(pNpc, "conversation")
    
    
end
  
--[[

function BilbousaCityScreenPlay:spawnActiveArea1()
  local pSpawnArea1 = spawnSceneObject("hutta", "object/active_area.iff", -1319, 14, -585, 0, 0)
    
  if (pSpawnArea1 ~= nil) then
    local activeArea1 = LuaActiveArea(pSpawnArea1)
          activeArea1:setCellObjectID(0)
          activeArea1:setRadius(32)
          createObserver(ENTEREDAREA, "MorabandValleyScreenPlay", "notifySpawnArea1", pSpawnArea1)
          --createObserver(EXITEDAREA, "MorabandValleyScreenPlay", "notifySpawnAreaLeave", pSpawnArea1)
      end
end

function BilbousaCityScreenPlay:notifySpawnArea1(pActiveArea1, pMovingObject, pPlayer)
  
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
--]]
