local ObjectManager = require("managers.object.object_manager")

pvp = ScreenPlay:new {
  numberOfActs = 1,
    questString = "pvp",
    states = {onleave = 1, overt = 2},
    questdata = Object:new {
      activePlayerName = "initial",
      }
}
  
registerScreenPlay("pvp", true)
  
function pvp:start()
      self:spawnActiveAreas()
      self:spawnSceneObjects()
      self:spawnMobiles()
end

function pvp:spawnSceneObjects()
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw.iff", -6021, 75, 5514, 0, math.rad(30) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_2.iff", -6201, 75, 5654, 0, math.rad(-52) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -6345, 75, 5753, 0, math.rad(34) )  
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -5925, 75, 6181, 0, math.rad(-140) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_t_vs_x.iff", -5942, 80, 5715, 0, math.rad(-130) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_t_vs_x_2.iff", -6021, 60, 5819, 0, math.rad(-30) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_t_vs_x_3.iff", -5727, 80, 5518, 0, math.rad(-30) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_ti_vs_aw_3.iff", -6324, 60, 6008, 0, math.rad(102) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_ti_vs_aw_2.iff", -6114, 76, 6065, 0, math.rad(-170) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_ti_vs_aw.iff", -5804, 80, 5720, 0, math.rad(-70) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_ti_vs_aw.iff", -5812, 80, 5914, 0, math.rad(-118) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -5573, 75, 5981, 0, math.rad(140) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -5592, 75, 5755, 0, math.rad(90) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -5848, 75, 5367, 0, math.rad(-78) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -6008, 75, 5350, 0, math.rad(-40) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -6127, 75, 5597, 0, math.rad(42) )

  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw.iff", -5835, 75, 6144, 0, math.rad(30) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_2.iff", -5719, 75, 6186.7, 0, math.rad(-52) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -5649, 75, 6098, 0, math.rad(34) )  
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -5580, 75, 5981, 0, math.rad(-140) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_t_vs_x.iff", -5615, 50, 5796, 0, math.rad(-130) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_t_vs_x_2.iff", -5545, 60, 5718, 0, math.rad(-30) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_t_vs_x_3.iff", -5727, 80, 5518, 0, math.rad(-30) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_ti_vs_aw_3.iff", -5959, 60, 5706, 0, math.rad(102) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_ti_vs_aw_2.iff", -5601, 76, 5628, 0, math.rad(-170) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_ti_vs_aw.iff", -5671, 80, 5575, 0, math.rad(-70) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_ti_vs_aw.iff", -5792, 80, 5531, 0, math.rad(-118) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -5747, 75, 5467, 0, math.rad(140) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -5903, 75, 5477, 0, math.rad(90) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -5912, 75, 5544, 0, math.rad(-78) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -5884, 75, 5634, 0, math.rad(-40) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -5817, 75, 5738, 0, math.rad(42) )

  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw.iff", -6008, 55, 5574, 0, math.rad(30) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_2.iff", -6048, 75, 5815, 0, math.rad(-52) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -6078, 75, 5869, 0, math.rad(34) )  
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -6171, 75, 5825, 0, math.rad(-140) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_t_vs_x.iff", -6169, 80, 5907, 0, math.rad(-130) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_t_vs_x_2.iff", -6229, 60, 5913, 0, math.rad(-30) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_t_vs_x_3.iff", -6314, 80, 5886, 0, math.rad(-30) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_ti_vs_aw_3.iff", -6285, 60, 5954, 0, math.rad(102) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_ti_vs_aw_2.iff", -6330, 76, 6038, 0, math.rad(-170) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_ti_vs_aw.iff", -6254, 80, 6045, 0, math.rad(-70) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_ti_vs_aw.iff", -6176, 80, 6033, 0, math.rad(-118) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -6183, 75, 6142, 0, math.rad(140) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -6097, 75, 6077, 0, math.rad(90) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -6022, 75, 5967, 0, math.rad(-78) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -5934, 75, 5938, 0, math.rad(-40) )
  spawnSceneObject("jakku", "object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -5903, 75, 6029, 0, math.rad(42) )

end

function pvp:spawnMobiles()
 --   spawnMobile("jakku", "dark_jedi_sentinel",1, 4325,7,-5097,0,0)
end
  
function pvp:spawnActiveAreas()
  local pSpawnArea = spawnActiveArea("jakku", "object/active_area.iff", -5945, 25, 5774, 512, 0)
     
  if (pSpawnArea ~= nil) then
    local activeArea = LuaActiveArea(pSpawnArea)         
          createObserver(ENTEREDAREA, "pvp", "notifySpawnArea", pSpawnArea)
          createObserver(EXITEDAREA, "pvp", "notifySpawnAreaLeave", pSpawnArea)
      end
end
 
--checks if player enters the zone, and what to do with them.
function pvp:notifySpawnArea(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isPlayerCreature()) then  
    return 0
  else    
    if not(CreatureObject(pMovingObject):isNeutral()) then           
      CreatureObject(pMovingObject):sendSystemMessage("You have entered the Battle of Jakku!")
      CreatureObject(pMovingObject):setFactionStatus(2)
    end 
    if (CreatureObject(pMovingObject):isNeutral()) then
      print("Neutral Player Detected inside Jakku Boundary, Teleporting out of zone")
      CreatureObject(pMovingObject):sendSystemMessage("You must be a member of a faction to join the Battle of Jakku!")
      CreatureObject(pMovingObject):teleport(4331, 9.1, -5130, 0)  
    end           
  end
   return 0  
end


function pvp:notifySpawnAreaLeave(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isPlayerCreature()) then
    return 0
  else
    if (CreatureObject(pMovingObject):isInCombat()) then
      print("Player in Combat Crossed Jakku Boundary.  Teleporting to Acklay Pen")
      CreatureObject(pMovingObject):sendSystemMessage("You have deserted in the heat of battle. For this you will be sent to the Cratertown Arena.")
      CreatureObject(pMovingObject):setFactionStatus(1)      
      CreatureObject(pMovingObject):teleport(4444, 7, -5168, 0)
    else      
        CreatureObject(pMovingObject):sendSystemMessage("You are now leaving the battle area!")        
        CreatureObject(pMovingObject):setFactionStatus(1)
        CreatureObject(pMovingObject):teleport(4331, 9.1, -5130, 0)
    end           
  end 
  return 0
end


