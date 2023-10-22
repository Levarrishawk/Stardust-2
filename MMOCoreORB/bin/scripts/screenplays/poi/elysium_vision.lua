ElysiumVisionScreenPlay = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "ElysiumVisionScreenPlay"
}

registerScreenPlay("ElysiumVisionScreenPlay", true)

function ElysiumVisionScreenPlay:start()
  if (isZoneEnabled("elysium")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
    self:spawnActiveArea1()
  end
end

function ElysiumVisionScreenPlay:spawnSceneObjects()

  spawnSceneObject("elysium", "object/static/structure/elysium/invisible_wall.iff", -0.1, 12, 32.0, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/static/structure/elysium/invisible_wall.iff", -0.1, 16, 32.0, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/static/structure/elysium/invisible_wall.iff", -0.1, 20, 32.0, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/static/structure/elysium/invisible_wall.iff", -0.1, 24, 32.0, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/static/structure/elysium/invisible_wall.iff", -0.1, 28, 32.0, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/static/structure/elysium/invisible_wall.iff", -0.1, 30, 32.0, 590000047, math.rad(0) ) 
  spawnSceneObject("elysium", "object/static/structure/elysium/invisible_wall.iff", -14.9, 27, -147.9, 590000053, math.rad(90) )
  spawnSceneObject("elysium", "object/static/structure/elysium/invisible_wall.iff", -3.9, 27, -172.7, 590000067, math.rad(90) )  
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", 0.5, 30, -177, 590000067, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", 0.5, 30, -65, 590000052, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/all/frn_all_holocron_dode.iff", 0, 15, 10, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_light_constant_blue.iff", 0, 15.5, 10, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/modern/flr_elysium.iff", 0, 12, 10, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_flocking_glowzees.iff", 0, 12, 10, 590000047, math.rad(0) )  
  spawnSceneObject("elysium", "object/tangible/quest/col_jedi_robi_light_jedi_controller.iff", -20.5, 12, 20.1, 590000047, math.rad(90) )
  spawnSceneObject("elysium", "object/tangible/quest/col_jedi_robi_light_jedi_controller.iff", 20.5, 12, 20.1, 590000047, math.rad(-90) )  
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", -16.8 , 25, 1.6, 590000047, math.rad(8) )
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", 16.8 , 25, 1.6, 590000047, math.rad(-8) )  
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", -25.1 , 25, 4.8, 590000047, math.rad(28) )
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", 25.1 , 25, 4.8, 590000047, math.rad(-28) )
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", -31.8 , 25, 10.3, 590000047, math.rad(44) )
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", 31.8 , 25, 10.3, 590000047, math.rad(-44) )
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", -36.8 , 25, 17.2, 590000047, math.rad(61) )
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", 36.8 , 25, 17.2, 590000047, math.rad(-61) )
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", -39.9 , 25, 25.4, 590000047, math.rad(78) )
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", 39.9 , 25, 25.4, 590000047, math.rad(-78) ) 
  spawnSceneObject("elysium", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", -47.0 , 19, 29.7, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", -45.0 , 19, 19.0, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", -40.0 , 19, 9.4, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", -32.0 , 19, 1.5, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", -22.4 , 19, -3.5, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", -12.6 , 19, -5.8, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", 47.0 , 19, 29.7, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", 45.0 , 19, 19.0, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", 40.0 , 19, 9.4, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", 32.0 , 19, 1.5, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", 22.4 , 19, -3.5, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", 12.6 , 19, -5.8, 590000047, math.rad(0) )  
  spawnSceneObject("elysium", "object/tangible/quest/col_jedi_robi_light_jedi_controller.iff", -4.5, 21, -15.3, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/quest/col_jedi_robi_light_jedi_controller.iff", 4.5, 21, -15.3, 590000047, math.rad(0) ) 
  spawnSceneObject("elysium", "object/static/particle/pt_smoke_large.iff", 9.9 , 21, -6.5, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_fire_huge_smokeless.iff", 9.9 , 18.5, -6.5, 590000047, math.rad(0) )  
  spawnSceneObject("elysium", "object/static/particle/pt_smoke_large.iff", 27.5 , 14, 9.6, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_fire_huge_smokeless.iff", 27.5 , 11.5, 9.6, 590000047, math.rad(0) ) 
  spawnSceneObject("elysium", "object/static/particle/pt_smoke_large.iff", -16.7 , 21, 2.5, 590000047, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_fire_huge_smokeless.iff", -16.7 , 18.5, 2.5, 590000047, math.rad(0) )    
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", -0.14 , 25, -45.7, 590000048, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_smoke_large.iff", -0.14 , 26, -45.7, 590000048, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_fire_huge_smokeless.iff", -0.14 , 24.5, -45.7, 590000048, math.rad(0) )  
  spawnSceneObject("elysium", "object/static/particle/pt_smoke_large.iff", 14 , 22, -38, 590000048, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_fire_huge_smokeless.iff", 14 , 20.5, -38, 590000048, math.rad(0) )  
  spawnSceneObject("elysium", "object/static/particle/pt_smoke_large.iff", -12.5 , 22, -27.9, 590000048, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_fire_huge_smokeless.iff", -12.5 , 20.5, -27.9, 590000048, math.rad(0) ) 
  spawnSceneObject("elysium", "object/tangible/furniture/city/statue_sentinel_02.iff", 7.9, 21, -43.2, 590000048, math.rad(-35) )
  spawnSceneObject("elysium", "object/tangible/furniture/city/statue_sentinel_02.iff", -7.9, 21, -43.2, 590000048, math.rad(35) ) 
  spawnSceneObject("elysium", "object/static/particle/pt_smoke_large.iff", 32.3 , 24, -25.9, 590000049, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_fire_huge_smokeless.iff", 32.3 , 22.5, -25.9, 590000049, math.rad(0) )
  spawnSceneObject("elysium", "object/static/structure/corellia/corl_fountain_circle_s01.iff", 0.0 , 21.0, -32.4, 590000048, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", 5.6 , 21.0, -21.2, 590000048, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/all/frn_all_lamp_free_s03_lit.iff", -5.6 , 21.0, -21.2, 590000048, math.rad(0) )
  
  spawnSceneObject("elysium", "object/static/particle/pt_smoke_large.iff", -35.7 , 28, -29.7, 590000050, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_fire_huge_smokeless.iff", -35.7 , 26.5, -29.7, 590000050, math.rad(0) ) 
  
  spawnSceneObject("elysium", "object/static/particle/pt_smoke_large.iff", -29.5 , 28, -65, 590000051, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_fire_huge_smokeless.iff", -29.5 , 26.5, -65, 590000051, math.rad(0) ) 
  
  spawnSceneObject("elysium", "object/static/particle/pt_smoke_large.iff", -16.5 , 28, -72.2, 590000051, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_fire_huge_smokeless.iff", -16.5 , 26.5, -72.2, 590000051, math.rad(0) ) 
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", -32.1 , 29, -72.8, 590000051, math.rad(0) )
 
  spawnSceneObject("elysium", "object/static/particle/pt_smoke_large.iff", 3.2 , 28, -73, 590000052, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_fire_huge_smokeless.iff", 3.2 , 26.5, -73, 590000052, math.rad(0) ) 
  
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_light_chair_s02.iff", 48.3 , 33, -93.9, 590000055, math.rad(-90) ) 
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_light_chair_s02.iff", 47.2 , 33, -90.4, 590000055, math.rad(-130) ) 
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_light_chair_s02.iff", 47.2 , 33, -97.1, 590000055, math.rad(-55) ) 
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_light_chair_s02.iff", 44.4 , 33, -99.2, 590000055, math.rad(-22) ) 
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_light_chair_s02.iff", 44.4 , 33, -88.6, 590000055, math.rad(-162) ) 
  
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_table_light_01.iff", 42.6 , 33, -93.7, 590000055, math.rad(0) ) 
  spawnSceneObject("elysium", "object/tangible/item/lytus_family_artefact.iff", 42.6 , 33, -93.7, 590000055, math.rad(0) ) 
  
  spawnSceneObject("elysium", "object/tangible/quest/col_jedi_robi_light_jedi_controller.iff", 54.4, 33, -94, 590000055, math.rad(-90) ) 
  spawnSceneObject("elysium", "object/static/particle/pt_smoke_large.iff", 53 , 35, -97, 590000055, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_fire_huge_smokeless.iff", 53 , 32.5, -97, 590000055, math.rad(0) ) 
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", 42.6 , 36, -82.8, 590000055, math.rad(0) )
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", 42.6 , 36, -104.6, 590000055, math.rad(0) )
 
  
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_table_light_01.iff", -41.6 , 33, -93.7, 590000061, math.rad(0) ) 
  spawnSceneObject("elysium", "object/tangible/item/lytus_family_artefact.iff", -41.6 , 33, -93.7, 590000061, math.rad(0) ) 
  spawnSceneObject("elysium", "object/tangible/tcg/series1/decorative_jedi_library_bookshelf.iff", -34.3 , 33, -99.2, 590000061, math.rad(124) ) 
  spawnSceneObject("elysium", "object/tangible/item/lytus_family_artefact.iff", -34.3 , 33, -99.2, 590000061, math.rad(0) )  
  spawnSceneObject("elysium", "object/tangible/tcg/series1/decorative_jedi_library_bookshelf.iff", -34.3 , 36.5, -99.2, 590000061, math.rad(124) ) 
  spawnSceneObject("elysium", "object/tangible/tcg/series1/decorative_jedi_library_bookshelf.iff", -34.3 , 33, -88.5, 590000061, math.rad(53) ) 
  spawnSceneObject("elysium", "object/tangible/item/lytus_family_artefact.iff", -34.3 , 33, -88.5, 590000061, math.rad(0) )  
  spawnSceneObject("elysium", "object/tangible/tcg/series1/decorative_jedi_library_bookshelf.iff", -34.3 , 36.5, -88.5, 590000061, math.rad(53) ) 
  spawnSceneObject("elysium", "object/tangible/tcg/series1/decorative_jedi_library_bookshelf.iff", -38.9 , 33, -102.3, 590000061, math.rad(157) ) 
  spawnSceneObject("elysium", "object/tangible/item/lytus_family_artefact.iff", -38.9 , 33, -102.3, 590000061, math.rad(0) )  
  spawnSceneObject("elysium", "object/tangible/tcg/series1/decorative_jedi_library_bookshelf.iff", -38.9 , 36.5, -102.3, 590000061, math.rad(157) ) 
  spawnSceneObject("elysium", "object/tangible/tcg/series1/decorative_jedi_library_bookshelf.iff", -38.9 , 33, -85.3, 590000061, math.rad(16) ) 
  spawnSceneObject("elysium", "object/tangible/item/lytus_family_artefact.iff", -38.9 , 33, -85.3, 590000061, math.rad(0) )  
  spawnSceneObject("elysium", "object/tangible/tcg/series1/decorative_jedi_library_bookshelf.iff", -38.9 , 36.5, -85.3, 590000061, math.rad(16) ) 
  spawnSceneObject("elysium", "object/tangible/tcg/series1/decorative_jedi_library_bookshelf.iff", -44.5 , 33, -102.3, 590000061, math.rad(-160) ) 
  spawnSceneObject("elysium", "object/tangible/item/lytus_family_artefact.iff", -44.5 , 33, -102.3, 590000061, math.rad(0) )  
  spawnSceneObject("elysium", "object/tangible/tcg/series1/decorative_jedi_library_bookshelf.iff", -44.5 , 36.5, -102.3, 590000061, math.rad(-160) ) 
  spawnSceneObject("elysium", "object/tangible/tcg/series1/decorative_jedi_library_bookshelf.iff", -44.5 , 33, -85.3, 590000061, math.rad(-18) ) 
  spawnSceneObject("elysium", "object/tangible/item/lytus_family_artefact.iff", -44.5 , 33, -85.3, 590000061, math.rad(0) )  
  spawnSceneObject("elysium", "object/tangible/tcg/series1/decorative_jedi_library_bookshelf.iff", -44.5 , 36.5, -85.3, 590000061, math.rad(-18) )  
  spawnSceneObject("elysium", "object/tangible/tcg/series1/decorative_jedi_library_bookshelf.iff", -48.9 , 33, -99.1, 590000061, math.rad(-128) ) 
  spawnSceneObject("elysium", "object/tangible/item/lytus_family_artefact.iff", -48.9 , 33, -99.1, 590000061, math.rad(0) )  
  spawnSceneObject("elysium", "object/tangible/tcg/series1/decorative_jedi_library_bookshelf.iff", -48.9 , 36.5, -99.1, 590000061, math.rad(-128) )   
  spawnSceneObject("elysium", "object/tangible/tcg/series1/decorative_jedi_library_bookshelf.iff", -48.9 , 33, -88.6, 590000061, math.rad(-53) ) 
  spawnSceneObject("elysium", "object/tangible/item/lytus_family_artefact.iff", -48.9 , 33, -88.6, 590000061, math.rad(0) )  
  spawnSceneObject("elysium", "object/tangible/tcg/series1/decorative_jedi_library_bookshelf.iff", -48.9 , 36.5, -88.6, 590000061, math.rad(-53) ) 
  spawnSceneObject("elysium", "object/tangible/furniture/jedi/frn_all_banner_light_s02.iff", -53.1 , 35, -93.7, 590000061, math.rad(-90) )
  
  spawnSceneObject("elysium", "object/static/particle/pt_smoke_large.iff", 6.3 , 29, -107, 590000053, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_fire_huge_smokeless.iff", 6.3 , 26.5, -107, 590000053, math.rad(0) ) 
  spawnSceneObject("elysium", "object/static/particle/pt_smoke_large.iff", -5.3 , 29, -134, 590000053, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_fire_huge_smokeless.iff", -5.3 , 26.5, -134, 590000053, math.rad(0) ) 
  spawnSceneObject("elysium", "object/static/particle/pt_smoke_large.iff", 4.1 , 29, -158, 590000053, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_fire_huge_smokeless.iff", 4.1 , 26.5, -158, 590000053, math.rad(0) ) 
  spawnSceneObject("elysium", "object/static/particle/pt_smoke_large.iff", 3.3 , 29, -137, 590000053, math.rad(0) )
  spawnSceneObject("elysium", "object/static/particle/pt_fire_huge_smokeless.iff", 3.3 , 26.5, -137, 590000053, math.rad(0) ) 
  spawnSceneObject("elysium", "object/static/structure/general/debris_deathstar_conduit.iff", 3.3 , 27, -137, 590000053, math.rad(30) ) 
  
  spawnSceneObject("elysium", "object/tangible/quest/col_jedi_robi_light_jedi_controller.iff", 54.3, 33, -120.8, 590000057, math.rad(-90) ) 
  spawnSceneObject("elysium", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 54.3, 33, -120.8, 590000057, math.rad(0) )
  
  spawnSceneObject("elysium", "object/static/structure/elysium/invisible_wall.iff", -15.2, 27, -120.8, 590000053, math.rad(90) )
  
  spawnSceneObject("elysium", "object/tangible/furniture/modern/flr_elysium.iff", 33.6, 27, -189.7, 590000069, math.rad(0) )
 
end

function ElysiumVisionScreenPlay:spawnMobiles()


  local pNpc = spawnMobile("elysium", "light_jedi_youngling",60,13.7,27.0,-173.0,90,590000068)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,7.2,27.0,-172.7,90,590000067)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,6.6,27.0,-174.7,90,590000067)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,7.1,27.0,-171.0,90,590000067)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("elysium", "light_jedi_padawan_g",60,26.8,27.0,-171.7,70,590000068)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,35.5,27.0,-173.6,-65,590000068)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,33.1,27.0,-176.0,-46,590000068)
  self:setMoodString(pNpc, "neutral")
  
   pNpc = spawnMobile("elysium", "light_jedi_padawan_b",60,-0.6,27.0,-162.3,-16,590000067)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,2.1,27.0,-170.0,-4,590000067)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-0.5,27.0,-168.7,1,590000067)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("elysium", "light_jedi_consular",60,0.4,27.0,-146.0,0,590000053)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,0.2,27.0,-156.7,0,590000053)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-4.5,27.0,-154.7,37,590000053)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-7.9,27.0,-148.1,90,590000053)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-5.5,27.0,-139.7,135,590000053)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-1.5,27.0,-139.0,167,590000053)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,5.4,27.0,-140.6,-147,590000053)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,9.4,27.0,-147.7,-90,590000053)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("elysium", "light_jedi_knight",60,0.2,27.0,-120.1,-12,590000053)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "light_jedi_padawan_g",60,2.8,27.0,-119.1,23,590000053)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-2.8,27.0,-126.3,11,590000053)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,3.9,27.0,-127.0,-11,590000053)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,7.2,27.0,-121.3,0,590000053)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-5.5,27.0,-121.3,0,590000053)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,7.2,27.0,-111.3,0,590000053)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-5.5,27.0,-111.3,0,590000053)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,7.2,27.0,-101.3,0,590000053)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-5.5,27.0,-101.3,0,590000053)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,7.2,27.0,-91.3,0,590000053)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-5.5,27.0,-91.3,0,590000053)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,0.2,27.0,-88.8,180,590000053)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("elysium", "light_jedi_youngling",60,51.0,33.0,-92.8,-90,590000055)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "light_jedi_youngling",60,50.0,33.0,-96.2,-90,590000055)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "light_jedi_youngling",60,50.2,33.0,-90.3,-90,590000055)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,35.6,33.0,-96.2,81,590000055)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,35.0,33.0,-91.8,96,590000055)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,34.0,33.0,-93.9,85,590000055)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("elysium", "light_jedi_padawan_b",60,1.6,27.0,-68.8,-178,590000052)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "light_jedi_padawan_g",60,-1.6,27.0,-70.0,168,590000052)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,2.4,27.0,-81.6,-10,590000052)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,1.0,27.0,-81.9,-8,590000052)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-1.1,27.0,-81.7,8,590000052)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-19.6,27.0,-67.1,-89,590000051)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-19.5,27.0,-69.9,-88,590000051)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("elysium", "light_jedi_padawan_g",60,-32.3,27.0,-69.4,39,590000051)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-33.4,27.0,-58.4,175,590000051)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-30.9,27.0,-58.5,178,590000051)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-31.1,27.0,-48.5,0,590000050)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-33.7,27.0,-48.6,0,590000050)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "light_jedi_padawan_b",60,-33.9,27.0,-36.7,3,590000050)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-24.6,25.3,-30.1,-90,590000050)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-24.7,25.4,-33.1,-90,590000050)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("elysium", "light_jedi_padawan_b",60,-10.0,21.0,-29.6,101,590000048)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "light_jedi_padawan_g",60,12.2,21.0,-36.7,3,590000048)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,5.6,21.0,-23.1,149,590000048)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,2.8,21.0,-25.4,137,590000048)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,2.8,21.0,-22.9,134,590000048)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,0.0,21.0,-20.5,173,590000048)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-4.4,21.0,-40.9,-28,590000048)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-6.6,21.0,-41.0,-28,590000048)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "clone_trooper_501st",60,-2.5,21.0,-38.4,-33,590000048)
  self:setMoodString(pNpc, "neutral")
  
  
  pNpc = spawnMobile("elysium", "cin_drallig",60,29.9,23.0,-29.6,-179,590000049)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("elysium", "anakin_skywalker",60,30.3,23.0,-35.3,0,590000049)
  self:setMoodString(pNpc, "neutral")
  
  
  

  
end


function ElysiumVisionScreenPlay:spawnActiveArea1()
  local pSpawnArea1 = spawnSceneObject("elysium", "object/active_area.iff", 5033, 27, 4810, 0, 590000069) --33.6, 27, -189.7, 590000069
    
  if (pSpawnArea1 ~= nil) then
    local activeArea1 = LuaActiveArea(pSpawnArea1)
          activeArea1:setCellObjectID(590000069)
          activeArea1:setRadius(512)
          createObserver(ENTEREDAREA, "ElysiumVisionScreenPlay", "notifySpawnArea1", pSpawnArea1)          
      end
end

function ElysiumVisionScreenPlay:notifySpawnArea1(pActiveArea1, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isPlayerCreature()) then
    return 0
  else  
      CreatureObject(pMovingObject):playMusicMessage("sound/mus_order_66.snd")       
  end
  return 0  
end

