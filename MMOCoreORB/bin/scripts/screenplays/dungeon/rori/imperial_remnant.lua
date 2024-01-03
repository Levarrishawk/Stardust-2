imperial_remnantScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "rori",
}
registerScreenPlay("imperial_remnantScreenplay", true)

function imperial_remnantScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
	end
end


function imperial_remnantScreenplay:spawnMobiles()
		local pBoss = spawnMobile("rori", "captain_zahn", -1, -5326.2, 83.0, 5013.8, 134, 18500002)
		local creature = CreatureObject(pBoss)
		createObserver(DAMAGERECEIVED, "imperial_remnantScreenplay", "npcDamageObserver", pBoss)    
		createObserver(OBJECTDESTRUCTION, "imperial_remnantScreenplay", "bossDead", pBoss)
		AiAgent(pBoss):addCreatureFlag(AI_STATIONARY)
end

function imperial_remnantScreenplay:npcDamageObserver(bossObject, playerObject, damage)

	local player = LuaCreatureObject(playerObject)
	local boss = LuaCreatureObject(bossObject)
	
	health = boss:getHAM(0)
	action = boss:getHAM(3)
	mind = boss:getHAM(6)
	
	maxHealth = boss:getMaxHAM(0)
	maxAction = boss:getMaxHAM(3)
	maxMind = boss:getMaxHAM(6)

	if (((health <= (maxHealth * 0.9))) and readData("imperial_remnantScreenplay:spawnState") == 0) then
      		spatialChat(bossObject, "I think you'll find I won't bow so easily. Choke now.")
			writeData("imperial_remnantScreenplay:spawnState",1)
			createEvent(0 * 1000, "imperial_remnantScreenplay", "poisonbomb", playerObject, "")
 			createEvent(5 * 1000, "imperial_remnantScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "imperial_remnantScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "imperial_remnantScreenplay", "poisonbomb", playerObject, "")
			createEvent(20 * 1000, "imperial_remnantScreenplay", "poisonbomb", playerObject, "")       
      		CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
	end

	if (((health <= (maxHealth * 0.7))) and readData("imperial_remnantScreenplay:spawnState") == 1) then
      		writeData("imperial_remnantScreenplay:spawnState",2)
			createEvent(0 * 1000, "imperial_remnantScreenplay", "poisonbomb", playerObject, "")
 			createEvent(5 * 1000, "imperial_remnantScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "imperial_remnantScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "imperial_remnantScreenplay", "poisonbomb", playerObject, "")
			createEvent(20 * 1000, "imperial_remnantScreenplay", "poisonbomb", playerObject, "")        
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Gas encroaches the area.")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
	end

	if (((health <= (maxHealth * 0.5))) and readData("imperial_remnantScreenplay:spawnState") == 2) then
      		spatialChat(bossObject, "Darktroopers! Kill this scum!")
			writeData("imperial_remnantScreenplay:spawnState",3)
			createEvent(0 * 1000, "imperial_remnantScreenplay", "poisonbomb_mid", playerObject, "")
 			createEvent(5 * 1000, "imperial_remnantScreenplay", "poisonbomb_mid", playerObject, "")
			createEvent(10 * 1000, "imperial_remnantScreenplay", "poisonbomb_mid", playerObject, "")
			createEvent(15 * 1000, "imperial_remnantScreenplay", "poisonbomb_mid", playerObject, "")
			createEvent(20 * 1000, "imperial_remnantScreenplay", "poisonbomb_mid", playerObject, "")     
			self:spawnSupport(playerObject)
      		CreatureObject(playerObject):sendSystemMessage("The gas is becoming more toxic.")
      		CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
	end

	if (((health <= (maxHealth * 0.3))) and readData("imperial_remnantScreenplay:spawnState") == 3) then
      		writeData("imperial_remnantScreenplay:spawnState",4)
			createEvent(0 * 1000, "imperial_remnantScreenplay", "poisonbomb_last", playerObject, "")
			createEvent(5 * 1000, "imperial_remnantScreenplay", "poisonbomb_last", playerObject, "")
			createEvent(10 * 1000, "imperial_remnantScreenplay", "poisonbomb_last", playerObject, "")
			createEvent(15 * 1000, "imperial_remnantScreenplay", "poisonbomb_last", playerObject, "")
			createEvent(20 * 1000, "imperial_remnantScreenplay", "poisonbomb_last", playerObject, "")      
			self:spawnSupport(playerObject)
      		CreatureObject(playerObject):sendSystemMessage("You struggle to breathe.")
      		CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
	end

	if (((health <= (maxHealth * 0.1))) and readData("imperial_remnantScreenplay:spawnState") == 4) then
				spatialChat(bossObject, "If I'm going to die.. you're coming with me, scum..")
      			writeData("imperial_remnantScreenplay:spawnState",5)
				createEvent(0 * 1000, "imperial_remnantScreenplay", "finisher", playerObject, "")  
				CreatureObject(playerObject):sendSystemMessage("An Imperial Detonator rolls out of Captain Zahn's hand and falls to the floor.")			
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
		end
	return 0

