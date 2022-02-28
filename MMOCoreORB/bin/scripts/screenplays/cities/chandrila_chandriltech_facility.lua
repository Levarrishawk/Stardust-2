local ObjectManager = require("managers.object.object_manager")

ChandrilTechScreenPlay = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "ChandrilTechScreenPlay"
}

registerScreenPlay("ChandrilTechScreenPlay", true)

function ChandrilTechScreenPlay:start()
  if (isZoneEnabled("chandrila")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
    self:spawnActiveArea1()
    self:spawnActiveArea2()
    self:spawnActiveArea3()
    self:spawnActiveArea4()
    self:spawnActiveArea5()
    self:spawnActiveArea6()
    self:spawnActiveArea7()
    self:spawnActiveArea8()
  end
end

function ChandrilTechScreenPlay:spawnSceneObjects()

  spawnSceneObject("chandrila", "object/tangible/terminal/terminal_elevator_up.iff", 75.49, -50, 59.1604, 35792158, math.rad(-90) )
  spawnSceneObject("chandrila", "object/tangible/terminal/terminal_elevator_down.iff", 75.49, -20, 59.1604, 35792158, math.rad(-90) )
  spawnSceneObject("chandrila", "object/tangible/terminal/terminal_elevator_up.iff", -8.43754, -20, 58.7481, 35792133, math.rad(90) )
  spawnSceneObject("chandrila", "object/tangible/terminal/terminal_elevator_down.iff", -8.43754, -12, 58.7481, 35792133, math.rad(90) )
 
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_style_01_on.iff", 101, -20, 110.8, 35792148, math.rad(90) )
 
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_style_01_on.iff", 96.2, -20, 130.4, 35792147, math.rad(90) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_style_01_on.iff", 98.7, -20, 125.8, 35792147, math.rad(90) )
  
  -- Second floor
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 1.5, -20, 51.6, 35792151, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 1.5, -20, 66.4, 35792151, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 37.5, -20, 51.6, 35792151, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 37.5, -20, 66.4, 35792151, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 12.1, -20, 41.0, 35792151, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 26.9, -20, 41.0, 35792151, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 12.1, -20, 77.0, 35792151, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 26.9, -20, 77.0, 35792151, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 14.1, -20, 53.5, 35792151, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 14.1, -20, 64.5, 35792151, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 24.9, -20, 53.5, 35792151, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 24.9, -20, 64.5, 35792151, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", 13.0, -20, 36.5, 35792151, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", 26.0, -20, 36.5, 35792151, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/allum_mine_pipes_s02.iff", 19.8, -20, 36.5, 35792151, math.rad(90) )
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", 13.0, -20, 81.5, 35792151, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", 26.0, -20, 81.5, 35792151, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 61.3, -20, 51.6, 35792157, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 61.3, -20, 66.4, 35792157, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", 63.5, -20, 52.4, 35792157, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", 63.5, -20, 65.9, 35792157, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", 19.6, -20, 343.2, 35792151, math.rad(0) )
  spawnSceneObject("chandrila", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", 4.8, -20, 59, 35792151, math.rad(0) )
  spawnSceneObject("chandrila", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", 19.6, -20, 73, 35792151, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", 34.5, -20, 58.8, 35792151, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/item/item_medic_bacta_tank_large.iff", 10, -20, 107, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 10, -20, 107, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", 10, -20, 107, 35792153, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/item/item_medic_bacta_tank_large.iff", 10, -20, 115, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 10, -20, 115, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", 10, -20, 115, 35792153, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/item/item_medic_bacta_tank_large.iff", 10, -20, 123, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 10, -20, 123, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", 10, -20, 123, 35792153, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/item/item_medic_bacta_tank_large.iff", 0, -20, 107, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 0, -20, 107, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", 0, -20, 107, 35792153, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/item/item_medic_bacta_tank_large.iff", 0, -20, 115, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 0, -20, 115, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", 0, -20, 115, 35792153, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/item/item_medic_bacta_tank_large.iff", 0, -20, 123, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 0, -20, 123, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", 0, -20, 123, 35792153, math.rad(0) )
 
  spawnSceneObject("chandrila", "object/static/item/item_medic_bacta_tank_large.iff", -10, -20, 107, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -10, -20, 107, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", -10, -20, 107, 35792153, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/item/item_medic_bacta_tank_large.iff", -10, -20, 115, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -10, -20, 115, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", -10, -20, 115, 35792153, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/item/item_medic_bacta_tank_large.iff", -10, -20, 123, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -10, -20, 123, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", -10, -20, 123, 35792153, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/item/item_medic_bacta_tank_large.iff", -20, -20, 107, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -20, -20, 107, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", -20, -20, 107, 35792153, math.rad(0) )
 
  spawnSceneObject("chandrila", "object/static/item/item_medic_bacta_tank_large.iff", -20, -20, 115, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -20, -20, 115, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", -20, -20, 115, 35792153, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/item/item_medic_bacta_tank_large.iff", -20, -20, 123, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -20, -20, 123, 35792153, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", -20, -20, 123, 35792153, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", 47.3, -50, -9, 35792162, math.rad(0) )
  spawnSceneObject("chandrila", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", 47.3, -50, 3, 35792162, math.rad(-90) )
  spawnSceneObject("chandrila", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", 35.6, -50, -9, 35792162, math.rad(90) ) 
  spawnSceneObject("chandrila", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", 35.6, -50, 3, 35792162, math.rad(180) )
  
  
  -- Level 3 objects
  spawnSceneObject("chandrila", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", 41, -50, 30, 35792163, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 41, -50, 30, 35792163, math.rad(0) )
  spawnSceneObject("chandrila", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", 30, -50, 30, 35792163, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 30, -50, 30, 35792163, math.rad(0) )
   
  spawnSceneObject("chandrila", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", 41, -50, 20, 35792163, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 41, -50, 20, 35792163, math.rad(0) )
  spawnSceneObject("chandrila", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", 30, -50, 20, 35792163, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 30, -50, 20, 35792163, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 25, -50, 86, 35792165, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/space/debris/cargo_pristine_large_a.iff", 25, -50, 86, 35792165, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 25, -50, 86, 35792165, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/space/debris/cargo_pristine_large_a.iff", 15, -50, 86, 35792165, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 5, -50, 86, 35792165, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/space/debris/cargo_pristine_large_a.iff", 5, -50, 86, 35792165, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 25, -40, 86, 35792165, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/space/debris/cargo_pristine_large_a.iff", 25, -40, 86, 35792165, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 25, -40, 86, 35792165, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/space/debris/cargo_pristine_large_a.iff", 15, -40, 86, 35792165, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 5, -40, 86, 35792165, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/space/debris/cargo_pristine_large_a.iff", 5, -40, 86, 35792165, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/space/debris/cargo_pristine_large_a.iff", 15, -40, 59, 35792165, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 5, -40, 59, 35792165, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/space/debris/cargo_pristine_large_a.iff", 5, -40, 59, 35792165, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/space/debris/cargo_pristine_large_a.iff", 15, -50, 59, 35792165, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 5, -50, 59, 35792165, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/space/debris/cargo_pristine_large_a.iff", 5, -50, 59, 35792165, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/tangible/furniture/all/event_flag_game_imp_banner.iff", -40.3, -50, 116.5, 35792171, math.rad(90) )
  
  spawnSceneObject("chandrila", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", -70, -50, 111, 35792171, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -70, -50, 111, 35792171, math.rad(0) )   
  spawnSceneObject("chandrila", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", -70, -50, 121, 35792171, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -70, -50, 121, 35792171, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", -65, -50, 111, 35792171, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -65, -50, 111, 35792171, math.rad(0) )   
  spawnSceneObject("chandrila", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", -65, -50, 121, 35792171, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -65, -50, 121, 35792171, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", -60, -50, 111, 35792171, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -60, -50, 111, 35792171, math.rad(0) )   
  spawnSceneObject("chandrila", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", -60, -50, 121, 35792171, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -60, -50, 121, 35792171, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", -55, -50, 111, 35792171, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -55, -50, 111, 35792171, math.rad(0) )   
  spawnSceneObject("chandrila", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", -55, -50, 121, 35792171, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -55, -50, 121, 35792171, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", -50, -50, 111, 35792171, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -50, -50, 111, 35792171, math.rad(0) )   
  spawnSceneObject("chandrila", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", -50, -50, 121, 35792171, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -50, -50, 121, 35792171, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", -45, -50, 111, 35792171, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -45, -50, 111, 35792171, math.rad(0) )   
  spawnSceneObject("chandrila", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", -45, -50, 121, 35792171, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -45, -50, 121, 35792171, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -23, -50, 93, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -30.5, -50, 93, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -38, -50, 93, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -45.5, -50, 93, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -53, -50, 93, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -60.6, -50, 93, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -67.9, -50, 93, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -75.5, -50, 93, 35792167, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -23, -50, 15.5, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -30.5, -50, 15.5, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -38, -50, 15.5, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -45.5, -50, 15.5, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -53, -50, 15.5, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -60.6, -50, 15.5, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -75.5, -50, 15.5, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -85.9, -50, 15.5, 35792167, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -93.6, -50, 15.5, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -101.1, -50, 15.5, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -108.5, -50, 15.5, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -116.5, -50, 15.5, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -123.5, -50, 15.5, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -131.0, -50, 15.5, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -131.6, -50, 15.5, 35792167, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -93.6, -50, 93, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -101.1, -50, 93, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -108.5, -50, 93, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -116.5, -50, 93, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -123.5, -50, 93, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -131.0, -50, 93, 35792167, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -131.6, -50, 93, 35792167, math.rad(0) )
  
  
  spawnSceneObject("chandrila", "object/static/particle/pt_miasma_of_fog_greenish.iff", -41, -50, 0.3, 35792170, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/particle/pt_miasma_of_fog_greenish.iff", -31, -50, 0.3, 35792170, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/particle/pt_miasma_of_fog_greenish.iff", -21, -50, 0.3, 35792170, math.rad(0) )
  
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", 70.1, -50, 51, 35792159, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/military/bunker_pillar_style_02.iff", 57.2, -50, 51, 35792159, math.rad(0) )
 
  spawnSceneObject("chandrila", "object/static/particle/pt_miasma_of_fog_greenish.iff", 45, -50, 39, 35792156, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/particle/pt_miasma_of_fog_greenish.iff", 55, -50, 39, 35792156, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/particle/pt_miasma_of_fog_greenish.iff", 65, -50, 39, 35792156, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/particle/pt_miasma_of_fog_greenish.iff", 45, -50, 29, 35792156, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/particle/pt_miasma_of_fog_greenish.iff", 55, -50, 29, 35792156, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/particle/pt_miasma_of_fog_greenish.iff", 65, -50, 29, 35792156, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/particle/pt_miasma_of_fog_greenish.iff", 45, -50, 19, 35792156, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/particle/pt_miasma_of_fog_greenish.iff", 55, -50, 19, 35792156, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/particle/pt_miasma_of_fog_greenish.iff", 65, -50, 19, 35792156, math.rad(0) )
  
end

function ChandrilTechScreenPlay:spawnMobiles()

  --Outdoors
  local pNpc = spawnMobile("chandrila", "chandriltech_security_guard_noaggro",60,-79.6,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard_noaggro",60,-85.8,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  
  --First Room
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard_noaggro",60,10.6,-12.0,22.0,43,35792128)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard_noaggro",60,24.2,-12.0,35.4,-137,35792128)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard_noaggro",60,24.5,-12.0,22.0,-53,35792128)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard_noaggro",60,12.5,-12.0,34.0,137,35792128)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,17.5,-12.0,60.0,174,35792130)
  self:setMoodString(pNpc, "neutral")
  
  --Second Room
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,35.5,-12.0,50.9,-11,35792131)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,51.5,-12.0,51.1,-6,35792131)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,51.5,-12.0,67.1,176,35792131)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,35.6,-12.0,67.0,-179,35792131)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "geonosian_scientist",600,46.6,-12.0,54.6,-94,35792131)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "geonosian_worker",600,56.7,-12.0,63.7,37,35792131)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "geonosian_worker",600,40.7,-12.0,65.0,-5,35792131)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "geonosian_technical_assistant",600,33.3,-12.0,58.8,94,35792131)
  self:setMoodString(pNpc, "neutral")
  
  --Third Room
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,3.3,-12.0,52.5,1,35792132)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,10.8,-12.0,66.9,-94,35792132)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "geonosian_worker",600,9.2,-12.0,53.1,130,35792132)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "geonosian_worker",600,4.0,-12.0,62.5,171,35792132)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "geonosian_worker",600,-1.8,-12.0,74.1,94,35792132)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "geonosian_worker",600,1.5,-12.0,77.3,138,35792132)
  self:setMoodString(pNpc, "neutral")
  
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,3.5,-12.0,99.1,178,35792135)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,34.6,-12.0,73.9,-43,35792139)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,32.3,-20.0,112.1,118,35792140)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "geonosian_worker",600,51.4,-20.0,106.2,-59,35792141)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_contractor",600,51,-20.0,115.2,-136,35792141)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  --fourth room
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,55.6,-20.0,134.9,-93,35792143)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,39.5,-20.0,151.0,84,35792143)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_contractor",600,49,-20.0,133,-90,35792143)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  pNpc = spawnMobile("chandrila", "chandriltech_contractor",600,47.6,-20.0,147,180,35792143)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  pNpc = spawnMobile("chandrila", "geonosian_worker",600,43.0,-20.0,154.9,-41,35792143)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "geonosian_scientist",600,45.3,-20.0,149.7,87,35792143)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,83.6,-20.0,152.2,175,35792145)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,83.6,-20.0,109.8,-9,35792145)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,61,-20.0,131,90,35792150)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_contractor",600,97.2,-20.0,130.5,-112,35792147)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("chandrila", "chandriltech_contractor",600,96.1,-20.0,129.6,-3,35792147)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,105.0,-20.0,125.0,-3,35792147)
  self:setMoodString(pNpc, "neutral")
  
  -- Level 2
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,9.8,-20.0,66.1,180,35792151)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,9.8,-20.0,51.8,0,35792151)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,13.9,-20.0,59,-90,35792151)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,70.6,-20.0,56.4,-90,35792157)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,70.6,-20.0,61.4,-90,35792157)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_contractor",600,25.8,-20.0,59,-90,35792151)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  pNpc = spawnMobile("chandrila", "chandriltech_contractor",600,35.5,-20.0,65,0,35792151)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  pNpc = spawnMobile("chandrila", "chandriltech_contractor",600,19.6,-20.0,38.6,180,35792151)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  pNpc = spawnMobile("chandrila", "chandriltech_contractor",600,19.6,-20.0,75,180,35792151)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,35.5,-20.0,53,0,35792151)
  self:setMoodString(pNpc, "neutral")
 
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,22.8,-20.0,99.8,0,35792153)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,16.5,-20.0,99.8,0,35792153)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_contractor",600,-5.1,-20.0,119,180,35792153)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("chandrila", "chandriltech_contractor",600,-5.1,-20.0,115,0,35792153)
  self:setMoodString(pNpc, "conversation")
  
  -- Level 3
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,67.3,-50.0,58.8,-177,35792159)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,62.5,-50.0,56.4,177,35792159)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,58.6,-50.0,58,177,35792159)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "technician",60,62.4,-50.0,44,0,35792159)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "technician",60,67,-50.0,44,0,35792159)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "technician",60,64,-50.0,24,-122,35792160)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,62,-50.0,22,50,35792160)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "technician",60,63,-50.0,7,-172,35792161)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,63,-50.0,2,0,35792161)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_contractor",60,44.2,-50.0,-6.3,113,35792162)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,34.5,-50.0,-2.9,90,35792162)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,48,-50.0,27.2,-90,35792163)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,48,-50.0,22.2,-90,35792163)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "stormtrooper",600,18,-50.0,25,90,35792163)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "imperial_major",600,27.4,-50.0,20.4,31,35792163)
  self:setMoodString(pNpc, "npc_accusing")
  pNpc = spawnMobile("chandrila", "chandriltech_contractor",60,29.1,-50.0,22.5,-146,35792163)
  self:setMoodString(pNpc, "npc_consoling")
  pNpc = spawnMobile("chandrila", "imperial_lance_corporal",600,30,-50.0,27.8,0,35792163)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  pNpc = spawnMobile("chandrila", "imperial_second_lieutenant",600,32.3,-50.0,30,-90,35792163)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  pNpc = spawnMobile("chandrila", "imperial_sergeant",600,40.8,-50.0,22.1,180,35792163)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  pNpc = spawnMobile("chandrila", "stormtrooper",600,2.3,-50.0,70.4,90,35792165)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "stormtrooper",600,2.3,-50.0,75.3,90,35792165)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "imperial_sergeant",600,32.6,-50.0,73.2,190,35792165)
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  pNpc = spawnMobile("chandrila", "stormtrooper",600,28.2,-50.0,49.7,0,35792165)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "stormtrooper",600,22.8,-50.0,49.7,0,35792165)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,-21.5,-50.0,78.2,-90,35792167)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",600,-21.5,-50.0,67.6,-90,35792167)
  self:setMoodString(pNpc, "neutral")
  
  
  
  -- MainStorageFloor
  spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,80,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,78,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,76,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,74,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,72,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,70,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,68,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,66,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,64,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,62,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,60,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,58,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,56,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,54,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,52,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,50,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,48,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,46,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,44,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,42,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,40,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,38,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,36,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,34,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-36,-50,32,90,35792167)
  
  spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,80,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,78,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,76,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,74,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,72,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,70,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,68,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,66,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,64,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,62,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,60,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,58,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,56,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,54,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,52,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,50,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,48,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,46,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,44,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,42,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,40,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,38,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,36,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,34,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-46,-50,32,90,35792167)
  
  spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,80,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,78,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,76,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,74,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,72,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,70,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,68,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,66,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,64,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,62,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,60,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,58,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,56,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,54,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,52,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,50,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,48,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,46,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,44,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,42,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,40,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,38,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,36,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,34,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-56,-50,32,90,35792167)
 
  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,80,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,78,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,76,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,74,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,72,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,70,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,68,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,66,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,64,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,62,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,60,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,58,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,56,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,54,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,52,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,50,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,48,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,46,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,44,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,42,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,40,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,38,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,36,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,34,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-66,-50,32,90,35792167)
  
  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,80,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,78,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,76,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,74,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,72,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,70,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,68,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,66,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,64,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,62,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,60,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,58,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,56,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,54,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,52,90,35792167)
 -- spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,50,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,48,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,46,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,44,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,42,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,40,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,38,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,36,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,34,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-76,-50,32,90,35792167)
  
  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,80,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,78,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,76,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,74,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,72,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,70,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,68,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,66,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,64,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,62,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,60,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,58,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,56,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,54,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,52,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,50,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,48,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,46,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,44,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,42,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,40,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,38,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,36,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,34,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-86,-50,32,90,35792167)
  
  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,80,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,78,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,76,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,74,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,72,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,70,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,68,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,66,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,64,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,62,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,60,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,58,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,56,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,54,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,52,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,50,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,48,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,46,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,44,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,42,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,40,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,38,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,36,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,34,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-96,-50,32,90,35792167)
  
  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,80,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,78,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,76,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,74,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,72,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,70,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,68,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,66,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,64,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,62,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,60,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,58,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,56,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,54,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,52,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,50,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,48,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,46,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,44,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,42,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,40,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,38,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,36,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,34,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-106,-50,32,90,35792167)
  
  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,80,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,78,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,76,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,74,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,72,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,70,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,68,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,66,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,64,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,62,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,60,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,58,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,56,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,54,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,52,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,50,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,48,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,46,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,44,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,42,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,40,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,38,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,36,90,35792167)
