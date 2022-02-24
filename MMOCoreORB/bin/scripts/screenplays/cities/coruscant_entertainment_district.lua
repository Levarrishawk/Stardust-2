CoruscantEntertainmentScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "CoruscantEntertainmentScreenPlay"
}

registerScreenPlay("CoruscantEntertainmentScreenPlay", true)

function CoruscantEntertainmentScreenPlay:start()
	if (isZoneEnabled("coruscant")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function CoruscantEntertainmentScreenPlay:spawnSceneObjects()

	--Monument Square Cantina Static Objects
	spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 27.1, -0.9, 12.0, 37000111, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 27.1, -0.9, -10.9, 37000111, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -16.4, -0.9, 0.4, 37000111, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 15.0, -0.9, -3.9, 37000111, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 15.6, -0.9, 5.7, 37000111, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -1.2, -0.9, 11.3, 37000111, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 11.8, -0.9, -10.2, 37000111, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -1.1, -0.9, -10.3, 37000111, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -11.4, -0.9, -7.6, 37000111, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 34.4, 0.1, 1.6, 37000112, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/gambling/wheel/roulette.iff", 34.4, 0.1, 1.6, 37000112, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 31.7, 0.1, -6.8, 37000112, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_02_on.iff", -16.7, -0.9, 26.4, 37000112, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/item/item_scrolling_screen.iff", 9.8, 3.6, 0.1, 37000111, math.rad(0) )

-- Entertainment District Caberet Cantina
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", 0.0, -0.7, -7.3, 37000721, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", -3.1, -0.7, -8.0, 37000721, math.rad(142) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", 3.1, -0.7, -8.0, 37000721, math.rad(-142) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", 4.9, -0.7, -11.0, 37000721, math.rad(-90) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", -4.9, -0.7, -11.0, 37000721, math.rad(90) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", -6.1, -0.7, -6.9, 37000721, math.rad(142) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", 6.1, -0.7, -6.9, 37000721, math.rad(-142) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", 2.5, -0.7, -4.3, 37000721, math.rad(-168) ) 
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", -2.5, -0.7, -4.3, 37000721, math.rad(168) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", 0.0, -0.7, -3.7, 37000721, math.rad(180) )

  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 0.0, -0.7, -6.6, 37000721, math.rad(180) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -3.5, -0.7, -7.4, 37000721, math.rad(142) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 3.5, -0.7, -7.4, 37000721, math.rad(-142) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 5.5, -0.7, -11.0, 37000721, math.rad(-90) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -5.5, -0.7, -11.0, 37000721, math.rad(90) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -6.5, -0.7, -6.4, 37000721, math.rad(142) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 6.5, -0.7, -6.4, 37000721, math.rad(-142) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 2.5, -0.7, -3.7, 37000721, math.rad(-168) ) 
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -2.5, -0.7, -3.7, 37000721, math.rad(168) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 0.0, -0.7, -3.1, 37000721, math.rad(180) )

  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", -11.7, 0.5, -3.2, 37000721, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", -11.7, 0.5, -11.9, 37000721, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", 11.7, 0.5, -3.2, 37000721, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", 11.7, 0.5, -11.9, 37000721, math.rad(0) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -1.2, 37000721, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -5.2, 37000721, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -4.7, 37000721, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -2.0, 37000721, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -9.9, 37000721, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -14.0, 37000721, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -13.3, 37000721, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -10.6, 37000721, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -1.2, 37000721, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -5.2, 37000721, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -4.7, 37000721, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -2.0, 37000721, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -9.9, 37000721, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -14.0, 37000721, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -13.3, 37000721, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -10.6, 37000721, math.rad(128) )
  
   
-- Entertainment District Sports Bar Cantina

  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", -11.7, 0.5, -3.2, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", -11.7, 0.5, -11.9, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", 11.7, 0.5, -3.2, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", 11.7, 0.5, -11.9, 37000714, math.rad(0) )
  
   spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -11.7, 0.5, -3.2, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -11.7, 0.5, -11.9, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 11.7, 0.5, -3.2, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 11.7, 0.5, -11.9, 37000714, math.rad(0) )
  
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -1.2, 37000714, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -5.2, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -4.7, 37000714, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -2.0, 37000714, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -9.9, 37000714, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -14.0, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -13.3, 37000714, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -10.6, 37000714, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -1.2, 37000714, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -5.2, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -4.7, 37000714, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -2.0, 37000714, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -9.9, 37000714, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -14.0, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -13.3, 37000714, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -10.6, 37000714, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/gambling/wheel/roulette.iff", 0.0, -0.7, -6.0, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/gambling/wheel/roulette.iff", 4.8, -0.7, -8.6, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/gambling/wheel/roulette.iff", -4.8, -0.7, -8.6, 37000714, math.rad(0) )
     
-- Starport Static Objects
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 12.2, 0.6, 50.2, 37000200, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -0.2, 0.6, 48.1, 37000200, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -13.5, 0.6, 50.9, 37000200, math.rad(0) )
 

 --          :::: Starport District ::::
  
  -- Starport District Cantina
  
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", -11.7, 0.5, -3.2, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", -11.7, 0.5, -11.9, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", 11.7, 0.5, -3.2, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", 11.7, 0.5, -11.9, 37000316, math.rad(0) )
  
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", -11.7, 0.5, -3.2, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", -11.7, 0.5, -11.9, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 11.7, 0.5, -3.2, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 11.7, 0.5, -11.9, 37000316, math.rad(0) )
  
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -1.2, 37000316, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -5.2, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -4.7, 37000316, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -2.0, 37000316, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -9.9, 37000316, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -14.0, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -13.3, 37000316, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -10.6, 37000316, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -1.2, 37000316, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -5.2, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -4.7, 37000316, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -2.0, 37000316, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -9.9, 37000316, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -14.0, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -13.3, 37000316, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -10.6, 37000316, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/gambling/wheel/roulette.iff", 0.0, -0.7, -6.0, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/gambling/wheel/roulette.iff", 4.8, -0.7, -8.6, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/gambling/wheel/roulette.iff", -4.8, -0.7, -8.6, 37000316, math.rad(0) )


