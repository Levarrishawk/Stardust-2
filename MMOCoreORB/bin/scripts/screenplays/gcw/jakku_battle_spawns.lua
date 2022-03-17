local ObjectManager = require("managers.object.object_manager")

JakkuBattleScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	turrets = {}, 

}

registerScreenPlay("JakkuBattleScreenPlay", true)

function JakkuBattleScreenPlay:start()
	if (isZoneEnabled("jakku")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function JakkuBattleScreenPlay:spawnSceneObjects()
  for i = 1, 6, 1 do
    local turretData = self.turrets[i]
    local pTurret = spawnSceneObject("jakku", turretData.template, turretData.x, turretData.z, turretData.y, 0, 0.707107, 0, 0.707107, 0)

    if pTurret ~= nil then
      local turret = TangibleObject(pTurret)
      turret:setFaction(FACTIONREBEL)
      turret:setPvpStatusBitmask(1)
    end

    writeData(SceneObject(pTurret):getObjectID() .. ":rebel_hideout:turret_index", i)
    createObserver(OBJECTDESTRUCTION, "JakkuBattleScreenPlay", "notifyTurretDestroyed", pTurret)
  end
  
end

function JakkuBattleScreenPlay:notifyTurretDestroyed(pTurret, pPlayer)
  ObjectManager.withSceneObject(pTurret, function(turret)
    local turretData = self.turrets[readData(turret:getObjectID() .. ":rebel_hideout:turret_index")]
    turret:destroyObjectFromWorld()
    createEvent(1800000, "JakkuBattleScreenPlay", "respawnTurret", pTurret, "")
  end)
  CreatureObject(pPlayer):clearCombatState(1)
  return 0
end

function JakkuBattleScreenPlay:respawnTurret(pTurret)
  if pTurret == nil then return end

  TangibleObject(pTurret):setConditionDamage(0, false)
  local turretData = self.turrets[readData(SceneObject(pTurret):getObjectID() .. ":rebel_hideout:turret_index")]
  local pZone = getZoneByName("jakku")

  if pZone == nil then return end

  SceneObject(pZone):transferObject(pTurret, -1, true)
end

function JakkuBattleScreenPlay:spawnMobiles()
--gladiator arena
  spawnMobile("jakku", "punishment_acklay", 1, 4454, 7.0, -5171, -84, 0)
  
--  START:  PvP Zone
  -- Republic Encampment (exterior)
  
  
  local pMobile = spawnMobile("jakku", "at_xt", 60, -5763, 45, 5505, -116, 0)
        self:setMoodString(pMobile, "neutral")
        AiAgent(pMobile):setAiTemplate("idlewander")
        
  pMobile = spawnMobile("jakku", "at_xt", 60, -5764, 56, 5606, -40, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5755, 52, 5552, -60, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5790, 56, 5535, -40, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5750, 50, 5531, -60, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5709, 46, 5531, -43, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5725, 47, 5508, -54, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5715, 47, 5622, 13, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5660, 42, 5579, 39, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5591, 39.5, 5540, 24, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5746, 48.8, 5394, -95, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5827.6, 54.4, 5493.1, -88, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  spawnMobile("jakku", "fbase_rebel_heavy_trooper_extreme", 60, -5709.5, 48, 5503, -42, 0)
  spawnMobile("jakku", "fbase_rebel_heavy_trooper_extreme", 60, -5705, 48, 5507, -42, 0)
  spawnMobile("jakku", "fbase_rebel_commando_hard", 60, -5783, 58, 5549, -64, 0)
  
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5826, 56.3, 5501, -50, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5800, 55.8, 5530, -50, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5787.7, 54.7, 5544.8, -65, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5791.2, 55, 5555.6, -65, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5778, 56, 5567.7, -78, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5769, 56, 5588.5, -73, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5748.6, 54.1, 5621.7, -11, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5729.5, 50.1, 5625.1, 20, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5703.8, 45.2, 5615.5, 24, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5671.9, 42.3, 5593.6, 27, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5644.3, 41.3, 5567.9, 29, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5606.3, 39.3, 5557.3, 39, 0)
  
   -- Imperial Encampment (exterior) 
   
  pMobile = spawnMobile("jakku", "at_at_pvp", 300, -5928.6, 41.9, 6110.3, -177, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_at_pvp", 300, -6051.5, 38.1, 6118.2, -172, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_at_pvp", 300, -5990.3, 36.0, 6189.2, -172, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_st", 60, -6177.5, 54.5, 6134.8, -136, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_st", 60, -6154.6, 52.1, 6094.1, -136, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_st", 60, -6115.1, 53.3, 6047.7, -156, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_st", 60, -6057.8, 54.6, 6008.1, -154, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_st", 60, -5990.7, 50.4, 5984.9, 172, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_st", 60, -5917.2, 53.6, 5988.7, 158, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_st", 60, -5848.6, 54.7, 6020.6, 141, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_st", 60, -5792.2, 52.5, 6087.9, 111, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -6044, 56.6, 6013, -150, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -6065, 56.4, 6022, -152, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -6003.4, 55.6, 5999, -154, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5994.4, 56.1, 5996.4, 177, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5984.7, 56.7, 5999.4, 159, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5974.3, 56.1, 5999.5, 176, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5931.7, 56.5, 6002.0, 173, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5918.5, 55.9, 6001.7, 143, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5906, 54.4, 6007.1, 150, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5871.1, 53.4, 6024, 160, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5861.3, 55, 6027.6, 140, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5848.2, 52.9, 6035.9, 119, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5817.9, 56.0, 6076.8, 131, 0)
  
  spawnMobile("jakku", "fbase_stormtrooper_extreme", 60, -5994.4, 35.7, 6135.6, 2, 0)
  spawnMobile("jakku", "fbase_stormtrooper_extreme", 60, -5988.7, 35.8, 6135.6, 2, 0)
  
 -- Front Lines (npc)
    --imperial lines
    
  spawnMobile("jakku", "at_st", 120, -5913.8, 30.4, 5851.2, 149, 0)
    
  spawnMobile("jakku", "stormtrooper", 45, -5913.8, 30.4, 5851.2, 159, 0) 
  spawnMobile("jakku", "stormtrooper", 45, -5917.1, 30.4, 5849.5, 147, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5909.5, 30.0, 5851.7, 150, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5920.6, 30.4, 5847.6, 145, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5905.5, 29.7, 5852.8, 169, 0)
  
  spawnMobile("jakku", "at_st", 120, -5969.4, 27.5, 5834.8, 143, 0)
  
  spawnMobile("jakku", "at_st", 300, -5936.2, 27.6, 5840.1, 164, 0)
  
  spawnMobile("jakku", "stormtrooper", 45, -5818.4, 40.9, 5853.9, -140, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5823.8, 40.4, 5858.2, -136, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5828.4, 40.1, 5862.4, -135, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5831.8, 40.0, 5866.5, -138, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5837.9, 40.0, 5874.1, -128, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5845.5, 39.6, 5880.7, -142, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5834.8, 39.9, 5870.0, -124, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5813.4, 41.3, 5851.0, -139, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5808.0, 42.2, 5849.7, -138, 0)
  
  spawnMobile("jakku", "at_at_pvp", 300, -5951.6, 34.3, 5572.9, 154, 0)
  
  spawnMobile("jakku", "storm_commando", 45, -5946.0, 34.1, 5577.8, 162, 0)
  spawnMobile("jakku", "storm_commando", 45, -5948.2, 34.2, 5575.5, 162, 0)
  spawnMobile("jakku", "storm_commando", 45, -5965.1, 33.6, 5571.5, 138, 0)
  spawnMobile("jakku", "storm_commando", 45, -5971.1, 34.2, 5569.6, 130, 0)
  
  spawnMobile("jakku", "at_st", 120, -6063.9, 25.6, 5732.1, 153, 0)
  
  spawnMobile("jakku", "storm_commando", 45, -6067.5, 26, 5730.3, 160, 0)
  spawnMobile("jakku", "storm_commando", 45, -6068.7, 26.1, 5729.5, 161, 0)
  spawnMobile("jakku", "storm_commando", 45, -6058.4, 25.1, 5733.1, 138, 0)
  spawnMobile("jakku", "storm_commando", 45, -6055.6, 24.8, 5734.0, 130, 0)
  
  spawnMobile("jakku", "stormtrooper", 45, -6109.4, 23.6, 5809.6, -169, 0)
  spawnMobile("jakku", "stormtrooper", 45, -6112.4, 23.8, 5809.7, -169, 0)
  spawnMobile("jakku", "stormtrooper", 45, -6114.5, 23.9, 5810.1, -169, 0)
  spawnMobile("jakku", "stormtrooper", 45, -6117.7, 24.0, 5811.3, -169, 0)
  spawnMobile("jakku", "stormtrooper", 45, -6121.1, 24.1, 5812.5, -169, 0)
  spawnMobile("jakku", "stormtrooper", 45, -6123.8, 24.3, 5813.5, -169, 0)
  spawnMobile("jakku", "stormtrooper", 45, -6127.7, 24.7, 5814.8, -169, 0)
  
  spawnMobile("jakku", "at_st", 120, -6030.9, 36.0, 5906.8, 150, 0)
  
    -- republic lines
    
  spawnMobile("jakku", "at_xt", 120, -5905, 29.6, 5829.3, -9, 0)
  spawnMobile("jakku", "at_xt", 120, -5935, 25.4, 5820.3, -19, 0)
  spawnMobile("jakku", "at_xt", 120, -5928, 25.5, 5821.3, -38, 0)
    
  spawnMobile("jakku", "rebel_trooper", 45, -5905, 29.6, 5829.3, -31, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5908.0, 29.2, 5828.0, -22, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5902.0, 29.0, 5831.0, -14, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5899.2, 28.4, 5833.5, -33, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5912.2, 27.8, 5825.6, -27, 0)
  
  spawnMobile("jakku", "rebel_commando", 35, -5958.0, 26.6, 5819.1, -27, 0)
  spawnMobile("jakku", "rebel_commando", 35, -5954.0, 26.3, 5822.1, -27, 0)
  spawnMobile("jakku", "rebel_commando", 35, -5954.0, 26.2, 5819.6, -13, 0)
  spawnMobile("jakku", "rebel_commando", 35, -5953.0, 26.5, 5829.6, -13, 0)
  spawnMobile("jakku", "rebel_commando", 35, -5967.0, 26.0, 5820.6, -23, 0)
  spawnMobile("jakku", "rebel_commando", 35, -5972.0, 25.6, 5821.2, -13, 0)
  spawnMobile("jakku", "rebel_commando", 35, -5964.5, 25.8, 5816.8, -37, 0)
  spawnMobile("jakku", "rebel_commando", 35, -5949.0, 26.0, 5820.9, -38, 0)
  
  spawnMobile("jakku", "rebel_trooper", 45, -5818.1, 35.4, 5832.0, 36, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5824.7, 34.6, 5837.0, 36, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5829.0, 34.5, 5842.0, 44, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5834.0, 33.8, 5845.0, 41, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5838.2, 34.0, 5849.7, 44, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5842.0, 34.5, 5852.0, 44, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5849.0, 33.1, 5857.7, 44, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5857.0, 33.2, 5863.9, 44, 0)
  
  spawnMobile("jakku", "at_xt", 120, -5955, 44.6, 5546.8, -33, 0)
  spawnMobile("jakku", "at_xt", 120, -5938, 42.2, 5557.3, -25, 0)
  
  spawnMobile("jakku", "rebel_commando", 35, -5949.1, 43.4, 5552.4, -38, 0)  
  spawnMobile("jakku", "rebel_commando", 35, -5944.4, 42.9, 5554.9, -15, 0)
  spawnMobile("jakku", "rebel_commando", 35, -5937.7, 42.3, 5558.1, -27, 0)

  spawnMobile("jakku", "at_xt", 120, -6056.7, 26.4, 5714.2, -21, 0)
  spawnMobile("jakku", "rebel_commando", 35, -6050.1, 26.3, 5715.0, -11, 0)
  spawnMobile("jakku", "rebel_commando", 35, -6052.0, 26.1, 5715.8, -11, 0)
  spawnMobile("jakku", "rebel_commando", 35, -6062.0, 26.5, 5714.5, -11, 0)
  spawnMobile("jakku", "rebel_commando", 35, -6064.0, 26.1, 5714.8, -11, 0)
  
  spawnMobile("jakku", "rebel_commando", 45, -6132.5, 29.3, 5800.0, 2, 0)
  spawnMobile("jakku", "rebel_commando", 45, -6129.2, 28.9, 5798.9, 12, 0)
  spawnMobile("jakku", "rebel_commando", 45, -6125.9, 28.9, 5797.5, 10, 0)
  spawnMobile("jakku", "rebel_commando", 45, -6123.0, 28.8, 5796.2, 12, 0)
  spawnMobile("jakku", "rebel_commando", 45, -6120.4, 28.8, 5794.2, 12, 0)
  spawnMobile("jakku", "rebel_commando", 45, -6117.2, 28.6, 5791.9, 12, 0)
  spawnMobile("jakku", "rebel_commando", 45, -6113.5, 28.2, 5790.4, 12, 0)
  
  spawnMobile("jakku", "rebel_commando", 35, -6031.0, 27.7, 5886.4, -11, 0)
  spawnMobile("jakku", "rebel_commando", 35, -6029.0, 27.7, 5887.0, -11, 0)
  spawnMobile("jakku", "rebel_commando", 35, -6027.0, 27.7, 5888.4, -11, 0)
  spawnMobile("jakku", "rebel_commando", 35, -6025.0, 27.7, 5889.0, -11, 0)
  spawnMobile("jakku", "rebel_commando", 35, -6023.0, 27.7, 5890.4, -11, 0)
  
  -- Republic Bunker Interior
  
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 600, -3.8, 0.3, 3.5, 172, 610000092)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 600, -3.9, 0.3, -4.5, 1, 610000092)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 600, 4.0, 0.3, -4.2, -133, 610000093)
  spawnMobile("jakku", "fbase_rebel_soldier_extreme", 600, -4.7, -6.8, 4.8, 90, 610000094)
  spawnMobile("jakku", "fbase_rebel_soldier_extreme", 600, 3.2, -13.8, 0.8, 133, 610000096)
  spawnMobile("jakku", "fbase_rebel_grenadier_hard", 600, 4.8, -13.8, 8.3, -109, 610000097)
  spawnMobile("jakku", "fbase_rebel_soldier_extreme", 600, -1.9, -13.8, 5.7, -4, 610000097)
  spawnMobile("jakku", "fbase_rebel_grenadier_hard", 600, -8.7, -13.8, 7.0, 94, 610000097)
  spawnMobile("jakku", "fbase_rebel_heavy_trooper_hard", 600, -1.1, -20.7, 4.7, 77, 610000099)
  spawnMobile("jakku", "fbase_rebel_heavy_trooper_hard", 600, 2.9, -20.7, 8.5, -140, 610000099)
  spawnMobile("jakku", "fbase_rebel_heavy_trooper_hard", 600, -0.2, -20.7, 8.7, 131, 610000099)
  spawnMobile("jakku", "rebel_rear_admiral", 300, 1.5, -20.8, 32.6, 180, 610000100)
  
  -- Imperial Bunker Interior
  
  spawnMobile("jakku", "fbase_dark_trooper_hard", 600, -3.7, 0.3, -0.7, 2, 610000103)
  spawnMobile("jakku", "fbase_dark_trooper_hard", 600, -0.4, 0.3, -4.0, -94, 610000104)
  spawnMobile("jakku", "fbase_dark_trooper_hard", 600, 3.7, 0.3, -4.0, -94, 610000104)
  spawnMobile("jakku", "fbase_dark_trooper_extreme", 600, -4.8, -6.8, 4.6, 94, 610000105)
  spawnMobile("jakku", "fbase_dark_trooper_extreme", 600, 3.2, -13.8, -2.5, 179, 610000106)
  spawnMobile("jakku", "fbase_stormtrooper_captain_extreme", 60, 6.4, -13.8, 7.4, -94, 610000108)
  spawnMobile("jakku", "fbase_storm_commando_hard", 600, -1.4, -13.8, 6.0, 175, 610000108)
  spawnMobile("jakku", "fbase_storm_commando_hard", 600, -8.9, -13.8, 7.9, 92, 610000108)
  spawnMobile("jakku", "fbase_stormtrooper_medic_hard", 600, 4.0, -20.7, 6.0, 101, 610000110)
  spawnMobile("jakku", "fbase_stormtrooper_medic_hard", 600, 1.2, -20.7, 5.7, -128, 610000110)
  spawnMobile("jakku", "fbase_stormtrooper_medic_hard", 600, 1.6, -20.7, 10.3, 171, 610000110)
  spawnMobile("jakku", "elite_novatrooper_commander", 300, 1.5, -20.8, 32.6, 180, 610000111)
  
end