--  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,34,90,35792167)
  spawnMobile("chandrila", "dark_trooper_inactive",60,-116,-50,32,90,35792167)
  
  spawnMobile("chandrila", "at_st",600,-130,-50,72,90,35792167)
  spawnMobile("chandrila", "at_st",600,-130,-50,62,90,35792167)
  spawnMobile("chandrila", "at_st",600,-130,-50,52,90,35792167)
  spawnMobile("chandrila", "at_st",600,-130,-50,42,90,35792167)
  spawnMobile("chandrila", "at_st",600,-130,-50,32,90,35792167)
end


function ChandrilTechScreenPlay:spawnActiveArea1()
  local pSpawnArea1 = spawnSceneObject("chandrila", "object/active_area.iff", -83.1, -4.3, 4725.7, 0, 35792151)
    
  if (pSpawnArea1 ~= nil) then
    local activeArea1 = LuaActiveArea(pSpawnArea1)
          activeArea1:setCellObjectID(35792151)
          activeArea1:setRadius(512)
          createObserver(ENTEREDAREA, "ChandrilTechScreenPlay", "notifySpawnArea1", pSpawnArea1)
          --createObserver(EXITEDAREA, "ChandrilTechScreenPlay", "notifySpawnAreaLeave", pSpawnArea1)
      end
