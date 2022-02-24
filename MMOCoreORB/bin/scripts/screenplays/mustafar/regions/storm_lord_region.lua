local ObjectManager = require("managers.object.object_manager")


storm_lord_region = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "storm_lord_region"
}

registerScreenPlay("storm_lord_region", true)

function storm_lord_region:start()
  if (isZoneEnabled("mustafar")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
  end
end

function storm_lord_region:spawnSceneObjects()
--Entry
--  spawnSceneObject("yavin4", "object/tangible/terminal/terminal_elysium_crystal_01.iff", -11.5, -19.3, 38.3, 8525439, math.rad(0) )
 

end

function storm_lord_region:spawnMobiles()

-- Canyon Approach Phantom Bandits near Escape Pod

  local pPhantom1 = spawnMobile("mustafar", "som_mustafarian_phantom_bandit",120,457,129.1,5771.8,127,0)
  self:setMoodString(pPhantom1, "idlewander")
  local pPhantom2 = spawnMobile("mustafar", "som_mustafarian_phantom_bandit",120,465,129.1,5796.8,127,0)
  self:setMoodString(pPhantom1, "idlewander")
  local pPhantom3 = spawnMobile("mustafar", "som_mustafarian_phantom_bandit",120,483,128.7,5771.9,127,0)
  self:setMoodString(pPhantom1, "idlewander")
  local pPhantom4 = spawnMobile("mustafar", "som_mustafarian_phantom_bandit",120,464,129.7,5719.0,127,0)
  self:setMoodString(pPhantom1, "idlewander")
  local pPhantom5 = spawnMobile("mustafar", "som_mustafarian_phantom_bandit",120,459,131.1,5692,127,0)
  self:setMoodString(pPhantom5, "idlewander")
  
-- Lone Tower on East Hill
  local pMinion1 = spawnMobile("mustafar", "storm_lord_minion",120,388.7,200.5,4347.1,143,0)
  self:setMoodString(pMinion1, "neutral")
  local pMinion2 = spawnMobile("mustafar", "storm_lord_minion",120,395.3,201.9,4352.8,165,0)
  self:setMoodString(pMinion2, "neutral")
  local pZealot1 = spawnMobile("mustafar", "storm_lord_zealot",120,379.9,217.3,4369.3,143,0)
  self:setMoodString(pZealot1, "neutral")

-- Scavenger Camp 
  local pScavenger1 = spawnMobile("mustafar", "scavenger",120,309.1,129.9,4260,9,0)
  self:setMoodString(pScavenger1, "idlewander")
  local pScavenger2 = spawnMobile("mustafar", "scavenger",120,335,129.9,4253,143,0)
  self:setMoodString(pScavenger2, "idlewander")
  local pScavenger3 = spawnMobile("mustafar", "scavenger",120,323,129.9,4206,-29,0)
  self:setMoodString(pScavenger3, "neutral")
  local pScavenger4 = spawnMobile("mustafar", "scavenger",120,277,129.9,4282,143,0)
  self:setMoodString(pScavenger2, "idlewander")
  local pScavenger5 = spawnMobile("mustafar", "scavenger",120,308,129.9,4291,143,0)
  self:setMoodString(pScavenger5, "idlewander")
  local pScavenger6 = spawnMobile("mustafar", "scavenger",120,302,129.9,4286,-110,0)
  self:setMoodString(pScavenger6, "idlewander")
  
  local pMinion3 = spawnMobile("mustafar", "storm_lord_minion",120,299,129.5,4304,23,0)
  self:setMoodString(pMinion3, "idlewander")
  local pMinion4 = spawnMobile("mustafar", "storm_lord_minion",120,307,129.9,4318,43,0)
  self:setMoodString(pMinion4, "idlewander")
  local pMinion5 = spawnMobile("mustafar", "storm_lord_minion",120,273,129.8,4314,-43,0)
  self:setMoodString(pMinion5, "idlewander") 
  local pMinion6 = spawnMobile("mustafar", "storm_lord_minion",120,272,129.9,4227,43,0)
  self:setMoodString(pMinion6, "idlewander")
  local pMinion7 = spawnMobile("mustafar", "storm_lord_minion",120,281,129.9,4331,43,0)
  self:setMoodString(pMinion7, "idlewander")
  local pMinion8 = spawnMobile("mustafar", "storm_lord_minion",120,297,129.9,4336,43,0)
  self:setMoodString(pMinion8, "idlewander")
  
-- Skar tower   -- TODO add suitable NPC for Skar -  Closest appearance would be blackguard wilder.
  local pMinion9 = spawnMobile("mustafar", "storm_lord_minion",120,147,159.9,4562,43,0)
  self:setMoodString(pMinion9, "idlewander")
  local pMinion10 = spawnMobile("mustafar", "storm_lord_minion",120,135,159.8,4573,56,0)
  self:setMoodString(pMinion10, "idlewander")
  local pMinion11 = spawnMobile("mustafar", "storm_lord_minion",120,145,161.4,4592,-73,0)
  self:setMoodString(pMinion11, "idlewander")
  local pMinion12 = spawnMobile("mustafar", "storm_lord_minion",120,168,161.4,4610,56,0)
  self:setMoodString(pMinion12, "idlewander")
  local pMinion13 = spawnMobile("mustafar", "storm_lord_minion",120,186,160.3,4558,56,0)
  self:setMoodString(pMinion13, "idlewander")
  
-- Storm Lord Promentory
  local pStormlord = spawnMobile("mustafar", "storm_lord",1200,194.4,266.7,4096.3,-22,0)  
  self:setMoodString(pStormlord, "angry")
  local pGuard1 = spawnMobile("mustafar", "storm_lord_guard",300,191.3,264.5,4096.3,-37,0)  
  self:setMoodString(pGuard1, "neutral")
  local pGuard2 = spawnMobile("mustafar", "storm_lord_guard",300,182.4,264.5,4112.7,-37,0)  
  self:setMoodString(pGuard2, "neutral")
  local pGuard3 = spawnMobile("mustafar", "storm_lord_guard",300,178.9,264.5,4094.2,-110,0)  
  self:setMoodString(pGuard3, "neutral")  
  local pGuard4 = spawnMobile("mustafar", "storm_lord_guard",300,196.4,264.1,4083.4,145,0)  
  self:setMoodString(pGuard4, "neutral")
  local pGuard5 = spawnMobile("mustafar", "storm_lord_guard",300,204.6,263.7,4085.8,147,0)  
  self:setMoodString(pGuard5, "neutral")
   
end