-- Collective Commerce district Objects
  --Dex's Diner
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/bar_piece_curve_s1.iff", 3.8, 0.1, -2.2, 37000549, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/bar_piece_straight_s2.iff", -1, 0.1, -1.3, 37000549, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/bar_piece_straight_s1.iff", -5.5, 0.1, -1.9, 37000549, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/bar_counter_s1.iff", 2.0, -0.1, 3.6, 37000549, math.rad(90) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/bar_counter_s1.iff", -2.0, -0.1, 3.6, 37000549, math.rad(90) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/bar_counter_s1.iff", -5.7, -0.1, 3.6, 37000549, math.rad(90) )
  spawnSceneObject("coruscant", "object/tangible/furniture/cheap/chair_s01.iff", 3.5, 0.1, 3.5, 37000549, math.rad(-90) )
  spawnSceneObject("coruscant", "object/tangible/furniture/cheap/chair_s01.iff", 0.8, 0.1, 3.5, 37000549, math.rad(90) )
  spawnSceneObject("coruscant", "object/tangible/furniture/cheap/chair_s01.iff", -0.6, 0.1, 3.5, 37000549, math.rad(-90) )
  spawnSceneObject("coruscant", "object/tangible/furniture/cheap/chair_s01.iff", -3.2, 0.1, 3.5, 37000549, math.rad(90) )
  spawnSceneObject("coruscant", "object/tangible/furniture/cheap/chair_s01.iff", -4.5, 0.1, 3.5, 37000549, math.rad(-90) )
  spawnSceneObject("coruscant", "object/tangible/furniture/cheap/chair_s01.iff", -6.7, 0.1, 3.5, 37000549, math.rad(90) )
  spawnSceneObject("coruscant", "object/static/structure/general/all_foodcart_s01.iff", -1.8, 0.1, -7.5, 37000549, math.rad(90) )
  --exterior
  spawnSceneObject("coruscant", "object/static/structure/corellia/corl_fountain_brazier_square_s01.iff", -1898.7, 40, -178.2, 0, math.rad(90) )
  spawnSceneObject("coruscant", "object/static/structure/corellia/corl_fountain_brazier_square_s01.iff", -1868.2, 40, -47, 0, math.rad(90) )

  spawnSceneObject("coruscant", "object/static/vehicle/player_shuttle.iff", -1799, 40, -216, 0, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/vehicle/player_shuttle.iff", -1799, 40, -186, 0, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/vehicle/player_shuttle.iff", -1799, 40, -156, 0, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/vehicle/player_shuttle.iff", -1799, 40, -126, 0, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/vehicle/player_shuttle.iff", -1799, 40, -96, 0, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/vehicle/player_shuttle.iff", -1799, 40, -66, 0, math.rad(0) )
  
  spawnSceneObject("coruscant", "object/static/vehicle/e3/landspeeder.iff", -1850, 40, -135, 0, math.rad(90) )
  spawnSceneObject("coruscant", "object/static/vehicle/e3/landspeeder.iff", -1850, 40, -140, 0, math.rad(90) )
  -- Captured imperial bunker
  
  
    --Lower CityCantina Static Objects
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 27.1, -0.9, 12.0, 37000970, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 27.1, -0.9, -10.9, 37000970, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -16.4, -0.9, 0.4, 37000970, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 15.0, -0.9, -3.9, 37000970, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 15.6, -0.9, 5.7, 37000970, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -1.2, -0.9, 11.3, 37000970, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 11.8, -0.9, -10.2, 37000970, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -1.1, -0.9, -10.3, 37000970, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -11.4, -0.9, -7.6, 37000970, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/item/item_scrolling_screen.iff", 9.8, 3.6, 0.1, 37000970, math.rad(0) )
 
  --Lower City Bank
  spawnSceneObject("coruscant", "object/building/corellia/bank_corellia.iff", -5733, 0, -4968, 0, math.rad(0) )
  spawnSceneObject("coruscant", "object/building/corellia/garage_corellia.iff", -5745, 0, -5075, 0, math.rad(0) )
  
  
  -- Collecte commerce district uprising objects
  
  spawnSceneObject("coruscant", "object/static/structure/military/military_wall_weak_imperial_style_01.iff", -1815, 38, -47, 0, math.rad(15) )
  spawnSceneObject("coruscant", "object/static/structure/military/military_wall_weak_imperial_style_01.iff", -1825, 38, -38, 0, math.rad(45) )
  spawnSceneObject("coruscant", "object/static/structure/military/military_wall_weak_imperial_style_01.iff", -1828, 38, -25, 0, math.rad(75) )

end

function CoruscantEntertainmentScreenPlay:spawnMobiles()

	--Entertainment District Exterior
	
  local pNpc = spawnMobile("coruscant", "at_st", 60, 443, 6, -2928, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2253, 0, -4413, 12, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2257, 0, -4419, 20, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2251, 0, -4417, 90, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2245, 0, -4425, 135, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2254, 0, -4430, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2239, 0, -4416, 118, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2245, 0, -4406, 180, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2254, 0, -4406, -122, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2243, 0, -4394, 12, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2249, 0, -4378, 22, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2243, 0, -4373, 108, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2255, 0, -4367, -118, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2247, 0, -4440, 2, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2239, 0, -4436, 100, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2257, 0, -4445, -126, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
    
  pNpc = spawnMobile("coruscant", "commoner", 60, 2249, 0, -4452, 179, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
    
  pNpc = spawnMobile("coruscant", "commoner", 60, 2246, 0, -4362, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2243, 0, -4478, 55, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
   
  pNpc = spawnMobile("coruscant", "commoner", 60, 2249, 0, -4476, -132, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
    
  pNpc = spawnMobile("coruscant", "commoner", 60, 2253, 0, -4487, 177, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2257, 0, -4496, -155, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander") 
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2246, 0, -4502, 97, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander") 
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2241, 0, -4512, -1, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2257, 0, -4515, -176, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
    
  pNpc = spawnMobile("coruscant", "commoner", 60, 2252, 0, -4539, -18, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  spawnMobile("coruscant", "civilian_patrolman", 60, 2238, 0, -4546, 90, 0)
  
  
  
  spawnMobile("coruscant", "civilian_patrolman", 60, 2236, 0, -4469, 90, 0)
  
  spawnMobile("coruscant", "civilian_patrolman", 60, 2236, 0, -4395, 90, 0)
 
  --  Cantina 1 
  spawnMobile("coruscant", "bartender", 60, 0.3, 0.3, 4.4, 176, 37000721)
  --
  spawnMobile("coruscant", "bartender", 60, 0.3, 0.3, 4.4, 176, 37000714)
  spawnMobile("coruscant", "bartender", 60, 0.3, 0.3, 4.4, 176, 37000316)
 
  
	--  :: Starport District NPCs :: --
	
	
	spawnMobile("coruscant", "stormtrooper", 60, -69.2, 40, 3137, -99, 0)
	spawnMobile("coruscant", "stormtrooper", 60, -70.9, 40, 3146.4, -130, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -167.8, 40, 3130.5, 79, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -114.9, 40, 3216.3, -58, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -123.8, 40, 3216.3, 58, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -29.3, 40.4, 3190, -75, 0)
  
  spawnMobile("coruscant", "cll_8", 60, -210.9, 40, 3166.5, -109, 0)
  
  pNpc = spawnMobile("coruscant", "at_st", 60, -176, 40, 3245, 90, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  spawnMobile("coruscant", "commoner", 60, -121, 40, 3259, 22, 0)
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -116, 40, 3231, -148, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -118.4, 40, 3228.1, 46, 0)
  self:setMoodString(pNpc, "conversation")
  
  spawnMobile("coruscant", "commoner", 60, -129, 40, 3231, 143, 0)
  
  --Imp Bunker
  spawnMobile("coruscant", "fbase_specialist_noncom", 60, 7.0, -6.7, -8.0, -94, 37000432)
  spawnMobile("coruscant", "fbase_specialist_noncom", 60, 2.0, -6.7, -8.0, 94, 37000432) 
  spawnMobile("coruscant", "fbase_stormtrooper_medic", 60, 6.9, -13.8, 13.9, 174, 37000435) 
  spawnMobile("coruscant", "fbase_dark_trooper_hard", 60, 15.7, -13.8, -15.0, 0, 37000437)
  
  spawnMobile("coruscant", "stormtrooper", 60, -176.1, 40, 3272.3, 90, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -176.1, 40, 3261.9, 90, 0) 
  
  pNpc = spawnMobile("coruscant", "at_st", 60, -69, 40, 3216, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  spawnMobile("coruscant", "imperial_recruiter", 60, -188.7, 40, 3269.4, 90, 0) 
  
  -- :: Monument Square :: --
  spawnMobile("coruscant", "stormtrooper", 60, 1551.5, 40, 775.7, 180, 0) 
  
  pNpc = spawnMobile("coruscant", "at_st", 60, 1655.6, 40, 648.8, -90, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "at_st", 60, 1541.3, 40, 574.3, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "at_st", 60, 1490, 40, 655, 90, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "at_st", 60, 1484, 40, 753, 151, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "at_st", 60, 1596, 40, 740, -124, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  spawnMobile("coruscant", "stormtrooper", 60, 1660.6, 40, 619.8, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1649.4, 40, 619.8, 0, 0)
  
  spawnMobile("coruscant", "imperial_recruiter", 60, 1653, 40, 606.9, 90, 0) 
  
  spawnMobile("coruscant", "fbase_dark_trooper_hard", 60, 4.4, -6.8, -7.2, 0, 37000254)  
  spawnMobile("coruscant", "fbase_stormtrooper_medic_hard", 60, 6.6, -13.8, 10.5, 0, 37000257)  
  spawnMobile("coruscant", "fbase_imperial_colonel", 60, 13.6, -13.8, 4.9, 64, 37000258)  
  spawnMobile("coruscant", "fbase_imperial_corporal", 60, 17.7, -11.5, -21.3, 168, 37000259)
  
  spawnMobile("coruscant", "stormtrooper", 60, 1525, 40, 718, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1527, 40, 718, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1529, 40, 718, 0, 0) 
  spawnMobile("coruscant", "stormtrooper", 60, 1531, 40, 718, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1533, 40, 718, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1535, 40, 718, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1537, 40, 718, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1539, 40, 718, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1541, 40, 718, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1543, 40, 718, 0, 0)
  
  spawnMobile("coruscant", "stormtrooper", 60, 1525, 40, 720, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1527, 40, 720, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1529, 40, 720, 0, 0) 
  spawnMobile("coruscant", "stormtrooper", 60, 1531, 40, 720, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1533, 40, 720, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1535, 40, 720, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1537, 40, 720, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1539, 40, 720, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1541, 40, 720, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1543, 40, 720, 0, 0)
  
  spawnMobile("coruscant", "stormtrooper", 60, 1525, 40, 722, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1527, 40, 722, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1529, 40, 722, 0, 0) 
  spawnMobile("coruscant", "stormtrooper", 60, 1531, 40, 722, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1533, 40, 722, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1535, 40, 722, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1537, 40, 722, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1539, 40, 722, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1541, 40, 722, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1543, 40, 722, 0, 0)
  
  spawnMobile("coruscant", "stormtrooper", 60, 1525, 40, 724, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1527, 40, 724, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1529, 40, 724, 0, 0) 
  spawnMobile("coruscant", "stormtrooper", 60, 1531, 40, 724, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1533, 40, 724, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1535, 40, 724, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1537, 40, 724, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1539, 40, 724, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1541, 40, 724, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1543, 40, 724, 0, 0)
  
  pNpc = spawnMobile("coruscant", "imperial_moff", 60, 1534, 40, 728.6, 180, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "imperial_inquisitor", 60, 1531.5, 40, 730.7, 180, 0)
  self:setMoodString(pNpc, "angry")
  
  pNpc = spawnMobile("coruscant", "imperial_inquisitor", 60, 1536.5, 40, 730.7, 180, 0)
  self:setMoodString(pNpc, "angry")
  
  pNpc = spawnMobile("coruscant", "emperors_hand", 60, 1534, 40, 730.7, 180, 0)
  self:setMoodString(pNpc, "angry")
  
  
  --  Collective Commerce District NPCs
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 3.3, 0.1, 3.4, -90, 37000549)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 1.0, 0.1, 3.4, 90, 37000549)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -0.6, 0.1, 3.4, -90, 37000549)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -3.2, 0.1, 3.4, 90, 37000549)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -4.5, 0.1, 3.4, -90, 37000549)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -6.6, 0.1, 3.4, 90, 37000549)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5.7, 0.1, -0.3, -150, 37000549)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -7.0, 0.1, -1.8, 32, 37000549)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -2.3, 0.1, -0.1, 172, 37000549)
  self:setMoodString(pNpc, "angry")
  
  spawnMobile("coruscant", "r4", 60, -1851.8, 40, -143.6, 9, 0)
  
  pNpc = spawnMobile("coruscant", "commoner_fat", 60, -1852.1, 40, -141.5, 165, 0)
  self:setMoodString(pNpc, "conversation")
  
  spawnMobile("coruscant", "commoner", 60, -1853.8, 40, -128.2, -80, 0)
  spawnMobile("coruscant", "commoner", 60, -1879.2, 40, -122.7, 95, 0)
  spawnMobile("coruscant", "commoner", 60, -1912.6, 40, -119.8, -110, 0)
  spawnMobile("coruscant", "commoner", 60, -1929.6, 40, -133.6, 179, 0)
  spawnMobile("coruscant", "commoner", 60, -1916.9, 40, -170.7, -7, 0)
  spawnMobile("coruscant", "commoner", 60, -1931.8, 40, -196.3, 34, 0)
  
  pNpc = spawnMobile("coruscant", "commoner_fat", 60, -1888.2, 40, -192.3, -175, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "commoner_fat", 60, -1889.6, 40, -195.9, 22, 0)
  self:setMoodString(pNpc, "conversation")
  
  spawnMobile("coruscant", "commoner", 60, -1874.8, 40, -153.9, 0, 0)
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -1847.3, 40, -163.8, 175, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "commoner_fat", 60, -1847.8, 40, -166.6, 8, 0)
  self:setMoodString(pNpc, "conversation")
  
  spawnMobile("coruscant", "commoner", 60, -1846.0, 40, -197.3, 51, 0)
  
  pNpc = spawnMobile("coruscant", "commoner_fat", 60, -1874.2, 40, -96.2, 48, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -1871.3, 40, -93.1, -127, 0)
  self:setMoodString(pNpc, "angry")
  
  spawnMobile("coruscant", "commoner", 60, -1902.8, 40, -77.2, -91, 0)
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -1921.7, 40, -101.2, -30, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -1924.6, 40, -98, 132, 0)
  self:setMoodString(pNpc, "conversation")
  
  spawnMobile("coruscant", "commoner", 60, -1928.5, 40, -58.6, 0, 0)
  spawnMobile("coruscant", "commoner", 60, -1966.5, 40, -15.6, -141, 0)
  spawnMobile("coruscant", "commoner", 60, -1993.2, 40, -39.5, 178, 0)
  spawnMobile("coruscant", "commoner", 60, -1979.8, 40, -85.3, -9, 0)
  spawnMobile("coruscant", "commoner", 60, -1988.6, 40, -113.4, -178, 0)
  spawnMobile("coruscant", "commoner", 60, -1977.9, 40, -154.9, -102, 0)
  spawnMobile("coruscant", "commoner", 60, -1971.9, 40, -199.4, 85, 0)
  
  spawnMobile("coruscant", "imperial_first_lieutenant", 60, -1809.2, 47, -22.1, -142, 0)
  spawnMobile("coruscant", "imperial_first_lieutenant", 60, -1804.8, 47, -23.9, 178, 0)
  spawnMobile("coruscant", "imperial_first_lieutenant", 60, -1811, 47, -18, -90, 0)
  
  spawnMobile("coruscant", "stormtrooper", 60, 4.0, 0.5, 2.7, 176, 37000756)
  spawnMobile("coruscant", "stormtrooper", 60, -1799.1, 40, -21.8, 85, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -1800.9, 40, -26.9, 176, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -1808.9, 40, -26.9, 176, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -1813.7, 40, -21.9, -90, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -1813.7, 40, -14.1, -90, 0)
  
  spawnMobile("coruscant", "rebel_trooper", 60, 0.2, 0.3, 3.2, 0, 37000570)
  spawnMobile("coruscant", "rebel_trooper", 60, 4.6, 0.3, -1.1, -25, 37000570)
  
  spawnMobile("coruscant", "rebel_recruiter", 60, -4.3, 0.3, -4.3, 90, 37000571)
  
  spawnMobile("coruscant", "rebel_trooper", 60, 5.6, -6.8, -5.1, -7, 37000573)
  spawnMobile("coruscant", "rebel_trooper", 60, 2.8, -6.8, -5.8, 0, 37000573)
  
  spawnMobile("coruscant", "rebel_trooper", 60, -2.6, -13.7, -9.6, 0, 37000575)
  spawnMobile("coruscant", "rebel_trooper", 60, -5.8, -13.7, -4.2, 0, 37000575)
  spawnMobile("coruscant", "rebel_trooper", 60, -1.8, -13.7, 0.6, 0, 37000575)
  
  spawnMobile("coruscant", "rebel_trooper", 60, -3.1, -13.8, 11.9, 0, 37000576)
  spawnMobile("coruscant", "rebel_trooper", 60, 4.5, -13.8, 12.6, -90, 37000576)
  
  spawnMobile("coruscant", "rebel_trooper", 60, 17, -13.8, 11.6, -125, 37000577)
  spawnMobile("coruscant", "rebel_trooper", 60, 15.5, -13.8, 6.8, 10, 37000577)
  
  spawnMobile("coruscant", "rebel_trooper", 60, 14.5, -13.8, -7.6, 157, 37000578)
  spawnMobile("coruscant", "rebel_trooper", 60, 15.7, -13.8, -13.6, -5, 37000578)
  
  spawnMobile("coruscant", "fbase_rebel_heavy_trooper", 60, 14.8, -11.5, -20.8, -11, 37000578)
  
  -- Lower City 1312
    -- Race Spectators  Row 1 Westside
    
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4821, -90, 0)
  self:setMoodString(pNpc, "entertained")
   
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4825, -90, 0)
  self:setMoodString(pNpc, "entertained")
   
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4829, -90, 0)
  self:setMoodString(pNpc, "entertained")
   
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4833, -90, 0)
  self:setMoodString(pNpc, "entertained")
   
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4837, -90, 0)
  self:setMoodString(pNpc, "entertained")
   
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4841, -90, 0)
  self:setMoodString(pNpc, "entertained")
   
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4845, -90, 0)
  self:setMoodString(pNpc, "entertained")
   
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4849, -90, 0)
  self:setMoodString(pNpc, "entertained")
   
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4853, -90, 0)
  self:setMoodString(pNpc, "entertained")
   
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4857, -90, 0)
  self:setMoodString(pNpc, "entertained")
    
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4861, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4865, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4869, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4873, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4877, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4881, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4885, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4889, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4894, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4898, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4902, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4906, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5856, 0, -4910, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
    -- Race Spectators Row 2 Westside
    
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4823, -90, 0)
  self:setMoodString(pNpc, "entertained")
    
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4827, -90, 0)
  self:setMoodString(pNpc, "entertained")
    
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4831, -90, 0)
  self:setMoodString(pNpc, "entertained")
    
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4835, -90, 0)
  self:setMoodString(pNpc, "entertained")
    
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4839, -90, 0)
  self:setMoodString(pNpc, "entertained")
    
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4843, -90, 0)
  self:setMoodString(pNpc, "entertained")
    
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4847, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
    
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4851, -90, 0)
  self:setMoodString(pNpc, "entertained")
    
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4855, -90, 0)
  self:setMoodString(pNpc, "entertained")
    
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4859, -90, 0)
  self:setMoodString(pNpc, "entertained")
    
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4863, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4867, -90, 0)
  self:setMoodString(pNpc, "entertained")  
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4871, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4875, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4879, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4883, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4887, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4891, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4895, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4899, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4903, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5854, 0, -4907, -90, 0)
  self:setMoodString(pNpc, "entertained")
  
  -- Lower City Market
  
  pNpc = spawnMobile("coruscant", "vendor", 60, -5747.8, 0, -4881.6, -82, 0)
  self:setMoodString(pNpc, "npc_accusing")
  
  pNpc = spawnMobile("coruscant", "thief", 60, -5750.3, 0, -4880.5, 101, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "vendor", 60, -5750.3, 0, -4896.8, -92, 0)
  self:setMoodString(pNpc, "angry")
  
  pNpc = spawnMobile("coruscant", "vendor", 60, -5750, 0, -4899, -102, 0)
  self:setMoodString(pNpc, "happy")
  
  pNpc = spawnMobile("coruscant", "coruscant_security", 60, -5804, 0, -4850, 180, 0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "coruscant_security", 60, -5748.9, 0, -4951.7, -50, 0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "coruscant_security", 60, -5748.9, 0, -4984.3, -134, 0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "coruscant_security", 60, -5716.9, 0, -4851.7, 43, 0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "coruscant_security", 60, -5707.1, 0, -4988, -150, 0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "coruscant_security", 60, -5784, 0, -4986, 0, 0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5766.6, 0, -4918.3, -29, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5771.6, 0, -4917.5, 55, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5769.8, 0, -4910.3, 130, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5762.6, 0, -4911, -132, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "smuggler", 60, -5786.8, 0, -4969.9, 0, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "scoundrel", 60, -5786.8, 0, -4967.2, 180, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "wookiee_brawler", 60, -5773.4, 0, -4948.9, 50, 0)
  self:setMoodString(pNpc, "npc_accusing")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5771.8, 0, -4947.2, -139, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "bounty_hunter_thug", 60, -5723.6, 0, -4842.7, 46, 0)
  self:setMoodString(pNpc, "npc_accusing")
  
  pNpc = spawnMobile("coruscant", "pirate", 60, -5720, 0, -4838.2, -146, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "tough_thug_male_rodian", 60, -5703, 0, -4855.1, -60, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5716.4, 0, -4883.1, 50, 0)
  self:setMoodString(pNpc, "npc_accusing")
  
  pNpc = spawnMobile("coruscant", "gambler", 60, -5713.4, 0, -4880, -132, 0)
  self:setMoodString(pNpc, "npc_consoling")
  
  pNpc = spawnMobile("coruscant", "twilek_slave", 60, -5671.1, 0, -4903.8, -152, 0)
  self:setMoodString(pNpc, "worried")
  
  pNpc = spawnMobile("coruscant", "slaver", 60, -5672.4, 0, -4906.1, 31, 0)
  self:setMoodString(pNpc, "npc_accusing")
  
  pNpc = spawnMobile("coruscant", "slaver", 60, -5673.8, 0, -4905, 54, 0)
  self:setMoodString(pNpc, "npc_accusing")
  
  pNpc = spawnMobile("coruscant", "slavemaster", 60, -5674, 0, -4906.4, 48, 0)
  self:setMoodString(pNpc, "happy")
  
  pNpc = spawnMobile("coruscant", "coruscant_security", 60, -5694.2, 0, -4932, -92, 0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "r4", 60, -5706.7, 0, -4948.3, 114, 0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "contractor", 60, -5705.4, 0, -4949.0, -57, 0)
  self:setMoodString(pNpc, "npc_consoling")
  
  pNpc = spawnMobile("coruscant", "tough_thug_male_rodian", 60, -5671.5, 0, -4961.9, -41, 0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "mercenary", 60, -5680, 0, -4945, 143, 0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5767.0, 0, -4857.5, -133, 0)
  self:setMoodString(pNpc, "npc_accusing")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5770.4, 0, -4859.8, 50, 0)
  self:setMoodString(pNpc, "npc_consoling")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5754.8, 0, -4896.3, 90, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "imperial_recruiter", 60, -5731, 0, -4927, 173, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5732, 0, -4930.1, 11, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "rebel_recruiter", 60, -5675.9, 0, -4795.0, 0, 0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "coruscant_security_weak", 60, -5716, 0, -4772, 100, 0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "coruscant_security_weak", 60, -5717, 0, -4769, 90, 0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "coruscant_security_weak", 60, -5722, 0, -4777, 126, 0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "thug", 60, -5706, 0, -4792, 0, 0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "thug", 60, -5691, 0, -4787, -67, 0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "thug", 60, -5695, 0, -4771, -97, 0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "thug", 60, -5694, 0, -4764, -102, 0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "thug", 60, -5703, 0, -4773, -80, 0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5787.2, 0, -4885.0, 54, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -5784.5, 0, -4883.5, -128, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "scavenger", 60, -5786, 0, -4793, 0, 0)
  self:setMoodString(pNpc, "angry")
  
  -- Inside LC Cantina
  
  pNpc = spawnMobile("coruscant", "entertainer", 60, 38.6, 0.1, 2.9, 133, 37000968)
  self:setMoodString(pNpc, "npc_accusing")
  
  pNpc = spawnMobile("coruscant", "smuggler", 60, 40.3, 0.1, 1.4, -57, 37000968)
  self:setMoodString(pNpc, "npc_consoling")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 30.3, 0.1, -8.7, 48, 37000969)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 30.1, 0.1, -5.6, 124, 37000969)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("coruscant", "bartender", 60, 8.6, -0.9, 0.6, 90, 37000970)
  self:setMoodString(pNpc, "neutral")

  pNpc = spawnMobile("coruscant", "bartender", 60, -0.9, -0.9, 3.3, 0, 37000970)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "bartender", 60, -1.7, -0.9, -2.4, -179, 37000970)
  self:setMoodString(pNpc, "npc_accusing")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -1.7, -0.9, -5.0, 0, 37000970)
  self:setMoodString(pNpc, "npc_consoling")
  
  pNpc = spawnMobile("coruscant", "patron",60,10.65,-0.894992,1.91,330,37000970)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("coruscant", "patron",60,-4.11,-0.894992,5.4,26.8951,37000970)
  self:setMoodString(pNpc, "happy")
  pNpc = spawnMobile("coruscant", "commoner",60,10.17,-0.894992,2.74,125.098,37000970)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "commoner_fat",60,2.11,-0.894992,5.4,180,37000970)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("coruscant", "commoner_fat",60,-3.2,-0.9,-10.8,65,37000970)
  self:setMoodString(pNpc, "npc_sitting_table_eating")
  pNpc = spawnMobile("coruscant", "commoner_naboo",60,3.11,0,5.4,161.005,37000970)
  self:setMoodString(pNpc, "bored")
  pNpc = spawnMobile("coruscant", "commoner_naboo",60,1.11,0,5.4,330.024,37000970)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("coruscant", "commoner_naboo",60,-3.11,0,5.4,16.6733,37000970)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("coruscant", "commoner_naboo",60,16.1,-0.9,4.1,340,37000970)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "commoner_tatooine",60,4.11,-0.894992,5.4,158.443,37000970)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("coruscant", "commoner_tatooine",60,1.99,-0.894992,-8.44,325.01,37000970)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "commoner_tatooine",60,1.19,-0.894992,-7.63,152.004,37000970)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "entertainer",60,9.4,0,3.9,310,37000970)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "patron",60,8.49,-0.894992,4.64,128.74,37000970)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "patron",60,13.7,-0.9,-5.6,67,37000970)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "patron",60,13.6,-0.9,-2.4,147,37000970)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "patron",60,16.3,-0.9,-5.6,320,37000970)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "patron",60,23.5,-0.9,-8.9,51,37000970)
  self:setMoodString(pNpc, "npc_sitting_table")
  pNpc = spawnMobile("coruscant", "patron",60,26.3,-0.9,-8.8,317,37000970)
  self:setMoodString(pNpc, "npc_sitting_table_eating")
  pNpc = spawnMobile("coruscant", "bounty_hunter",60,8.0,-0.9,-4.5,-21,37000970)
  self:setMoodString(pNpc, "angry")
  pNpc = spawnMobile("coruscant", "thug",60,6.8,-0.9,-4.5,-22,37000970)
  self:setMoodString(pNpc, "npc_worried")
  pNpc = spawnMobile("coruscant", "patron",60,-3.1,-0.9,11.6,97,37000970)
  self:setMoodString(pNpc, "npc_sitting_table")
  pNpc = spawnMobile("coruscant", "patron",60,1.2,-0.9,11.6,269,37000970)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "patron_ithorian",60,14.1,-0.9,4.3,51,37000970)
  self:setMoodString(pNpc, "npc_sitting_table")
  pNpc = spawnMobile("coruscant", "patron_klaatu",60,14.4,-0.9,7.5,139,37000970)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "patron_quarren",60,17.1,-0.9,7.8,226,37000970)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("coruscant", "jabba_swooper",60,-3.1,-0.9,-5.2,154,37000970)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("coruscant", "jabba_swooper",60,-5.4,-0.9,-5.2,79,37000970)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("coruscant", "jabba_swooper",60,-3.7,-0.9,-7.4,2,37000970)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("coruscant", "jabba_swooper_leader",60,5.7,-0.9,-12.4,3,37000970)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("coruscant", "jabba_swooper_leader",60,4.0,-0.9,-4.8,73,37000970)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("coruscant", "jabba_swooper",60,20.0,-0.9,-11.2,2,37000970)
  self:setMoodString(pNpc, "neutral")
  
  
  pNpc = spawnMobile("coruscant", "valarian_swooper",60,22.5,-0.9,-2.0,-104,37000970)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("coruscant", "valarian_swooper",60,5.4,-0.9,8.9,122,37000970)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("coruscant", "valarian_swooper",60,15.3,-0.9,10.2,-175,37000970)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("coruscant", "valarian_swooper_leader",60,24.3,-0.9,9.1,-148,37000970)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("coruscant", "valarian_swooper",60,6.5,-0.9,9.9,176,37000970)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "rebel_resistance_agitator",60,5.6,-0.9,5.7,-176,37000970)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("coruscant", "civil_patrol_sergeant",60,27.9,0.1,1.3,-179,37000970)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "valarian_swooper_leader",60,-5846.1,0,-5037.6,150,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("coruscant", "valarian_swooper",60,-5837.6,0,-5037.3,41,0)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "valarian_swooper",60,-5834.8,0,-5033.4,-130,0)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "valarian_swooper",60,-5840.3,0,-5026.2,87,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("coruscant", "valarian_swooper",60,-5830.0,0,-5018.0,-178,0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("coruscant", "jabba_swooper_leader",60,-5678,0,-5032.6,-123,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("coruscant", "jabba_swooper",60,-5687.2,0,-5037.6,-16,0)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "jabba_swooper",60,-5687,0,-5032.6,-178,0)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "jabba_swooper",60,-5688.4,0,-5022.6,-165,0)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "jabba_swooper",60,-5694,0,-5029.6,108,0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "coruscant_security",60,-5745.9,0,-5020.4,173,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("coruscant", "tough_thug_male_rodian", 60, -5770, 0, -5012, 11, 0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("coruscant", "tough_thug_male_rodian", 60, -5716, 0, -5031, -15, 0)
  self:setMoodString(pNpc, "neutral")
  
  
  
  
  --  MONUMENT SQUARE AGAIN
   -- Inside MS Cantina
  
  pNpc = spawnMobile("coruscant", "entertainer", 60, 38.6, 0.1, 2.9, 133, 37000109)
  self:setMoodString(pNpc, "npc_accusing")
  
  pNpc = spawnMobile("coruscant", "stormtrooper", 60, 40.3, 0.1, 1.4, -57, 37000109)
  self:setMoodString(pNpc, "npc_consoling")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 30.3, 0.1, -8.7, 48, 37000110)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 30.1, 0.1, -5.6, 124, 37000110)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("coruscant", "bartender", 60, 8.6, -0.9, 0.6, 90, 37000111)
  self:setMoodString(pNpc, "neutral")

  pNpc = spawnMobile("coruscant", "bartender", 60, -0.9, -0.9, 3.3, 0, 37000111)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "bartender", 60, -1.7, -0.9, -2.4, -179, 37000111)
  self:setMoodString(pNpc, "npc_accusing")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -1.7, -0.9, -5.0, 0, 37000111)
  self:setMoodString(pNpc, "npc_consoling")
  
  pNpc = spawnMobile("coruscant", "patron",60,10.65,-0.894992,1.91,330,37000111)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("coruscant", "patron",60,-4.11,-0.894992,5.4,26.8951,37000111)
  self:setMoodString(pNpc, "happy")
  pNpc = spawnMobile("coruscant", "comm_operator",60,10.17,-0.894992,2.74,125.098,37000111)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "civil_patrol_commander",60,2.11,-0.894992,5.4,180,37000111)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("coruscant", "civil_patrol_corporal",60,-3.2,-0.9,-10.8,65,37000111)
  self:setMoodString(pNpc, "npc_sitting_table_eating")
  pNpc = spawnMobile("coruscant", "civilian_patrolman",60,3.11,0,5.4,161.005,37000111)
  self:setMoodString(pNpc, "bored")
  pNpc = spawnMobile("coruscant", "stormtrooper_commando",60,1.11,0,5.4,330.024,37000111)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("coruscant", "scout_trooper",60,-3.11,0,5.4,16.6733,37000111)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("coruscant", "scout_trooper",60,16.1,-0.9,4.1,340,37000111)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "imperial_general",60,4.11,-0.894992,5.4,158.443,37000111)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("coruscant", "imperial_scientist",60,1.99,-0.894992,-8.44,325.01,37000111)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "imperial_trooper",60,1.19,-0.894992,-7.63,152.004,37000111)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "entertainer",60,9.4,0,3.9,310,37000111)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "patron",60,8.49,-0.894992,4.64,128.74,37000111)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "patron",60,13.7,-0.9,-5.6,67,37000111)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "patron",60,13.6,-0.9,-2.4,147,37000111)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "patron",60,16.3,-0.9,-5.6,320,37000111)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "patron",60,23.5,-0.9,-8.9,51,37000111)
  self:setMoodString(pNpc, "npc_sitting_table")
  pNpc = spawnMobile("coruscant", "patron",60,26.3,-0.9,-8.8,317,37000111)
  self:setMoodString(pNpc, "npc_sitting_table_eating")
  pNpc = spawnMobile("coruscant", "stormtrooper",60,8.0,-0.9,-4.5,-21,37000111)
  self:setMoodString(pNpc, "angry")
  pNpc = spawnMobile("coruscant", "imperial_master_sergeant",60,6.8,-0.9,-4.5,-22,37000111)
  self:setMoodString(pNpc, "npc_worried")
  pNpc = spawnMobile("coruscant", "imperial_major",60,-3.1,-0.9,11.6,97,37000111)
  self:setMoodString(pNpc, "npc_sitting_table")
  pNpc = spawnMobile("coruscant", "imperial_colonel",60,1.2,-0.9,11.6,269,37000111)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "scout_trooper",60,14.1,-0.9,4.3,51,37000111)
  self:setMoodString(pNpc, "npc_sitting_table")
  pNpc = spawnMobile("coruscant", "stormtrooper_squad_leader",60,14.4,-0.9,7.5,139,37000111)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "imperial_officer",60,17.1,-0.9,7.8,226,37000111)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  -- Starport
  pNpc = spawnMobile("coruscant", "bartender",60,-33.0,1.6,49.9,25,37000205)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "patron",60,-27.4,1.6,49.5,0,37000205)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "patron",60,-25.8,1.6,50.9,-87,37000205)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "patron",60,-27.2,1.6,52.4,-179,37000205)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("coruscant", "patron",60,-34.5,1.6,64.2,-52,37000205)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "patron",60,-34.8,1.6,66.2,-139,37000205)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "patron",60,-36.6,1.6,63.8,37,37000205)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "patron",60,-29.2,1.6,66.2,-118,37000205)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "patron",60,-27.1,1.6,65.4,-116,37000205)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "patron",60,-29.7,1.6,64.2,62,37000205)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("coruscant", "patron",60,-43.5,1.6,50.1,36,37000206)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "patron",60,-41.0,1.6,52.2,-129,37000206)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "stormtrooper",60,-56.9,1.0,8.7,-6,37000210)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "patron",60,-56.9,1.0,10.9,179,37000210)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "patron",60,47.8,0.6,46.0,4,37000203)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "patron",60,48.1,0.6,48.9,-175,37000203)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "patron",60,43.4,0.6,47.4,-67,37000203)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("coruscant", "patron",60,36.0,0.6,35.5,73,37000203)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  --  Collective Commerce District Uprising NPCs
  
  spawnMobile("coruscant", "at_st", 60, -1819, 40, -30, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -1822, 40, -19, -145, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -1816, 40, -37, -3, 0)
  
  spawnMobile("coruscant", "coruscant_rebel_insurgent", 40, -1827, 40, -41, 40, 0)
  spawnMobile("coruscant", "coruscant_rebel_insurgent", 40, -1820, 40, -44, 35, 0)
  spawnMobile("coruscant", "coruscant_rebel_insurgent", 40, -1809, 40, -45, 0, 0)
  spawnMobile("coruscant", "coruscant_rebel_insurgent", 40, -1834, 40, -30, 71, 0)
  spawnMobile("coruscant", "coruscant_rebel_insurgent", 40, -1839, 40, -20, 90, 0)
  spawnMobile("coruscant", "coruscant_rebel_insurgent", 40, -1832, 40, -25, 85, 0)
  spawnMobile("coruscant", "coruscant_rebel_insurgent", 40, -1831, 40, -35, 62, 0)
  
  pNpc = spawnMobile("coruscant", "coruscant_rebel_insurgent",60,-1826,40,-56,24,0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "coruscant_rebel_insurgent",60,-1833,40,-52,34,0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "coruscant_rebel_insurgent",60,-1841,40,-42,42,0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "coruscant_rebel_insurgent",60,-1846,40,-29,73,0)
  self:setMoodString(pNpc, "angry")
  
  spawnMobile("coruscant", "stormtrooper", 60, -1802.3, 40, -138.8, -90, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -1802.3, 40, -233.8, -90, 0)
  
  spawnMobile("coruscant", "pilot", 60, -1803, 40, -154, 47, 0)
  
  spawnMobile("coruscant", "commoner", 60, -1849, 40, -113, 90, 0)
  
  pNpc = spawnMobile("coruscant", "pilot",60,-1803,40,-178,180,0)
  self:setMoodString(pNpc, "npc_accusing")
  pNpc = spawnMobile("coruscant", "technician",60,-1803,40,-182,0,0)
  self:setMoodString(pNpc, "conversation")
  
  spawnMobile("coruscant", "coruscant_rebel_insurgent", 60, -1813, 40, -220, 136, 0)
  spawnMobile("coruscant", "coruscant_rebel_insurgent", 60, -1824, 40, -238, 77, 0)
  
  spawnMobile("coruscant", "civil_patrol_captain", 60, -1849, 40, -188, 77, 0)
  
  spawnMobile("coruscant", "coruscant_rebel_insurgent", 60, -1903, 40, -178, -97, 0)
  
  spawnMobile("coruscant", "civil_patrol_captain", 60, -1916, 40, -166, 129, 0)
  spawnMobile("coruscant", "civil_patrol_captain", 60, -1919, 40, -189, 53, 0)
  spawnMobile("coruscant", "civil_patrol_captain", 60, -1919, 40, -175, -109, 0)
  
  spawnMobile("coruscant", "rebel_recruiter", 60, 17.5, -11.5, -21.2, 0, 37000578)
  
  spawnMobile("coruscant", "coruscant_rebel_insurgent", 60, -1980, 40, -162, 38, 0)
  spawnMobile("coruscant", "coruscant_rebel_insurgent", 60, -1984, 40, -158, 38, 0)
  spawnMobile("coruscant", "coruscant_rebel_insurgent", 60, -1989, 40, -154, 38, 0)
  spawnMobile("coruscant", "coruscant_rebel_insurgent", 60, -1997, 40, -148, 38, 0)
  spawnMobile("coruscant", "coruscant_rebel_insurgent", 60, -1995, 40, -133, 86, 0)
  
  spawnMobile("coruscant", "stormtrooper", 60, -1982, 40, -124, -138, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -1977, 40, -128, -138, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -1973, 40, -135, -138, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -1968, 40, -144, -104, 0)
  
  -- Monument Square Again
  pNpc = spawnMobile("coruscant", "at_at", 60, 1607, 40, 654, -90, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "at_st", 60, 1488, 40, 706, 90, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  spawnMobile("coruscant", "stormtrooper", 60, 1644, 40, 688, 180, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1665, 40, 688, 180, 0)
  
  
  pNpc = spawnMobile("coruscant", "noble",60,5.22842,0.3,2.91677,0,37000186) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "info_broker",60,5.22842,0.3,4.01677,180.005,37000186)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "imperial_major",60,5.43518,2.27819,-27.0615,344.925,37000186)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "brawler",60,-1.72746,7.9,-32.175,0,37000186)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "comm_operator",300,-0.332123,0.3,-2.90219,134.998,37000186)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "entertainer",60,0.767877,0.3,-2.90219,180.005,37000186)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "farmer",60,-18.6014,1.30259,-11.3146,360.011,37000186)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "farmer",60,0.767877,0.3,-4.00219,0,37000186)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "medic",60,-0.332123,0.3,-4.00219,45.0054,37000186)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "medic",60,5.18395,2.27819,-26.1292,164.924,37000186)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "noble",60,4.12842,0.3,4.01677,134.998,37000186)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "scientist",60,-1.72746,7.9,-31.075,180.005,37000186)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "mercenary",60,-18.6014,1.30292,-10.2146,180.006,37000186)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "commoner_technician",300,-20.2743,3.22324,22.781,180.005,37000191)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "farmer",60,-20.2743,3.22324,21.681,0,37000191)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "info_broker",60,21.8079,3.22324,26.617,180.006,37000192) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "artisan",300,21.8079,3.22324,25.517,360.011,37000192)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "farmer",60,37.1168,1.29422,-4.41488,0,37000193)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("coruscant", "businessman",60,37.1168,1.29422,-3.41488,180.005,37000193)
  self:setMoodString(pNpc, "conversation")
  
  spawnMobile("coruscant", "trainer_imagedesigner", 60, 0.5, 0.6, -5.4, -70, 0)
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -2.1, -0.7, -6.2, 79, 37000714)
  self:setMoodString(pNpc, "entertained")
  pNpc = spawnMobile("coruscant", "commoner", 60, 1.2, -0.7, -4.9, -128, 37000714)
  self:setMoodString(pNpc, "entertained")
  pNpc = spawnMobile("coruscant", "commoner", 60, 3.7, -0.7, -7.7, 130, 37000714)
  self:setMoodString(pNpc, "angry")
  pNpc = spawnMobile("coruscant", "commoner", 60, 3.9, -0.7, -9.5, 36, 37000714)
  self:setMoodString(pNpc, "entertained")
  pNpc = spawnMobile("coruscant", "commoner", 60, 5.7, -0.7, -9.4, -50, 37000714)
  self:setMoodString(pNpc, "npc_accusing")
end
