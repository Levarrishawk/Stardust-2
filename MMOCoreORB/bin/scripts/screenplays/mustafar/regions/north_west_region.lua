local ObjectManager = require("managers.object.object_manager")


north_west_region = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "north_west_region"
}

registerScreenPlay("north_west_region", true)

function north_west_region:start()
  if (isZoneEnabled("mustafar")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
  end
end

function north_west_region:spawnSceneObjects()
--Entry
--  spawnSceneObject("yavin4", "object/tangible/terminal/terminal_elysium_crystal_01.iff", -11.5, -19.3, 38.3, 8525439, math.rad(0) )
 

end

function north_west_region:spawnMobiles()


  -- Approach
  local pCoyn1 = spawnMobile("mustafar", "coyn_trooper",120,-5529,131,5995,151,0)
  self:setMoodString(pCoyn1, "idlewander") 
  local pCoyn2 = spawnMobile("mustafar", "coyn_trooper",120,-5543,128,6035,151,0)
  self:setMoodString(pCoyn2, "idlewander") 
  local pCoyn3 = spawnMobile("mustafar", "coyn_trooper",120,-5532,126,6048,151,0)
  self:setMoodString(pCoyn3, "idlewander") 
  local pCoyn4 = spawnMobile("mustafar", "coyn_trooper",120,-5512,129,6055,129,0)
  self:setMoodString(pCoyn4, "idlewander") 
  local pCoyn5 = spawnMobile("mustafar", "coyn_trooper",120,-5497,128,6033,151,0)
  self:setMoodString(pCoyn5, "idlewander") 
  local pCoyn6 = spawnMobile("mustafar", "coyn_trooper",120,-5496,129,6011,151,0)
  self:setMoodString(pCoyn6, "idlewander") 
  local pCoyn7 = spawnMobile("mustafar", "coyn_trooper",120,-5510,128,6026,151,0)
  self:setMoodString(pCoyn7, "idlewander") 
  
  -- Pads
  local pCoyn8 = spawnMobile("mustafar", "coyn_shock",120,-5443.5,130.3,6006.3,-58,0)
  self:setMoodString(pCoyn8, "neutral") 
  local pCoyn9 = spawnMobile("mustafar", "coyn_shock",120,-5439.9,130.3,6003.4,52,0)
  self:setMoodString(pCoyn9, "neutral") 
  local pCoyn10 = spawnMobile("mustafar", "coyn_shock",120,-5439.4,130.3,5998.7,128,0)
  self:setMoodString(pCoyn10, "neutral") 
  
  local pCoynCaptain = spawnMobile("mustafar", "coyn_captain",600,-5432.8,130.6,6016.4,162,0)
  self:setMoodString(pCoynCaptain, "idlewander") 
  
  local pCoyn11 = spawnMobile("mustafar", "coyn_shock",120,-5420.3,130.1,6017.3,173,0)
  self:setMoodString(pCoyn11, "neutral") 
  local pCoyn12 = spawnMobile("mustafar", "coyn_shock",120,-5419.6,130.2,6012.0,-6,0)
  self:setMoodString(pCoyn12, "neutral") 
  
  -- Barracks
  local pCoyn13 = spawnMobile("mustafar", "coyn_commando",120,-5402.2,114.9,6072.7,-49,0)
  self:setMoodString(pCoyn13, "neutral") 
  local pCoyn14 = spawnMobile("mustafar", "coyn_commando",120,-5402.2,114.9,6072.7,-49,0)
  self:setMoodString(pCoyn14, "idlewander") 
  local pCoyn15 = spawnMobile("mustafar", "coyn_commando",120,-5405.8,114.7,6068.1,-57,0)
  self:setMoodString(pCoyn15, "neutral") 
  local pCoyn16 = spawnMobile("mustafar", "coyn_commando",120,-5422.8,114.5,6060.3,9,0)
  self:setMoodString(pCoyn16, "neutral") 
  local pCoyn17 = spawnMobile("mustafar", "coyn_commando",120,-5426.3,114.3,6060.7,0,0)
  self:setMoodString(pCoyn17, "neutral") 
  local pCoyn18 = spawnMobile("mustafar", "coyn_commando",120,-5429.9,114.5,6060.4,7,0)
  self:setMoodString(pCoyn18, "neutral") 
  local pCoyn19 = spawnMobile("mustafar", "coyn_commando",120,-5450.6,114.5,6068.9,49,0)
  self:setMoodString(pCoyn19, "neutral") 
  local pCoyn20 = spawnMobile("mustafar", "coyn_commando",120,-5455.1,114.5,6070.9,30,0)
  self:setMoodString(pCoyn20, "neutral") 
  local pCoyn21 = spawnMobile("mustafar", "coyn_commando",120,-5453.1,114.5,6069.9,46,0)
  self:setMoodString(pCoyn21, "neutral")
  local pCoyn22 = spawnMobile("mustafar", "coyn_commando",120,-5448.6,114.5,6086.5,30,0)
  self:setMoodString(pCoyn22, "idlewander")
  local pCoyn23 = spawnMobile("mustafar", "coyn_commando",120,-5438.6,114.5,6090,30,0)
  self:setMoodString(pCoyn23, "idlewander")
  local pCoyn24 = spawnMobile("mustafar", "coyn_commando",120,-5425,114.5,6095,30,0)
  self:setMoodString(pCoyn24, "idlewander")
  -- Barracks 2
  local pCoyn25 = spawnMobile("mustafar", "coyn_commando",120,-5333,114.5,6151,30,0)
  self:setMoodString(pCoyn25, "idlewander")
  local pCoyn26 = spawnMobile("mustafar", "coyn_commando",120,-5342,114.5,6150,30,0)
  self:setMoodString(pCoyn26, "idlewander")  
  local pCoyn27 = spawnMobile("mustafar", "coyn_shock",120,-5298.2,138.7,6077.4,-95,0)
  self:setMoodString(pCoyn27, "neutral") 
  local pCoyn28 = spawnMobile("mustafar", "coyn_shock",120,-5293.4,138.6,6074.6,-95,0)
  self:setMoodString(pCoyn28, "neutral")
  -- Promentory
  local pCoyn29= spawnMobile("mustafar", "coyn_commander",600,-5301.4,266.9,5992.1,-179,0)
  self:setMoodString(pCoyn29, "neutral")
  local pCoyn27= spawnMobile("mustafar", "coyn_shock",120,-5306.2,266.9,5991.6,95,0)
  self:setMoodString(pCoyn27, "neutral")
end
