local ObjectManager = require("managers.object.object_manager")

EndorPhase1ScreenPlay = ScreenPlay:new {
  numberOfActs = 1,
    questString = "EndorPhase1ScreenPlay",
    states = {onleave = 1, overt = 2},
    questdata = Object:new {
      activePlayerName = "initial",
      }
}
  
registerScreenPlay("EndorPhase1ScreenPlay", true)

function EndorPhase1ScreenPlay:start()
	if (isZoneEnabled("endor")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	--	self:spawnActiveAreas()
	end
end

function EndorPhase1ScreenPlay:spawnSceneObjects()

	--Cantina Static Objects
	spawnSceneObject("endor", "object/static/structure/general/poi_all_impl_corral_64x64_s02.iff", 753, 18, 883, 0, math.rad(0) )
  spawnSceneObject("endor", "object/static/structure/general/poi_all_impl_corral_64x64_s02.iff", 753, 18, 947, 0, math.rad(0) )
  spawnSceneObject("endor", "object/static/structure/general/poi_all_impl_corral_64x64_s02.iff", 785, 18, 915, 0, math.rad(-90) )
  spawnSceneObject("endor", "object/static/structure/general/poi_all_impl_corral_64x64_s02.iff", 721, 18, 915, 0, math.rad(90) )
  
  spawnSceneObject("endor", "object/building/military/military_base_gate_house_imperial.iff", 787, 18, 948, 0, math.rad(45) )
  spawnSceneObject("endor", "object/building/military/military_base_gate_house_imperial.iff", 720, 18, 948, 0, math.rad(-45) )
  spawnSceneObject("endor", "object/building/military/military_base_gate_house_imperial.iff", 720, 18, 882, 0, math.rad(-135) )
  spawnSceneObject("endor", "object/building/military/military_base_gate_house_imperial.iff", 787, 18, 882, 0, math.rad(135) )
  
  spawnSceneObject("endor", "object/static/structure/tatooine/antenna_tatt_style_1.iff", 753, 18, 915, 0, math.rad(0) )
  
  spawnSceneObject("endor", "object/static/structure/general/poi_all_rebl_corral_32x32_s01.iff", 667, 18, 802, 0, math.rad(45) )
  spawnSceneObject("endor", "object/static/structure/general/poi_all_rebl_corral_32x32_s01.iff", 853, 18, 802, 0, math.rad(-45) )
  spawnSceneObject("endor", "object/static/structure/general/poi_all_rebl_corral_32x32_s01.iff", 753, 18, 760, 0, math.rad(0) )
  
  spawnSceneObject("endor", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 757.2, 18, 862.5, 0, math.rad(0) )
  spawnSceneObject("endor", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 748.8, 18, 862.5, 0, math.rad(0) )
 
  spawnSceneObject("endor", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 757.2, 18, 903.5, 0, math.rad(0) )
  spawnSceneObject("endor", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 748.8, 18, 903.5, 0, math.rad(0) )
  
  spawnSceneObject("endor", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 757.2, 18, 926.5, 0, math.rad(0) )
  spawnSceneObject("endor", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 748.8, 18, 926.5, 0, math.rad(0) )
  
  spawnSceneObject("endor", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 757.2, 18, 967.5, 0, math.rad(0) )
  spawnSceneObject("endor", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 748.8, 18, 967.5, 0, math.rad(0) )
  
  spawnSceneObject("endor", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 805.5, 18, 919.2, 0, math.rad(0) )
  spawnSceneObject("endor", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 805.5, 18, 910.8, 0, math.rad(0) )
  
  spawnSceneObject("endor", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 764.5, 18, 919.2, 0, math.rad(0) )
  spawnSceneObject("endor", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 764.5, 18, 910.8, 0, math.rad(0) )
  
  spawnSceneObject("endor", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 741.5, 18, 919.2, 0, math.rad(0) )
  spawnSceneObject("endor", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 741.5, 18, 910.8, 0, math.rad(0) )
  
  spawnSceneObject("endor", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 700.5, 18, 919.2, 0, math.rad(0) )
  spawnSceneObject("endor", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 700.5, 18, 910.8, 0, math.rad(0) )
  
  spawnSceneObject("endor", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 762.5, 18, 763.9, 0, math.rad(0) )
  spawnSceneObject("endor", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 676.5, 18, 798, 0, math.rad(0) )
  spawnSceneObject("endor", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 857, 18, 811.5, 0, math.rad(0) )
  
  spawnSceneObject("endor", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw.iff", 703, 50, 759, 0, math.rad(30) )
  spawnSceneObject("endor", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_2.iff", 632, 75, 917, 0, math.rad(-52) )
  spawnSceneObject("endor", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", 761, 75, 991, 0, math.rad(34) )  
  spawnSceneObject("endor", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", 820, 75, 942, 0, math.rad(-140) )
  spawnSceneObject("endor", "object/static/particle/particle_distant_ships_dogfight_t_vs_x.iff", 673, 80, 985, 0, math.rad(-130) )
  spawnSceneObject("endor", "object/static/particle/particle_distant_ships_dogfight_ti_vs_aw.iff", 753, 60, 917, 0, math.rad(-70) )
  
  
end

function EndorPhase1ScreenPlay:spawnMobiles()

	-- Rebels
	local pNpc = spawnMobile("endor", "surgical_droid_21b",60,3.1,0.1,11.5,0,0)
	self:setMoodString(pNpc, "neutral")
	
  pNpc = spawnMobile("endor", "fbase_rebel_commando_hard", 60, 834, 18, 804, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")	

  pNpc = spawnMobile("endor", "fbase_rebel_commando_hard", 60, 849, 18, 821, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander") 
  
  pNpc = spawnMobile("endor", "fbase_rebel_commando_hard", 60, 765, 18, 779, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander") 
  
  pNpc = spawnMobile("endor", "fbase_rebel_commando_hard", 60, 742, 18, 779, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander") 
  
  pNpc = spawnMobile("endor", "fbase_rebel_commando_hard", 60, 689, 18, 807, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander") 
  
  pNpc = spawnMobile("endor", "fbase_rebel_commando_hard", 60, 674, 18, 829, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander") 
  
  
  -- Imperials
  pNpc = spawnMobile("endor", "at_st", 60, 731, 18, 862, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander") 
  
  pNpc = spawnMobile("endor", "at_st", 60, 696, 18, 890, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander") 
  
  pNpc = spawnMobile("endor", "at_st", 60, 777, 18, 860, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander") 
  
  pNpc = spawnMobile("endor", "at_st", 60, 807, 18, 892, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander") 
  
  pNpc = spawnMobile("endor", "at_st", 60, 803, 18, 937, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander") 
  
  pNpc = spawnMobile("endor", "at_st", 60, 774, 18, 970, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander") 
  
  pNpc = spawnMobile("endor", "at_st", 60, 697, 18, 938, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander") 
  
  spawnMobile("endor", "fbase_stormtrooper_extreme", 60, 744, 18, 857, 180, 0)
  spawnMobile("endor", "fbase_stormtrooper_extreme", 60, 761, 18, 857, 180, 0)
  
  spawnMobile("endor", "fbase_stormtrooper_extreme", 60, 722, 18, 872, -135, 0)
  spawnMobile("endor", "fbase_stormtrooper_extreme", 60, 710, 18, 881, -135, 0)
  
  spawnMobile("endor", "fbase_stormtrooper_extreme", 60, 696, 18, 906, -90, 0)
  spawnMobile("endor", "fbase_stormtrooper_extreme", 60, 696, 18, 923, -90, 0)
  
  spawnMobile("endor", "fbase_stormtrooper_extreme", 60, 711, 18, 947, -45, 0)
  spawnMobile("endor", "fbase_stormtrooper_extreme", 60, 721, 18, 958, -45, 0)
  
  spawnMobile("endor", "fbase_stormtrooper_extreme", 60, 744, 18, 972, 0, 0)
  spawnMobile("endor", "fbase_stormtrooper_extreme", 60, 761, 18, 972, 0, 0)
  
  spawnMobile("endor", "fbase_stormtrooper_extreme", 60, 785, 18, 958, 45, 0)
  spawnMobile("endor", "fbase_stormtrooper_extreme", 60, 796, 18, 947, 45, 0)
  
  spawnMobile("endor", "fbase_stormtrooper_extreme", 60, 811, 18, 922, 90, 0)
  spawnMobile("endor", "fbase_stormtrooper_extreme", 60, 811, 18, 908, 90, 0)
  
  spawnMobile("endor", "fbase_stormtrooper_extreme", 60, 796, 18, 882, 135, 0)
  spawnMobile("endor", "fbase_stormtrooper_extreme", 60, 786, 18, 872, 135, 0)
  
  spawnMobile("endor", "fbase_imperial_colonel_extreme", 60, 719, 22, 879, 180, 0)
  spawnMobile("endor", "fbase_imperial_colonel_extreme", 60, 787, 22, 879, 180, 0)
  
  spawnMobile("endor", "stormtrooper", 60, 709, 18, 835, 180, 0)
  spawnMobile("endor", "stormtrooper", 60, 719, 18, 835, 180, 0)
  spawnMobile("endor", "stormtrooper", 60, 729, 18, 835, 180, 0)
  spawnMobile("endor", "stormtrooper", 60, 739, 18, 835, 180, 0)
  spawnMobile("endor", "stormtrooper", 60, 749, 18, 835, 180, 0)
  spawnMobile("endor", "stormtrooper", 60, 759, 18, 835, 180, 0)
  spawnMobile("endor", "stormtrooper", 60, 769, 18, 835, 180, 0)
  spawnMobile("endor", "stormtrooper", 60, 779, 18, 835, 180, 0)
  spawnMobile("endor", "stormtrooper", 60, 789, 18, 835, 180, 0)
  spawnMobile("endor", "stormtrooper", 60, 799, 18, 835, 180, 0)
  
  spawnMobile("endor", "emperors_hand", 60, 750, 18, 903, 180, 0)
  spawnMobile("endor", "emperors_hand", 60, 755, 18, 903, 180, 0)
  spawnMobile("endor", "emperors_hand", 60, 750, 18, 926, 180, 0)
  spawnMobile("endor", "emperors_hand", 60, 755, 18, 926, 180, 0)
  
  spawnMobile("endor", "emperors_hand", 60, 764, 18, 912, 90, 0)
  spawnMobile("endor", "emperors_hand", 60, 764, 18, 917, 90, 0)
  spawnMobile("endor", "emperors_hand", 60, 741, 18, 912, -90, 0)
  spawnMobile("endor", "emperors_hand", 60, 741, 18, 917, -90, 0)
  
  spawnMobile("endor", "rebel_trooper", 60, 709, 18, 815, 0, 0)
  spawnMobile("endor", "rebel_trooper", 60, 719, 18, 815, 0, 0)
  spawnMobile("endor", "rebel_trooper", 60, 729, 18, 815, 0, 0)
  spawnMobile("endor", "rebel_trooper", 60, 739, 18, 815, 0, 0)
  spawnMobile("endor", "rebel_trooper", 60, 749, 18, 815, 0, 0)
  spawnMobile("endor", "rebel_trooper", 60, 759, 18, 815, 0, 0)
  spawnMobile("endor", "rebel_trooper", 60, 769, 18, 815, 0, 0)
  spawnMobile("endor", "rebel_trooper", 60, 779, 18, 815, 0, 0)
  spawnMobile("endor", "rebel_trooper", 60, 789, 18, 815, 0, 0)
  spawnMobile("endor", "rebel_trooper", 60, 799, 18, 815, 0, 0)
  
  spawnMobile("endor", "panshee_warrior_endor", 60, 705, 18, 810, 0, 0)
  spawnMobile("endor", "panshee_warrior_endor", 60, 715, 18, 810, 0, 0)
  spawnMobile("endor", "panshee_warrior_endor", 60, 725, 18, 810, 0, 0)
  spawnMobile("endor", "panshee_warrior_endor", 60, 735, 18, 810, 0, 0)
  spawnMobile("endor", "panshee_warrior_endor", 60, 745, 18, 810, 0, 0)
  spawnMobile("endor", "panshee_warrior_endor", 60, 755, 18, 810, 0, 0)
  spawnMobile("endor", "panshee_warrior_endor", 60, 765, 18, 810, 0, 0)
  spawnMobile("endor", "panshee_warrior_endor", 60, 775, 18, 810, 0, 0)
  spawnMobile("endor", "panshee_warrior_endor", 60, 785, 18, 810, 0, 0)
  spawnMobile("endor", "panshee_warrior_endor", 60, 795, 18, 810, 0, 0)
  
  --Static Boss Rebel
  spawnMobile("endor", "captain_rex", 21600, 752, 18, 759, 0, 0)
  
  --static Boss imperial
  spawnMobile("endor", "darth_vader_event", 21600, 752, 18, 912, 180, 0)
  
end