end

function imperial_remnantScreenplay:poisonbomb(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
			local pMember = CreatureObject(playerObject):getGroupMember(i)
			if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
			local trapDmg = getRandomNumber(400, 500)
			CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
      		CreatureObject(playerObject):playEffect("clienteffect/item_gas_leak_trap_on.cef", "")
		end
	end
else
	local trapDmg = getRandomNumber(400, 500)
		CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
      	CreatureObject(playerObject):playEffect("clienteffect/item_gas_leak_trap_on.cef", "")
	end
end

function imperial_remnantScreenplay:poisonbomb_mid(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
			local pMember = CreatureObject(playerObject):getGroupMember(i)
			if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
			local trapDmg = getRandomNumber(600, 700)
			CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
      		CreatureObject(playerObject):playEffect("clienteffect/item_gas_leak_trap_on.cef", "")
		end
	end
else
	local trapDmg = getRandomNumber(600, 700)
		CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
      	CreatureObject(playerObject):playEffect("clienteffect/item_gas_leak_trap_on.cef", "")
	end
end

function imperial_remnantScreenplay:poisonbomb_last(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
			local pMember = CreatureObject(playerObject):getGroupMember(i)
			if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
			local trapDmg = getRandomNumber(700, 900)
			CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
      		CreatureObject(playerObject):playEffect("clienteffect/item_gas_leak_trap_on.cef", "")
		end
	end
else
	local trapDmg = getRandomNumber(700, 900)
		CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
      	CreatureObject(playerObject):playEffect("clienteffect/item_gas_leak_trap_on.cef", "")
	end
end


function imperial_remnantScreenplay:finisher(playerObject)
	local trapDmg = getRandomNumber(2800, 4000)
		CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
      	CreatureObject(playerObject):playEffect("clienteffect/item_gas_leak_trap_on.cef", "")
end

function imperial_remnantScreenplay:spawnSupport(bossObject, playerObject)
	local boss = LuaCreatureObject(bossObject)
	local bossX = boss:getPositionX()
	local bossY = boss:getPositionY()
	local bossZ = boss:getPositionZ()
	local cell = boss:getParentID()
	
	local pGuard1 = spawnMobile("rori", "imperial_remnant_darktrooper", -1, bossX, bossZ, bossY, 93, cell) 
		CreatureObject(pGuard1):engageCombat(playerObject)
		spatialChat(pGuard1, "Engaging hostiles.")
	local pGuard2 = spawnMobile("rori", "imperial_remnant_darktrooper", -1, bossX, bossZ, bossY, 141, cell) 
		CreatureObject(pGuard2):engageCombat(playerObject)
	local pGuard3 = spawnMobile("rori", "imperial_remnant_darktrooper", -1, bossX, bossZ, bossY, 173, cell) 
		CreatureObject(pGuard3):engageCombat(playerObject)
	local pGuard4 = spawnMobile("rori", "imperial_remnant_darktrooper", -1, bossX, bossZ, bossY, 173, cell) 
		CreatureObject(pGuard4):engageCombat(playerObject)

end  

function imperial_remnantScreenplay:bossDead(pBoss)
	local creature = CreatureObject(pBoss)
	local respawn = math.random(7200,10800)
	createEvent(120 * 1000, "imperial_remnantScreenplay", "KillBoss", pBoss, "") -- Corpse Despawn
	createEvent(respawn * 1000, "imperial_remnantScreenplay", "KillSpawn", pBoss, "") -- Respawn
	return 0
end

function imperial_remnantScreenplay:KillSpawn()
		local pBoss = spawnMobile("rori", "captain_zahn", -1, -5326.2, 83.0, 5013.8, 134, 18500002)
		createObserver(DAMAGERECEIVED, "imperial_remnantScreenplay", "npcDamageObserver", pBoss)
		createObserver(OBJECTDESTRUCTION, "imperial_remnantScreenplay", "bossDead", pBoss)
end

function imperial_remnantScreenplay:KillBoss(pBoss)
      	writeData("imperial_remnantScreenplay:spawnState",0)  
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
