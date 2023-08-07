naboo_memorial = ScreenPlay:new {
	numberOfActs = 1;
	
	lootContainers = {
		

	},

	lootLevel = 100,

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 700000},
				{group = "junk", chance = 7500000},
				{group = "rifles", chance = 600000},
				{group = "pistols", chance = 600000},
				{group = "clothing_attachments", chance = 300000},
				{group = "armor_attachments", chance = 300000}
			},
			lootChance = 8000000
		}
	},
}

registerScreenPlay("naboo_memorial", true)

function naboo_memorial:start()
	self:spawnMobiles()
	self:spawnSceneObjects()
end

function naboo_memorial:spawnSceneObjects()

 spawnSceneObject("naboo", "object/static/structure/naboo/garden_gazebo_lg_s01.iff", 5373, 7.5, 1525, 0, math.rad(0) )
 spawnSceneObject("naboo", "object/tangible/furniture/all/frn_all_tiki_torch_s1.iff", 5373.6, 7.7, 1527.2, 0, math.rad(0) )
 spawnSceneObject("naboo", "object/tangible/furniture/all/frn_all_tiki_torch_s1.iff", 5375.2, 7.7, 1525.5, 0, math.rad(0) )
 spawnSceneObject("naboo", "object/tangible/furniture/all/frn_all_tiki_torch_s1.iff", 5371.4, 7.7, 1526.6, 0, math.rad(0) )
 spawnSceneObject("naboo", "object/tangible/furniture/all/frn_all_tiki_torch_s1.iff", 5370.8, 7.7, 1524.4, 0, math.rad(0) )
 spawnSceneObject("naboo", "object/tangible/furniture/all/event_flag_game_imp_banner.iff", 5370.4, 7.7, 1522.5, 0, math.rad(-139) ) 
 spawnSceneObject("naboo", "object/tangible/furniture/all/event_flag_game_imp_banner.iff", 5372.1, 7.7, 1528.5, 0, math.rad(-20) ) 
 spawnSceneObject("naboo", "object/tangible/furniture/all/event_flag_game_imp_banner.iff", 5376.4, 7.7, 1524.0, 0, math.rad(100) ) 

end

function naboo_memorial:spawnMobiles()

-- Mobiles

	spawnMobile("naboo", "naboo_heat_memorial", 200, 5373, 7.7, 1525.0, 169, 0)
	
	

end

function naboo_memorial:spawnActiveArea1()
  local pSpawnArea1 = spawnSceneObject("naboo", "object/active_area.iff", 5373, 7, 1524, 0, 0)
    
  if (pSpawnArea1 ~= nil) then
    local activeArea1 = LuaActiveArea(pSpawnArea1)
          activeArea1:setCellObjectID(0)
          activeArea1:setRadius(40)
          createObserver(ENTEREDAREA, "naboo_memorial", "notifySpawnArea1", pSpawnArea1)          
      end
end

function naboo_memorial:notifySpawnArea1(pActiveArea1, pMovingObject, pPlayer)
  
  if (not SceneObject(pMovingObject):isPlayerCreature()) then
    return 0
  else
      CreatureObject(pMovingObject):playMusicMessage("sound/music_sadness.snd")
  end          
  return 0     
end