end

function ChandrilTechScreenPlay:notifySpawnArea1(pActiveArea1, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral())) then

      player:sendSystemMessage("ATTENTION: Worker Revolt in Progress on Level Three.  Security to Level Three.")
      player:playMusicMessage("sound/amb_alarm_air_raid.snd")
      
      end
    return 0    
  end)
end

function ChandrilTechScreenPlay:spawnActiveArea2()
  local pSpawnArea2 = spawnSceneObject("chandrila", "object/active_area.iff", -88.2, -34.3, 4739.8, 0, 35792166)
    
  if (pSpawnArea2 ~= nil) then
    local activeArea2 = LuaActiveArea(pSpawnArea2)
          activeArea2:setCellObjectID(35792166)
          activeArea2:setRadius(512)
          createObserver(ENTEREDAREA, "ChandrilTechScreenPlay", "notifySpawnArea2", pSpawnArea2)
          --createObserver(EXITEDAREA, "ChandrilTechScreenPlay", "notifySpawnAreaLeave", pSpawnArea1)
      end
end

function ChandrilTechScreenPlay:notifySpawnArea2(pActiveArea2, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral())) then

      player:sendSystemMessage("ATTENTION: Intruder Alert in Level Three Production Storage.  Security to Level Three Production Storage.")
      player:playMusicMessage("sound/amb_alarm_air_raid.snd")
      
      end
    return 0    
  end)
