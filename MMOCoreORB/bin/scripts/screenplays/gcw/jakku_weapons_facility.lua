local ObjectManager = require("managers.object.object_manager")

JakkuWeaponsFacilityScreenPlay = ScreenPlay:new {
	numberOfActs = 1,


}

registerScreenPlay("JakkuWeaponsFacilityScreenPlay", true)

function JakkuWeaponsFacilityScreenPlay:start()
	if (isZoneEnabled("jakku")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function JakkuWeaponsFacilityScreenPlay:spawnSceneObjects()
  spawnSceneObject("jakku", "object/tangible/furniture/all/frn_all_desk_map_table.iff", -32.5, -28.0, -23, 610000119, math.rad(0) )
  spawnSceneObject("jakku", "object/tangible/furniture/imperial/bunker_table_giant_style_01.iff", 67.4, -74.0, -55.9, 610000130, math.rad(0) )
  spawnSceneObject("jakku", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", -26.6, -28, -17.1, 610000119, math.rad(-90) )
  spawnSceneObject("jakku", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", -26.6, -28, -28.9, 610000119, math.rad(0) )
  spawnSceneObject("jakku", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", -38.4, -28, -17.1, 610000119, math.rad(180) ) 
  spawnSceneObject("jakku", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", -38.4, -28, -28.9, 610000119, math.rad(90) )
  
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_wall_lamp_s01.iff", 43.5, -46, 47.0, 610000143, math.rad(-90) )
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_wall_lamp_s01.iff", 27.5, -46, 47.0, 610000143, math.rad(90) )
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_wall_lamp_s01.iff", 35.5, -46, 54.8, 610000143, math.rad(180) )
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_device_s01.iff", 35.4, -48, 52.7, 610000143, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 40.5, -48, 51.2, 610000143, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 30.5, -48, 51.2, 610000143, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 79.6, -48, 52.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 87.6, -48, 52.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 83.5, -48, 52.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 79.6, -48, 48.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 87.6, -48, 48.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 79.6, -48, 44.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 87.6, -48, 44.0, 610000142, math.rad(0) )
  
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 79.6, -48, 52.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 87.6, -48, 52.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 83.5, -48, 52.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 79.6, -48, 48.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 87.6, -48, 48.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 79.6, -48, 44.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 87.6, -48, 44.0, 610000142, math.rad(0) )
  
  spawnSceneObject("jakku", "object/static/structure/general/ins_shield_generator.iff", 101.4, -49, 29.1, 610000141, math.rad(45) )
  
  spawnSceneObject("jakku", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", 83.5, -48, -36.9, 610000146, math.rad(45) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 83.5, -48, -36.9, 610000146, math.rad(45) )
  
  spawnSceneObject("jakku", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", 89.4, -48, -31.1, 610000146, math.rad(-90) )
  spawnSceneObject("jakku", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", 89.4, -48, -42.9, 610000146, math.rad(0) )
  spawnSceneObject("jakku", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", 77.6, -48, -31.1, 610000146, math.rad(180) ) 
  spawnSceneObject("jakku", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", 77.6, -48, -42.9, 610000146, math.rad(90) )
  
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_wall_lamp_s01.iff", 43.5, -46, -37.0, 610000145, math.rad(-90) )
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_wall_lamp_s01.iff", 27.5, -46, -37.0, 610000145, math.rad(90) )
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_wall_lamp_s01.iff", 35.5, -46, -44.9, 610000145, math.rad(0) )

  spawnSceneObject("jakku", "object/tangible/furniture/all/frn_all_command_console.iff", 35.5, -48, -36.8, 610000145, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 41.4, -48, -42.9, 610000145, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 29.6, -48, -42.9, 610000145, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 29.6, -48, -31.1, 610000145, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 41.4, -48, -31.1, 610000145, math.rad(0) )

  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_pipes_s02.iff", 11.3, -48, -19.0, 610000144, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_pipes_s02.iff", 17.6, -48, -13.4, 610000144, math.rad(90) )
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_pipes_s02.iff", 17.6, -48, -25.7, 610000144, math.rad(-90) )
  
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 128.4, -56, -6.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 128.4, -56, -6.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 119.5, -56, -6.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 119.5, -56, -6.1, 610000123, math.rad(0) )
  
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 128.4, -56, -2.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 128.4, -56, -2.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 119.5, -56, -2.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 119.5, -56, -2.1, 610000123, math.rad(0) )
 
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 128.4, -56, 2.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 128.4, -56, 2.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 119.5, -56, -6.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 119.5, -56, 2.1, 610000123, math.rad(0) )
 
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 128.4, -56, 6.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 128.4, -56, 6.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 119.5, -56, 6.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 119.5, -56, 6.1, 610000123, math.rad(0) )
 
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 128.4, -56, 10.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 128.4, -56, 10.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 119.5, -56, 10.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 119.5, -56, 10.1, 610000123, math.rad(0) )
 
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 128.4, -56, 14.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 128.4, -56, 14.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 119.5, -56, 14.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 119.5, -56, 14.1, 610000123, math.rad(0) )
 
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 128.4, -56, 18.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 128.4, -56, 18.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 119.5, -56, 18.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 119.5, -56, 18.1, 610000123, math.rad(0) )
 
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 111.5, -56, -9.0, 610000124, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 111.5, -56, 3.0, 610000124, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 99.5, -56, -9.0, 610000124, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 99.5, -56, 3.0, 610000124, math.rad(0) )
 
  spawnSceneObject("jakku", "object/tangible/veteran_reward/frn_tech_console_sectional_a.iff", 98, -56, -3.0, 610000124, math.rad(90) )
 
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 118.5, -64, 43, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 128.5, -64, 43, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 118.5, -64, 47, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 128.5, -64, 47, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 118.5, -64, 51, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 128.5, -64, 51, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 118.5, -64, 55, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 128.5, -64, 55, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 118.5, -64, 59, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 128.5, -64, 59, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 118.5, -64, 63, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 128.5, -64, 63, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 118.5, -64, 67, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 128.5, -64, 67, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 118.5, -64, 71, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 128.5, -64, 71, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/installation/mockup_power_generator_fusion_style_1.iff", 123.6, -64, 57, 610000126, math.rad(0) )
      
  spawnSceneObject("jakku", "object/tangible/furniture/all/frn_all_command_console.iff", 83.5, -72, 50.2, 610000128, math.rad(0) )
  
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 89.4, -72, 54.9, 610000128, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 77.5, -72, 54.9, 610000128, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 89.4, -72, 43.1, 610000128, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 77.5, -72, 43.1, 610000128, math.rad(0) )
  
  spawnSceneObject("jakku", "object/static/structure/military/bunker_crate_style_01.iff", 88.4, -74, -77.9, 610000131, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_crate_style_01.iff", 88.4, -74, -84.9, 610000131, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_crate_style_01.iff", 78.4, -74, -77.9, 610000131, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_crate_style_01.iff", 78.4, -74, -84.9, 610000131, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 88.4, -74, -77.9, 610000131, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 88.4, -74, -84.9, 610000131, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 78.4, -74, -77.9, 610000131, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 78.4, -74, -84.9, 610000131, math.rad(0) )
  
  spawnSceneObject("jakku", "object/static/structure/military/bunker_crate_style_01.iff", 55.6, -74, -77.9, 610000132, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_crate_style_01.iff", 55.6, -74, -84.9, 610000132, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_crate_style_01.iff", 46.4, -74, -77.9, 610000132, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_crate_style_01.iff", 46.4, -74, -84.9, 610000132, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 55.6, -74, -77.9, 610000132, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 55.6, -74, -84.9, 610000132, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 46.4, -74, -77.9, 610000132, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 46.4, -74, -84.9, 610000132, math.rad(0) )
 
  spawnSceneObject("jakku", "object/tangible/furniture/all/frn_all_command_console.iff", 19.4, -72, -35.8, 610000134, math.rad(-90) )
  
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 41.5, -72, 41, 610000136, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 41.5, -72, 45, 610000136, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 41.5, -72, 49, 610000136, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 41.5, -72, 53, 610000136, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 41.5, -72, 57, 610000136, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 41.5, -72, 61, 610000136, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 41.5, -72, 65, 610000136, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 41.5, -72, 69, 610000136, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 37.5, -72, 69, 610000136, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 33.5, -72, 69, 610000136, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 29.6, -72, 69, 610000136, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 29.6, -72, 65, 610000136, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 29.6, -72, 61, 610000136, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 29.6, -72, 57, 610000136, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 29.6, -72, 53, 610000136, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 29.6, -72, 49, 610000136, math.rad(0) )
  
  spawnSceneObject("jakku", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", 28.1, -72, 39.7, 610000136, math.rad(90) )
  
  spawnSceneObject("jakku", "object/static/structure/general/cloning_tube.iff", -28.5, -64, 30.9, 610000138, math.rad(90) )
  spawnSceneObject("jakku", "object/static/structure/general/cloning_tube.iff", -28.5, -64, 39.1, 610000138, math.rad(90) )
  spawnSceneObject("jakku", "object/static/structure/general/cloning_tube.iff", -28.5, -64, 46.9, 610000138, math.rad(90) )
  
  spawnSceneObject("jakku", "object/static/structure/general/cloning_tube.iff", -16.5, -64, 30.9, 610000138, math.rad(90) )
  spawnSceneObject("jakku", "object/static/structure/general/cloning_tube.iff", -16.5, -64, 39.1, 610000138, math.rad(90) )
  spawnSceneObject("jakku", "object/static/structure/general/cloning_tube.iff", -16.5, -64, 46.9, 610000138, math.rad(90) )
  
  spawnSceneObject("jakku", "object/static/structure/general/cloning_tube.iff", -8.5, -64, 30.9, 610000138, math.rad(90) )
  spawnSceneObject("jakku", "object/static/structure/general/cloning_tube.iff", -8.5, -64, 39.1, 610000138, math.rad(90) )
  spawnSceneObject("jakku", "object/static/structure/general/cloning_tube.iff", -8.5, -64, 46.9, 610000138, math.rad(90) )
  
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -4.5, -64, 16.9, 610000138, math.rad(90) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -28.5, -64, 16.9, 610000138, math.rad(90) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -4.5, -64, -6.9, 610000138, math.rad(90) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -28.5, -64, -6.9, 610000138, math.rad(90) )
  
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 10.1, -60, -10.3, 610000140, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 10.1, -60, -10.3, 610000140, math.rad(0) )
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 10.1, -60, 4.4, 610000140, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 10.1, -60, 4.4, 610000140, math.rad(0) )
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 24.9, -60, -10.3, 610000140, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 24.9, -60, -10.3, 610000140, math.rad(0) )
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 24.9, -60, 4.4, 610000140, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 24.9, -60, 4.4, 610000140, math.rad(0) )
  
  spawnSceneObject("jakku", "object/static/structure/military/military_wall_weak_imperial_16_style_01.iff", -8.6, -64.5, 22, 610000138, math.rad(0) )
 
  
