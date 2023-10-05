ElysiumVisionScreenPlay = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "ElysiumVisionScreenPlay"
}

registerScreenPlay("ElysiumVisionScreenPlay", true)

function ElysiumVisionScreenPlay:start()
  if (isZoneEnabled("elysium")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
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
  
 
end

function ElysiumVisionScreenPlay:spawnMobiles()

  --[[
  local pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-79.6,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-85.8,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  
--]]
  
end