end

function ChandrilTechScreenPlay:spawnActiveArea3()
  local pSpawnArea3 = spawnSceneObject("chandrila", "object/active_area.iff", -20, -34.3, 4725.8, 0, 35792157)
    
  if (pSpawnArea3 ~= nil) then
    local activeArea3 = LuaActiveArea(pSpawnArea3)
          activeArea3:setCellObjectID(35792157)
          activeArea3:setRadius(512)
          createObserver(ENTEREDAREA, "ChandrilTechScreenPlay", "notifySpawnArea3", pSpawnArea3)
          --createObserver(EXITEDAREA, "ChandrilTechScreenPlay", "notifySpawnAreaLeave", pSpawnArea1)
      end
end

function ChandrilTechScreenPlay:notifySpawnArea3(pActiveArea3, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral())) then

      player:sendSystemMessage("ATTENTION: Intruders have reached Secondary Elevator Shaft.  Security proceed to Secondary Elevator Shaft.")
      player:playMusicMessage("sound/amb_alarm_air_raid.snd")
      
      end
    return 0    
  end)
end

function ChandrilTechScreenPlay:spawnActiveArea4()
  local pSpawnArea4 = spawnSceneObject("chandrila", "object/active_area.iff", -168, -34.3, 4783, 0, 35792171)
    
  if (pSpawnArea4 ~= nil) then
    local activeArea4 = LuaActiveArea(pSpawnArea4)
          activeArea4:setCellObjectID(35792171)
          activeArea4:setRadius(512)
          createObserver(ENTEREDAREA, "ChandrilTechScreenPlay", "notifySpawnArea4", pSpawnArea4)
          --createObserver(EXITEDAREA, "ChandrilTechScreenPlay", "notifySpawnAreaLeave", pSpawnArea1)
      end