end



function JakkuWeaponsFacilityScreenPlay:spawnMobiles()

--[[  local pMobile = spawnMobile("jakku", "at_xt", 60, -5763, 45, 5505, -116, 0)
        self:setMoodString(pMobile, "neutral")
        AiAgent(pMobile):setAiTemplate("idlewander")--]]
        
   --Entry corridors     
  spawnMobile("jakku", "jakku_battle_droid", 600, -5977.8, 19.4, 5776, 86, 0)
  spawnMobile("jakku", "jakku_battle_droid", 600, -5977.8, 19.4, 5779.9, 86, 0)
  
  spawnMobile("jakku", "jakku_battle_droid", 600, -3.6, 0.3, -4.0, 85, 610000114)
  spawnMobile("jakku", "jakku_battle_droid", 600, 4.2, 0.3, -3.9, -85, 610000115)
  spawnMobile("jakku", "jakku_battle_droid", 600, 4.8, -12, 30.2, -143, 610000116)
  spawnMobile("jakku", "jakku_battle_droid", 600, -33.7, -20, 30.2, 124, 610000117)
  spawnMobile("jakku", "jakku_battle_droid", 600, -32.5, -20, 19, 90, 610000118)
  spawnMobile("jakku", "jakku_battle_droid", 600, -32.4, -28, -9.3, 0, 610000118)
  spawnMobile("jakku", "jakku_battle_droid", 600, -27.2, -28, -23.1, -90, 610000119)
  spawnMobile("jakku", "jakku_battle_droid", 600, -38.4, -28, -23, 90, 610000119)

  spawnMobile("jakku", "jakku_battle_droid", 600, 4.7, -36, -8.0, -47, 610000120)
  spawnMobile("jakku", "jakku_battle_droid", 600, 2.3, -44, 30.3, 128, 610000121)
  -- Central Chamber
  spawnMobile("jakku", "jakku_battle_droid", 600, 29.9, -48, 34.8, 137, 610000147)
  
  spawnMobile("jakku", "jakku_battle_droid", 600, 28.2, -48, 20.9, 90, 610000147)
  spawnMobile("jakku", "jakku_battle_droid", 600, 28.2, -48, 13.3, 90, 610000147)
  spawnMobile("jakku", "jakku_battle_droid", 600, 28.2, -48, 5, 90, 610000147)
  spawnMobile("jakku", "jakku_battle_droid", 600, 28.2, -48, -2.9, 90, 610000147)
  spawnMobile("jakku", "jakku_battle_droid", 600, 28.2, -48, -11.0, 90, 610000147)
  
  spawnMobile("jakku", "jakku_battle_droid", 600, 29.7, -48, -24.8, 45, 610000147)
  
  spawnMobile("jakku", "jakku_battle_droid", 600, 43.6, -48, -26.2, 0, 610000147)
  spawnMobile("jakku", "jakku_battle_droid", 600, 51.4, -48, -26.2, 0, 610000147)
  spawnMobile("jakku", "jakku_battle_droid", 600, 59.5, -48, -26.2, 0, 610000147)
  spawnMobile("jakku", "jakku_battle_droid", 600, 67.6, -48, -26.2, 0, 610000147)
  spawnMobile("jakku", "jakku_battle_droid", 600, 75.4, -48, -26.2, 0, 610000147)
  
  spawnMobile("jakku", "jakku_battle_droid", 600, 89.5, -48, -24.5, -51, 610000147)
  
  spawnMobile("jakku", "jakku_battle_droid", 600, 90.7, -48, 20.9, -90, 610000147)
  spawnMobile("jakku", "jakku_battle_droid", 600, 90.7, -48, 13.3, -90, 610000147)
  spawnMobile("jakku", "jakku_battle_droid", 600, 90.7, -48, 5, -90, 610000147)
  spawnMobile("jakku", "jakku_battle_droid", 600, 90.7, -48, -2.9, -90, 610000147)
  spawnMobile("jakku", "jakku_battle_droid", 600, 90.7, -48, -11.0, -90, 610000147)
  
  spawnMobile("jakku", "jakku_battle_droid", 600, 89.5, -48, 34.5, -137, 610000147)
  
  spawnMobile("jakku", "jakku_battle_droid", 600, 43.6, -48, 36.4, 180, 610000147)
  spawnMobile("jakku", "jakku_battle_droid", 600, 51.4, -48, 36.4, 180, 610000147)
  spawnMobile("jakku", "jakku_battle_droid", 600, 59.5, -48, 36.4, 180, 610000147)
  spawnMobile("jakku", "jakku_battle_droid", 600, 67.6, -48, 36.4, 180, 610000147)
  spawnMobile("jakku", "jakku_battle_droid", 600, 75.4, -48, 36.4, 180, 610000147)
  
  -- Lower corridors
  
  spawnMobile("jakku", "jakku_battle_droid", 600, 123.4, -56, -23.9, 0, 610000122)
  
  spawnMobile("jakku", "jakku_battle_droid", 600, 120.4, -56, -9.4, 90, 610000123)
  spawnMobile("jakku", "jakku_battle_droid", 600, 128.4, -56, -8.8, -90, 610000123)
  spawnMobile("jakku", "jakku_battle_droid", 600, 124, -56, -11.6, 180, 610000123)
  spawnMobile("jakku", "jakku_battle_droid", 600, 116.5, -56, 16.0, -90, 610000123)
  
  spawnMobile("jakku", "jakku_battle_droid", 600, 106.3, -56, 11.9, 44, 610000125)
  spawnMobile("jakku", "jakku_battle_droid", 600, 127.5, -64, 42.8, 180, 610000125)
  
  spawnMobile("jakku", "jakku_battle_droid", 600, 123.2, -64, 43.5, 90, 610000126)
  spawnMobile("jakku", "jakku_battle_droid", 600, 123.7, -64, 69.7, 180, 610000126)
  
  spawnMobile("jakku", "jakku_battle_droid", 600, 82.3, -72, 66.3, 119, 610000127)
  
 -- spawnMobile("jakku", "jakku_battle_droid", 60, 83.4, -72, 49, 0, 610000128)
  
  spawnMobile("jakku", "jakku_battle_droid", 600, 74.2, -72, 48.9, 90, 610000128)
  spawnMobile("jakku", "jakku_battle_droid", 600, 92.5, -72, 49, 48.9, 610000128)
  
  spawnMobile("jakku", "jakku_battle_droid", 600, 75.4, -74, -45.1, 180, 610000130)
  spawnMobile("jakku", "jakku_battle_droid", 600, 69.5, -74, -45.1, 180, 610000130)
  spawnMobile("jakku", "jakku_battle_droid", 600, 65.6, -74, -45.1, 180, 610000130)
  spawnMobile("jakku", "jakku_battle_droid", 600, 59.6, -74, -45.1, 180, 610000130)
  spawnMobile("jakku", "jakku_battle_droid", 600, 75.4, -74, -65.9, 0, 610000130)
  spawnMobile("jakku", "jakku_battle_droid", 600, 69.5, -74, -65.9, 0, 610000130)
  spawnMobile("jakku", "jakku_battle_droid", 600, 65.6, -74, -65.9, 0, 610000130)
  spawnMobile("jakku", "jakku_battle_droid", 600, 59.6, -74, -65.9, 0, 610000130)
  
  spawnMobile("jakku", "jakku_battle_droid", 600, 18.4, -74, -64.1, 50, 610000133)
  spawnMobile("jakku", "jakku_battle_droid", 600, 19.5, -74, -651.4, 180, 610000133)
  
  spawnMobile("jakku", "jakku_battle_droid", 600, 20.5, -72, -35.7, -90, 610000134)
  spawnMobile("jakku", "jakku_battle_droid", 600, 11.6, -72, -35.7, 90, 610000134)
  spawnMobile("jakku", "jakku_battle_droid", 600, 19.6, -72, -27, 180, 610000134)
  
  spawnMobile("jakku", "jakku_battle_droid", 600, 36.7, -72, -36.1, -71, 610000135)
  spawnMobile("jakku", "jakku_battle_droid", 600, 39.0, -72, 40.3, -50, 610000136)
  spawnMobile("jakku", "jakku_battle_droid", 600, 35.4, -72, 50.4, 180, 610000136)
  
  -- Gauntlet Room
  spawnMobile("jakku", "jakku_fast_battle_droid", 1, -28.5, -63.5, 30.9, 180, 610000138)
  spawnMobile("jakku", "jakku_fast_battle_droid", 1, -28.5, -63.5, 39.1, 180, 610000138)
  spawnMobile("jakku", "jakku_fast_battle_droid", 1, -28.5, -63.5, 46.9, 180, 610000138)
  
  spawnMobile("jakku", "jakku_fast_battle_droid", 1, -16.5, -63.5, 30.9, 180, 610000138)
  spawnMobile("jakku", "jakku_fast_battle_droid", 1, -16.5, -63.5, 39.1, 180, 610000138)
  spawnMobile("jakku", "jakku_fast_battle_droid", 1, -16.5, -63.5, 46.9, 180, 610000138)
  
  spawnMobile("jakku", "jakku_fast_battle_droid", 1, -8.5, -63.5, 30.9, 180, 610000138)
  spawnMobile("jakku", "jakku_fast_battle_droid", 1, -8.5, -63.5, 39.1, 180, 610000138)
  spawnMobile("jakku", "jakku_fast_battle_droid", 1, -8.5, -63.5, 46.9, 180, 610000138)
  
  spawnMobile("jakku", "jakku_technician", 600, 35.4, -48, 48.6, 0, 610000143)
  spawnMobile("jakku", "jakku_technician", 600, 39.1, -48, 49.5, 41, 610000143)
  spawnMobile("jakku", "jakku_technician", 600, 32.2, -48, 49.5, -49, 610000143)
  
  spawnMobile("jakku", "jakku_fast_battle_droid", 15, 33.8, -48, 42.1, 0, 610000143)
  spawnMobile("jakku", "jakku_fast_battle_droid", 15, 37.4, -48, 42.1, 0, 610000143)
  
  spawnMobile("jakku", "jakku_technician", 600, 82.0, -48, 50.3, -59, 610000142)
  spawnMobile("jakku", "jakku_technician", 600, 85.8, -48, 49.9, -40, 610000142)
  spawnMobile("jakku", "jakku_fast_battle_droid", 15, 85.5, -48, 42.3, 0, 610000142)
  spawnMobile("jakku", "jakku_fast_battle_droid", 15, 82.5, -48, 42.3, 0, 610000142)
  
  spawnMobile("jakku", "jakku_technician", 600, 80.9, -48, -39.6, -134, 610000146)
  spawnMobile("jakku", "jakku_technician", 600, 84.7, -48, -35.6, -134, 610000146)  
  spawnMobile("jakku", "jakku_fast_battle_droid", 15, 88.6, -48, -37, -90, 610000146)
  spawnMobile("jakku", "jakku_fast_battle_droid", 15, 78, -48, -37, 90, 610000146)
  
  spawnMobile("jakku", "jakku_technician", 15, 35.5, -48, -37.6, 0, 610000145)
  
  spawnMobile("jakku", "jakku_fast_battle_droid", 15, 30.9, -48, -41.8, 33, 610000145)
  spawnMobile("jakku", "jakku_fast_battle_droid", 15, 30.9, -48, -31.9, 106, 610000145)
  spawnMobile("jakku", "jakku_fast_battle_droid", 15, 40.3, -48, -32.4, -141, 610000145)
  spawnMobile("jakku", "jakku_fast_battle_droid", 15, 40.2, -48, -41.8, -51, 610000145)

  
end

function JakkuWeaponsFacilityScreenPlay:spawnActiveArea1()
  local pSpawnArea1 = spawnSceneObject("jakku", "object/active_area.iff", -5957, -28.2, 5709, 0, 610000147)
    
  if (pSpawnArea1 ~= nil) then
    local activeArea1 = LuaActiveArea(pSpawnArea1)
          activeArea1:setCellObjectID(610000147)
          activeArea1:setRadius(512)
          createObserver(ENTEREDAREA, "JakkuWeaponsFacilityScreenPlay", "notifySpawnArea1", pSpawnArea1)
          --createObserver(EXITEDAREA, "ChandrilTechScreenPlay", "notifySpawnAreaLeave", pSpawnArea1)
      end
end

function JakkuWeaponsFacilityScreenPlay:notifySpawnArea1(pActiveArea1, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if ((player:isImperial() or player:isRebel()or player:isNeutral())) then

      player:sendSystemMessage("ATTENTION ALL PERSONNEL:  PROTOCOL 77 IS IN EFFECT.  EVACUATE IMMEDIATELY!")
      player:playMusicMessage("sound/amb_alarm_air_raid.snd")
      
      end
    return 0    
  end)
end
