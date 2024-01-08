tusken_king_bossScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "tatooine",
}
registerScreenPlay("tusken_king_bossScreenplay", true)

function tusken_king_bossScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
	end
end


function tusken_king_bossScreenplay:spawnMobiles()
		local pBoss = spawnMobile("tatooine", "tusken_king", -1, 37.2, 22.9, 19.7, 165, 1189182)
		local creature = CreatureObject(pBoss)
		createObserver(DAMAGERECEIVED, "tusken_king_bossScreenplay", "npcDamageObserver", pBoss)    
		createObserver(OBJECTDESTRUCTION, "tusken_king_bossScreenplay", "bossDead", pBoss)
end

function tusken_king_bossScreenplay:npcDamageObserver(bossObject, playerObject, damage)

	local player = LuaCreatureObject(playerObject)
	local boss = LuaCreatureObject(bossObject)
	
	health = boss:getHAM(0)
	action = boss:getHAM(3)
	mind = boss:getHAM(6)
	
	maxHealth = boss:getMaxHAM(0)
	maxAction = boss:getMaxHAM(3)
	maxMind = boss:getMaxHAM(6)

	if (((health <= (maxHealth * 0.9))) and readData("tusken_king_bossScreenplay:spawnState") == 0) then
      			writeData("tusken_king_bossScreenplay:spawnState",1)
			createEvent(0 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")
 			createEvent(5 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")
			createEvent(20 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")       
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
	end

	if (((health <= (maxHealth * 0.7))) and readData("tusken_king_bossScreenplay:spawnState") == 1) then
      			writeData("tusken_king_bossScreenplay:spawnState",2)
			createEvent(0 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")
 			createEvent(5 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")
			createEvent(20 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")        
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("You hear footsteps approaching!")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
	end

	if (((health <= (maxHealth * 0.5))) and readData("tusken_king_bossScreenplay:spawnState") == 2) then
      			writeData("tusken_king_bossScreenplay:spawnState",3)
			createEvent(0 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")
 			createEvent(5 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")
			createEvent(20 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")     
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("You hear more footsteps approaching!")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
	end

	if (((health <= (maxHealth * 0.3))) and readData("tusken_king_bossScreenplay:spawnState") == 3) then
      			writeData("tusken_king_bossScreenplay:spawnState",4)
			createEvent(0 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")
 			createEvent(5 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")
			createEvent(20 * 1000, "tusken_king_bossScreenplay", "poisonbomb", playerObject, "")      
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("More footsteps echo in the tunnels")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
	end

	if (((health <= (maxHealth * 0.1))) and readData("tusken_king_bossScreenplay:spawnState") == 4) then
      			writeData("tusken_king_bossScreenplay:spawnState",5)
			createEvent(0 * 1000, "tusken_king_bossScreenplay", "tuskenfinisher", playerObject, "")  
				CreatureObject(playerObject):sendSystemMessage("The Tusken King roars and swings his Gaffi stick in a last ditch attempt to kill you.")			
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
		end
	return 0

end

function tusken_king_bossScreenplay:poisonbomb(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
		local pMember = CreatureObject(playerObject):getGroupMember(i)
		if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
		local trapDmg = getRandomNumber(400, 500)
		CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
		end
	end
else
	local trapDmg = getRandomNumber(400, 500)
	CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
	end
end

function tusken_king_bossScreenplay:tuskenfinisher(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
		local pMember = CreatureObject(playerObject):getGroupMember(i)
		if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
		local trapDmg = getRandomNumber(2800, 4200)
		CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
		end
	end
else
	local trapDmg = getRandomNumber(2800, 4200)
	CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
	end
end

function tusken_king_bossScreenplay:spawnSupport(bossObject, playerObject)
	local boss = LuaCreatureObject(bossObject)
	local bossX = boss:getPositionX()
	local bossY = boss:getPositionY()
	local bossZ = boss:getPositionZ()
	local cell = boss:getParentID()
	
	local pGuard1 = spawnMobile("tatooine", "tusken_king_guard", -1, bossX, bossZ, bossY, -40, cell) 
	CreatureObject(pGuard1):engageCombat(playerObject)
	spatialChat(pGuard1, "*Angry Tusken Noises*")
    CreatureObject(pGuard1):playEffect("clienteffect/ui_missile_aquiring.cef", "")
	local pGuard2 = spawnMobile("tatooine", "tusken_king_guard", -1, bossX, bossZ, bossY, 176, cell) 
	CreatureObject(pGuard2):engageCombat(playerObject)
	local pGuard3 = spawnMobile("tatooine", "tusken_king_guard", -1, bossX, bossZ, bossY, 199, cell) 
	CreatureObject(pGuard3):engageCombat(playerObject)

end  

function tusken_king_bossScreenplay:bossDead(pBoss)
	local creature = CreatureObject(pBoss)
	local respawn = math.random(7200,10800)
	createEvent(120 * 1000, "tusken_king_bossScreenplay", "KillBoss", pBoss, "") -- Corpse Despawn
	createEvent(respawn * 1000, "tusken_king_bossScreenplay", "KillSpawn", pBoss, "") -- Respawn
	return 0
end

function tusken_king_bossScreenplay:KillSpawn()
		local pBoss = spawnMobile("tatooine", "tusken_king", -1, 37.2, 22.9, 19.7, 165, 1189182)
		createObserver(DAMAGERECEIVED, "tusken_king_bossScreenplay", "npcDamageObserver", pBoss)
		createObserver(OBJECTDESTRUCTION, "tusken_king_bossScreenplay", "bossDead", pBoss)
end

function tusken_king_bossScreenplay:KillBoss(pBoss)
      	writeData("tusken_king_bossScreenplay:spawnState",0)  
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