end

function ChandrilTechScreenPlay:notifySpawnArea4(pActiveArea4, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral()) and readData("ChandrilTechScreenPlay:spawnState") == 0) then
      writeData("ChandrilTechScreenPlay:spawnState", 1)
      player:sendSystemMessage("ATTENTION: Intruders have breached Mainframe Room.   Initiating Protocol 77.")
      player:sendSystemMessage("ATTENTION: Protocol 77 Initiated.. Transmission Sent.. Initiating Data Wipe on Mainframes.")
      player:playMusicMessage("sound/amb_alarm_air_raid.snd")
           
      local pMob1 = spawnMobile("chandrila", "jakku_black_trooper_1",600,-45.7,-50.0,116,-90,35792171)       
      local pMob2 = spawnMobile("chandrila", "jakku_battle_droid",600,58.2,-20,27.4,0,35792156)
      local pMob3 = spawnMobile("chandrila", "jakku_battle_droid",600,-27.1,-20,-0.6,-90,35792170)     
      local pMob4 = spawnMobile("chandrila", "jakku_battle_droid",600,-55.1,-20,119,-90,35792171)
      local pMob5 = spawnMobile("chandrila", "jakku_battle_droid",600,-55.1,-20,113,-90,35792171)
      local pMob6 = spawnMobile("chandrila", "jakku_battle_droid",600,60,-20,59,90,35792157)
      local pMob7 = spawnMobile("chandrila", "jakku_battle_droid",600,28,-20,61,135,35792151)
      local pMob8 = spawnMobile("chandrila", "jakku_battle_droid",600,3.9,-20,66,-177,35792151)
      local pMob9 = spawnMobile("chandrila", "jakku_battle_droid",600,3.3,-20,65,-90,35792151)
      local pMob10 = spawnMobile("chandrila", "jakku_battle_droid",600,3.1,-20,52,-90,35792151)
      local pMob11 = spawnMobile("chandrila", "jakku_battle_droid",600,19,-20,113,180,35792153)
      local pMob12 = spawnMobile("chandrila", "jakku_battle_droid",600,-3.8,-12,63,58,35792132)
      local pMob13 = spawnMobile("chandrila", "jakku_battle_droid",600,-10.4,-12,80.8,-141,35792132)
      local pMob14 = spawnMobile("chandrila", "jakku_battle_droid",600,29.8,-12,63,90,35792131)
      local pMob15 = spawnMobile("chandrila", "jakku_battle_droid",600,29.8,-12,56.3,90,35792131)
      local pMob16 = spawnMobile("chandrila", "jakku_battle_droid",600,58.8,-12,58,-90,35792131)
      local pMob17 = spawnMobile("chandrila", "jakku_battle_droid",600,10.2,-12,26.4,90,35792128)
      local pMob18 = spawnMobile("chandrila", "jakku_battle_droid",600,19.6,-12,28.6,90,35792128)
      local pMob19 = spawnMobile("chandrila", "jakku_battle_droid",600,58.9,-50,37.7,0,35792159)
      local pMob20 = spawnMobile("chandrila", "jakku_battle_droid",600,66.3,-50,37.7,0,35792159)
      local pMob21 = spawnMobile("chandrila", "jakku_battle_droid",600,58.9,-50,64.9,180,35792159)
      local pMob21 = spawnMobile("chandrila", "jakku_battle_droid",600,66.3,-50,64.9,180,35792159)
      
      spatialChat(pMob1, "Protocol 77 has been initiated.  This unit has been directed to terminate all sentients!")
          
      createObserver(OBJECTDESTRUCTION, "ChandrilTechScreenPlay", "notifyMob1Dead", pMob1)
      ObjectManager.withCreatureObject(pMob1, function(oMob1)
      writeData("oMob1", oMob1:getObjectID())
      oMob1:engageCombat(player)end)
      createEvent(300000, "ChandrilTechScreenPlay", "despawnMob1", pMob1, "")
    else      
      player:sendSystemMessage("ATTENTION: Intruders have breached Mainframe Room.   Initiating Protocol 77.")
      player:sendSystemMessage("ERROR:  Protocol 77 already initiated..   Critical Failure..  Please contact maintenance.")
      player:playMusicMessage("sound/amb_alarm_air_raid.snd")
    end
    return 0    
  end)
