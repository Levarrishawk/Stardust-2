local ObjectManager = require("managers.object.object_manager")


mensix_facility_region = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "mensix_facility_region"
}

registerScreenPlay("mensix_facility_region", true)

function mensix_facility_region:start()
  if (isZoneEnabled("mustafar")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
  end
end

function mensix_facility_region:spawnSceneObjects()
--Entry
--  spawnSceneObject("yavin4", "object/tangible/terminal/terminal_elysium_crystal_01.iff", -11.5, -19.3, 38.3, 8525439, math.rad(0) )
 

end

function mensix_facility_region:spawnMobiles()

-- Mustafarian Lava Miners downhill from Mensix

  local pLavaMiner = spawnMobile("mustafar", "mustafarian_m_01",60,-2906.5,148.5,1371.8,127,0)
  self:setMoodString(pLavaMiner, "neutral")
  local pLavaMiner1 = spawnMobile("mustafar", "mustafarian_m_01",60,-85.8,15.6,4679.7,-13,0)
  self:setMoodString(pLavaMiner1, "idlewander")
  local pLavaMiner2 = spawnMobile("mustafar", "mustafarian_m_01",60,-2958.0,136.5,1348.7,-74,0)
  self:setMoodString(pLavaMiner2, "idlewander")
  local pLavaMiner3 = spawnMobile("mustafar", "mustafarian_m_01",60,-2954.9,136.9,1357.8,21,0)
  self:setMoodString(pLavaMiner3, "idlewander") 
  local pLavaMiner4 = spawnMobile("mustafar", "mustafarian_m_01",60,-3027.3,141.9,1305.4,-173,0)
  self:setMoodString(pLavaMiner4, "idlewander")
  local pLavaMiner5 = spawnMobile("mustafar", "mustafarian_m_01",60,-3041.6,144.5,1314.0,-59,0)
  self:setMoodString(pLavaMiner5, "idlewander")
  local pLavaMiner6 = spawnMobile("mustafar", "mustafarian_m_01",60,-3057.9,145.8,1329.5,-88,0)
  self:setMoodString(pLavaMiner6, "neutral")
  local pLavaMiner7 = spawnMobile("mustafar", "mustafarian_m_01",60,-3057.1,145.8,1330.1,-35,0)
  self:setMoodString(pLavaMiner7, "neutral")
  local pLavaMiner8 = spawnMobile("mustafar", "mustafarian_m_01",60,-3127.2,145.7,1339.1,5,0)
  self:setMoodString(pLavaMiner8, "idlewander")
  local pLavaMiner9 = spawnMobile("mustafar", "mustafarian_m_01",60,-3137.2,145.2,1326.4,-142,0)
  self:setMoodString(pLavaMiner9, "idlewander")
  local pLavaMiner10 = spawnMobile("mustafar", "mustafarian_m_01",60,-3128.6,145.8,1321.9,117,0)
  self:setMoodString(pLavaMiner10, "idlewander")
  
-- Center South Miner Camp
  local pLavaMiner11 = spawnMobile("mustafar", "mustafarian_m_01",60,-2868.7,103.6,-235.4,117,0)
  self:setMoodString(pLavaMiner11, "idlewander")
  local pLavaMiner12 = spawnMobile("mustafar", "mustafarian_m_01",60,-2873.2,103.6,-252.8,117,0)
  self:setMoodString(pLavaMiner12, "idlewander")
  local pLavaMiner13 = spawnMobile("mustafar", "mustafarian_m_01",60,-2889.6,103.6,-265.3,-117,0)
  self:setMoodString(pLavaMiner13, "idlewander")
  local pLavaMiner14 = spawnMobile("mustafar", "mustafarian_m_01",60,-2891.9,103.6,-240.7,-117,0)
  self:setMoodString(pLavaMiner14, "idlewander")  
  
  -- Deathsting
  local pDeathsting = spawnMobile("mustafar", "deathsting",600,-5591,134,2172.5,-95,0)
  self:setMoodString(pDeathsting, "idlewander") 
  
  -- Southwest salvage bandit camp
  local pBandit1 = spawnMobile("mustafar", "must_salvage_bandit_01",120,-6006,81,44.4,33,0)
  self:setMoodString(pBandit1, "neutral") 
  local pBandit2 = spawnMobile("mustafar", "must_salvage_bandit_01",120,-6016,83.1,58.5,55,0)
  self:setMoodString(pBandit2, "neutral") 
  local pBandit3 = spawnMobile("mustafar", "must_salvage_bandit_01",120,-6027.6,87.5,73.7,50,0)
  self:setMoodString(pBandit3, "neutral") 
  local pBandit4 = spawnMobile("mustafar", "must_salvage_bandit_01",120,-6028.7,87.5,67.6,50,0)
  self:setMoodString(pBandit4, "neutral") 
  local pBandit5 = spawnMobile("mustafar", "must_salvage_bandit_01",120,-6043,80.8,27.9,-116,0)
  self:setMoodString(pBandit5, "neutral")
  local pBandit6 = spawnMobile("mustafar", "must_salvage_bandit_01",120,-6059,81.5,18.9,37,0)
  self:setMoodString(pBandit6, "neutral")
  local pBandit7 = spawnMobile("mustafar", "must_salvage_bandit_01",120,-6036.4,79.7,8.6,-120,0)
  self:setMoodString(pBandit7, "neutral")
  local pBandit8 = spawnMobile("mustafar", "must_salvage_bandit_01",120,-6049.2,80.1,-1.3,42,0)
  self:setMoodString(pBandit8, "neutral")
  local pBandit9 = spawnMobile("mustafar", "must_salvage_bandit_01",120,-6022.1,83.5,-12.4,-45,0)
  self:setMoodString(pBandit9, "neutral")
  local pBandit10 = spawnMobile("mustafar", "must_salvage_bandit_01",120,-6028.6,83.4,-17.7,-13,0)
  self:setMoodString(pBandit10, "neutral")
  local pBandit11 = spawnMobile("mustafar", "must_salvage_bandit_01",120,-6007,82.2,-49.7,142,0)
  self:setMoodString(pBandit11, "neutral")
  local pBandit12 = spawnMobile("mustafar", "must_salvage_bandit_01",120,-5998.9,81.6,-46.2,140,0)
  self:setMoodString(pBandit12, "neutral")
  local pBossUruli = spawnMobile("mustafar", "boss_uruli",600,-6009,89.5,-73.0,8,0)
  self:setMoodString(pBossUruli, "neutral")
end
