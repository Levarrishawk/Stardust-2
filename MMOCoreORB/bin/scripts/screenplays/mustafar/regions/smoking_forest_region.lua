local ObjectManager = require("managers.object.object_manager")


smoking_forest_region = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "smoking_forest_region"
}

registerScreenPlay("smoking_forest_region", true)

function smoking_forest_region:start()
  if (isZoneEnabled("mustafar")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
  end
end

function smoking_forest_region:spawnSceneObjects()
--Entry
--  spawnSceneObject("yavin4", "object/tangible/terminal/terminal_elysium_crystal_01.iff", -11.5, -19.3, 38.3, 8525439, math.rad(0) )
 

end

function smoking_forest_region:spawnMobiles()

-- Canyon Approach Phantom Bandits near Escape Pod

  local pMinerHens = spawnMobile("mustafar", "miner_hens",120,-5406.1,296.0,4429.8,29,0)
  self:setMoodString(pPhantom1, "neutral")
  local pForemanNurfa = spawnMobile("mustafar", "foreman_nurfa",120,-5396.5,296.0,4447.8,-163,0)
  self:setMoodString(pPhantom1, "neutral")
  
  -- Striking Miners
  local pStrikingMiner1 = spawnMobile("mustafar", "miner_on_strike",120,-5375.1,294,4439.8,-163,0)
  self:setMoodString(pStrikingMiner1, "idlewander")
  local pStrikingMiner2 = spawnMobile("mustafar", "miner_on_strike",120,-5362.1,294,4445.3,-163,0)
  self:setMoodString(pStrikingMiner2, "idlewander")
  local pStrikingMiner3 = spawnMobile("mustafar", "miner_on_strike",120,-5366.3,294,4464.7,-163,0)
  self:setMoodString(pStrikingMiner3, "idlewander")
  local pStrikingMiner4 = spawnMobile("mustafar", "miner_on_strike",120,-5390.11,296,4467.5,-87,0)
  self:setMoodString(pStrikingMiner4, "idlewander")
  local pStrikingMiner5 = spawnMobile("mustafar", "miner_on_strike",120,-5417.3,294,4461.9,-112,0)
  self:setMoodString(pStrikingMiner5, "idlewander")
  local pStrikingMiner6 = spawnMobile("mustafar", "miner_on_strike",120,-5375.1,294,4439.8,-163,0)
  self:setMoodString(pStrikingMiner6, "idlewander")
  local pStrikingMiner7 = spawnMobile("mustafar", "miner_foreman_on_strike",120,-5375.1,294,4439.8,-163,0)
  self:setMoodString(pStrikingMiner7, "idlewander")
  local pStrikingMiner8 = spawnMobile("mustafar", "miner_foreman_on_strike",120,-5295.31,316,4492.5,-163,0)
  self:setMoodString(pStrikingMiner8, "idlewander")
  local pStrikingMiner9 = spawnMobile("mustafar", "miner_on_strike",120,-5286,316,4478,-163,0)
  self:setMoodString(pStrikingMiner9, "idlewander")
  local pStrikingMiner9 = spawnMobile("mustafar", "miner_on_strike",120,-5276,316,4486,-163,0)
  self:setMoodString(pStrikingMiner9, "idlewander")

-- Blackguard Ruins
  -- Treasure Hunter Camp
  local pTreasure1 = spawnMobile("mustafar", "treasure_hunter_guard",120,-4439.7,83.0,3373.6,-38,0)
  self:setMoodString(pTreasure1, "neutral")
  local pTreasure2 = spawnMobile("mustafar", "treasure_hunter_protector",120,-4434.7,83.0,3374.0,-1,0)
  self:setMoodString(pTreasure2, "neutral")
  local pTreasure3 = spawnMobile("mustafar", "treasure_hunter_protector",120,-4451.1,83.0,3371.6,147,0)
  self:setMoodString(pTreasure3, "neutral") 
  local pLislot = spawnMobile("mustafar", "lislot_bloodscar",120,-4433.0,83.0,3377.5,173,0)
  self:setMoodString(pLislot, "neutral") 
  -- Main Treasure Hunter Camp
  local pTreasure4 = spawnMobile("mustafar", "treasure_hunter_merc",120,-4275.8,81.0,3353.5,119,0)
  self:setMoodString(pTreasure4, "idlewander") 
  local pTreasure5 = spawnMobile("mustafar", "treasure_hunter_merc",120,-4273.3,83.0,3335.8,157,0)
  self:setMoodString(pTreasure5, "idlewander") 
  local pTreasure6 = spawnMobile("mustafar", "treasure_hunter_merc",120,-4281.7,83.0,3337.8,-29,0)
  self:setMoodString(pTreasure6, "neutral")
  local pTreasure7 = spawnMobile("mustafar", "treasure_hunter_guard",120,-4251.4,83.0,3343.1,92,0)
  self:setMoodString(pTreasure7, "idlewander")
  local pTreasure8 = spawnMobile("mustafar", "treasure_hunter_guard",120,-4248.4,83.0,3336.1,92,0)
  self:setMoodString(pTreasure8, "idlewander")
  local pTreasure9 = spawnMobile("mustafar", "treasure_hunter_merc",120,-4248.8,83.3,3358.7,122,0)
  self:setMoodString(pTreasure9, "neutral") 
  local pTreasure9 = spawnMobile("mustafar", "treasure_hunter_merc",120,-4247.2,83.3,3360.6,122,0)
  self:setMoodString(pTreasure9, "neutral") 
  local pTreasure10 = spawnMobile("mustafar", "treasure_hunter_guard",120,-4230.5,83.3,3346.8,-63,0)
  self:setMoodString(pTreasure10, "neutral") 
  local pTreasure11 = spawnMobile("mustafar", "treasure_hunter_guard",120,-4229.1,83.3,3349.5,-63,0)
  self:setMoodString(pTreasure11, "neutral") 
  local pColNarl = spawnMobile("mustafar", "col_narl",120,-4221.8,83.3,3336.4,171,0)
  self:setMoodString(pColNarl, "neutral") 
  local pTreasure12 = spawnMobile("mustafar", "treasure_hunter_protector",120,-4218.0,83.3,3318.9,-68,0)
  self:setMoodString(pTreasure12, "neutral") 
  local pTreasure13 = spawnMobile("mustafar", "treasure_hunter_protector",120,-4218.9,83.3,3314.5,-32,0)
  self:setMoodString(pTreasure13, "neutral")
  local pTreasure14 = spawnMobile("mustafar", "treasure_hunter_merc",120,-4255.0,83.0,3314.1,-139,0)
  self:setMoodString(pTreasure14, "neutral")
  local pTreasure15 = spawnMobile("mustafar", "treasure_hunter_guard",120,-4258.4,81.0,3364.2,-154,0)
  self:setMoodString(pTreasure15, "neutral") 
  local pTreasure16 = spawnMobile("mustafar", "treasure_hunter_guard",120,-4272.2,81.0,3271.1,-141,0)
  self:setMoodString(pTreasure16, "neutral") 
  local pTreasure17 = spawnMobile("mustafar", "treasure_hunter_guard",120,-4486.8,82.8,3306.9,-178,0)
  self:setMoodString(pTreasure17, "neutral") 
  local pTreasure18 = spawnMobile("mustafar", "treasure_hunter_guard",120,-4472.3,83.0,3305.6,-167,0)
  self:setMoodString(pTreasure18, "neutral") 
  
  -- Blackguard Camp
  local pBlackguard1 = spawnMobile("mustafar", "blackguard",120,-4293.0,77.9,3216.7,12,0)
  self:setMoodString(pBlackguard1, "neutral") 
  local pBlackguard2 = spawnMobile("mustafar", "blackguard",120,-4314.9,77.9,3213.4,39,0)
  self:setMoodString(pBlackguard2, "neutral") 
  local pBlackguard3 = spawnMobile("mustafar", "blackguard",120,-4308.4,85.1,3173.8,-106,0)
  self:setMoodString(pBlackguard3, "neutral") 
  local pBlackguard4 = spawnMobile("mustafar", "blackguard",120,-4311.5,85.9,3168.4,-60,0)
  self:setMoodString(pBlackguard4, "neutral") 
  local pBlackguard5 = spawnMobile("mustafar", "blackguard",120,-4330.3,89.2,3156.4,-8,0)
  self:setMoodString(pBlackguard5, "neutral") 
  local pBlackguard6 = spawnMobile("mustafar", "blackguard_elite",120,-4351.8,89.2,3161.0,56,0)
  self:setMoodString(pBlackguard6, "neutral") 
  local pBlackguard7 = spawnMobile("mustafar", "blackguard_elite",120,-4365.5,91.2,3161.0,157,0)
  self:setMoodString(pBlackguard7, "neutral") 
  local pBlackguard8 = spawnMobile("mustafar", "blackguard_elite",120,-4384.6,91.9,3207.7,-176,0)
  self:setMoodString(pBlackguard8, "neutral") 
  
  local pKursk = spawnMobile("mustafar", "sansii",120,-4379.2,94.3,3231.6,-175,0)
  self:setMoodString(pKursk, "neutral") 
  
  local pBlackguard9 = spawnMobile("mustafar", "blackguard_elite",120,-4400.5,85.8,3162.1,66,0)
  self:setMoodString(pBlackguard9, "neutral") 
  
  local pVansk = spawnMobile("mustafar", "vansk_blackguard",120,-4411.8,85.1,3154.6,-13,0)
  self:setMoodString(pVansk, "neutral") 
  
  local pBlackguard10 = spawnMobile("mustafar", "blackguard_wilder",120,-4410.3,85.1,3162.7,21,0)
  self:setMoodString(pBlackguard10, "neutral") 
  local pBlackguard11 = spawnMobile("mustafar", "blackguard_wilder",120,-4419.0,85.1,3162.3,-4,0)
  self:setMoodString(pBlackguard11, "neutral") 
  local pBlackguard12 = spawnMobile("mustafar", "blackguard_wilder",120,-4424.8,85.4,3156.4,-60,0)
  self:setMoodString(pBlackguard12, "neutral")   
  local pBlackguard13 = spawnMobile("mustafar", "blackguard",120,-4429.0,83.1,3180.4,-8,0)
  self:setMoodString(pBlackguard13, "idlewander") 
  local pBlackguard14 = spawnMobile("mustafar", "blackguard",120,-4442.0,85.1,3176.7,44,0)
  self:setMoodString(pBlackguard14, "neutral")  
  local pBlackguard15 = spawnMobile("mustafar", "blackguard_elite",120,-4445.3,85.4,3180.8,1,0)
  self:setMoodString(pBlackguard15, "neutral") 
  local pBlackguard16 = spawnMobile("mustafar", "blackguard_elite",120,-4448.8,85.4,3181.3,1,0)
  self:setMoodString(pBlackguard16, "neutral") 
  local pBlackguard17 = spawnMobile("mustafar", "blackguard",120,-4447.2,85.4,3204.8,-177,0)
  self:setMoodString(pBlackguard17, "neutral") 
  local pBlackguard18 = spawnMobile("mustafar", "blackguard",120,-4415.5,83.3,3205.0,66,0)
  self:setMoodString(pBlackguard18, "idlewander") 
  local pBlackguard18 = spawnMobile("mustafar", "blackguard",120,-4407.4,82.6,3194.2,151,0)
  self:setMoodString(pBlackguard18, "idlewander") 
  
end