end

function ChandrilTechScreenPlay:spawnActiveArea5()
  local pSpawnArea5 = spawnSceneObject("chandrila", "object/active_area.iff", -114, -34, 4666, 0, 35792170)
    
  if (pSpawnArea5 ~= nil) then
    local activeArea5 = LuaActiveArea(pSpawnArea5)
          activeArea5:setCellObjectID(35792170)
          activeArea5:setRadius(512)
          createObserver(ENTEREDAREA, "ChandrilTechScreenPlay", "notifyElectroShock", pSpawnArea5)          
      end
end



function ChandrilTechScreenPlay:notifyElectroShock(pActiveArea5, pMovingObject)
  if (pMovingObject == nil or pActiveArea5 == nil or not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end

  if (SceneObject(pMovingObject):isAiAgent() and not AiAgent(pMovingObject):isPet()) then
    return 0
  end

  CreatureObject(pMovingObject):inflictDamage(pMovingObject, 0, 6000, 0)
  CreatureObject(pMovingObject):sendSystemMessage("The noxious vapors burn intensely as you inhale them!") 
  return 0
end


function ChandrilTechScreenPlay:spawnActiveArea6()
  local pSpawnArea6 = spawnSceneObject("chandrila", "object/active_area.iff", -146, -34, 4666, 0, 35792168)
    
  if (pSpawnArea6 ~= nil) then
    local activeArea6 = LuaActiveArea(pSpawnArea6)
          activeArea6:setCellObjectID(35792168)
          activeArea6:setRadius(512)
          createObserver(ENTEREDAREA, "ChandrilTechScreenPlay", "notifySpawnArea6", pSpawnArea6)
          
      end
end

function ChandrilTechScreenPlay:notifySpawnArea6(pActiveArea6, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral())) then

      player:sendSystemMessage("WARNING: Dioxis Gas Hazard Ahead!  Environmental Protection Required for all Organics")
      player:playMusicMessage("sound/amb_alarm_air_raid.snd")
      
      end
    return 0    
  end)
end

function ChandrilTechScreenPlay:spawnActiveArea7()
  local pSpawnArea7 = spawnSceneObject("chandrila", "object/active_area.iff", -146, -34, 4666, 0, 35792155)
    
  if (pSpawnArea7 ~= nil) then
    local activeArea7 = LuaActiveArea(pSpawnArea7)
          activeArea7:setCellObjectID(35792155)
          activeArea7:setRadius(512)
          createObserver(ENTEREDAREA, "ChandrilTechScreenPlay", "notifySpawnArea7", pSpawnArea7)
          
      end
end

function ChandrilTechScreenPlay:notifySpawnArea7(pActiveArea6, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral())) then

      player:sendSystemMessage("WARNING: Dioxis Gas Hazard Ahead!  Environmental Protection Required for all Organics")
      player:playMusicMessage("sound/amb_alarm_air_raid.snd")
      
      end
    return 0    
  end)
end


function ChandrilTechScreenPlay:spawnActiveArea8()
  local pSpawnArea8 = spawnSceneObject("chandrila", "object/active_area.iff", -24, -34, 4694, 0, 35792156)
    
  if (pSpawnArea8 ~= nil) then
    local activeArea8 = LuaActiveArea(pSpawnArea8)
          activeArea8:setCellObjectID(35792156)
          activeArea8:setRadius(512)
          createObserver(ENTEREDAREA, "ChandrilTechScreenPlay", "notifyElectroShock8", pSpawnArea8)          
      end
end



function ChandrilTechScreenPlay:notifyElectroShock8(pActiveArea8, pMovingObject)
  if (pMovingObject == nil or pActiveArea8 == nil or not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end

  if (SceneObject(pMovingObject):isAiAgent() and not AiAgent(pMovingObject):isPet()) then
    return 0
  end

  CreatureObject(pMovingObject):inflictDamage(pMovingObject, 0, 6000, 0)
  CreatureObject(pMovingObject):sendSystemMessage("The noxious vapors burn intensely as you inhale them!") 
  return 0
end

function ChandrilTechScreenPlay:despawnMob1(pMob1, pPlayer)
      forcePeace(pMob1)
        SceneObject(pMob1):destroyObjectFromWorld()
        
      writeData("ChandrilTechScreenPlay:spawnState", 0)
    return 0
end

function ChandrilTechScreenPlay:notifyMob1Dead(pMob1, pPlayer)     
      createEvent(1800000, "ChandrilTechScreenPlay", "resetState1", pMob1, "")        
      writeData("ChandrilTechScreenPlay:spawnState", 2)
    return 0
end

function ChandrilTechScreenPlay:resetState1(pMob1, pPlayer)         
      writeData("ChandrilTechScreenPlay:spawnState", 0)
    return 0
end