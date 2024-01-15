kimo_matriarchScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "lok",
}
registerScreenPlay("kimo_matriarchScreenplay", true)

function kimo_matriarchScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
	end
end


function kimo_matriarchScreenplay:spawnMobiles()
		local pBoss = spawnMobile("lok", "kimogila_matriarch", -1, 5995.7, 64.2, 6143.4, 166, 19500000)
		local creature = CreatureObject(pBoss)
		createObserver(DAMAGERECEIVED, "kimo_matriarchScreenplay", "npcDamageObserver", pBoss)    
		createObserver(OBJECTDESTRUCTION, "kimo_matriarchScreenplay", "bossDead", pBoss)
end

function kimo_matriarchScreenplay:npcDamageObserver(bossObject, playerObject, damage)

	local player = LuaCreatureObject(playerObject)
	local boss = LuaCreatureObject(bossObject)
	
	health = boss:getHAM(0)
	action = boss:getHAM(3)
	mind = boss:getHAM(6)
	
	maxHealth = boss:getMaxHAM(0)
	maxAction = boss:getMaxHAM(3)
	maxMind = boss:getMaxHAM(6)

	if (((health <= (maxHealth * 0.9))) and readData("kimo_matriarchScreenplay:spawnState") == 0) then
			writeData("kimo_matriarchScreenplay:spawnState",1)
			createEvent(0 * 1000, "kimo_matriarchScreenplay", "acidspit", playerObject, "")
 			createEvent(5 * 1000, "kimo_matriarchScreenplay", "acidspit", playerObject, "")
			createEvent(10 * 1000, "kimo_matriarchScreenplay", "acidspit", playerObject, "")
			createEvent(15 * 1000, "kimo_matriarchScreenplay", "acidspit_mid", playerObject, "")
			createEvent(20 * 1000, "kimo_matriarchScreenplay", "acidspit_mid", playerObject, "")
			CreatureObject(playerObject):sendSystemMessage("The Matriarch spits a blob of Acid, drenching you in the foul substance.")			
      		CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
	end

	if (((health <= (maxHealth * 0.7))) and readData("kimo_matriarchScreenplay:spawnState") == 1) then
      		writeData("kimo_matriarchScreenplay:spawnState",2)
			createEvent(0 * 1000, "kimo_matriarchScreenplay", "acidspit", playerObject, "")
 			createEvent(5 * 1000, "kimo_matriarchScreenplay", "acidspit", playerObject, "")
			createEvent(10 * 1000, "kimo_matriarchScreenplay", "acidspit_mid", playerObject, "")
			createEvent(15 * 1000, "kimo_matriarchScreenplay", "acidspit_mid", playerObject, "")
			createEvent(20 * 1000, "kimo_matriarchScreenplay", "acidspit_mid", playerObject, "")        
      			CreatureObject(playerObject):sendSystemMessage("You feel the acid wearing down your defenses..")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
	end

	if (((health <= (maxHealth * 0.5))) and readData("kimo_matriarchScreenplay:spawnState") == 2) then
			writeData("kimo_matriarchScreenplay:spawnState",3)
			createEvent(0 * 1000, "kimo_matriarchScreenplay", "acidspit_mid", playerObject, "")
 			createEvent(5 * 1000, "kimo_matriarchScreenplay", "acidspit_mid", playerObject, "")
			createEvent(10 * 1000, "kimo_matriarchScreenplay", "acidspit_mid", playerObject, "")
			createEvent(15 * 1000, "kimo_matriarchScreenplay", "earthquake", playerObject, "")
			createEvent(20 * 1000, "kimo_matriarchScreenplay", "earthquake", playerObject, "")     
      		CreatureObject(playerObject):sendSystemMessage("The Matriarch raises up on her hind legs and slams into the ground causing a huge shockwave.")
      		CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
	end

	if (((health <= (maxHealth * 0.3))) and readData("kimo_matriarchScreenplay:spawnState") == 3) then
      		writeData("kimo_matriarchScreenplay:spawnState",4)
			createEvent(0 * 1000, "kimo_matriarchScreenplay", "earthquake", playerObject, "")
			createEvent(5 * 1000, "kimo_matriarchScreenplay", "earthquake", playerObject, "")
			createEvent(10 * 1000, "kimo_matriarchScreenplay", "rend", playerObject, "")
			createEvent(15 * 1000, "kimo_matriarchScreenplay", "earthquake", playerObject, "")
			createEvent(20 * 1000, "kimo_matriarchScreenplay", "earthquake", playerObject, "")      
      		CreatureObject(playerObject):sendSystemMessage("The ground shakes violently as you see a huge claw heading towards you.")
      		CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
	end

	if (((health <= (maxHealth * 0.1))) and readData("kimo_matriarchScreenplay:spawnState") == 4) then
				CreatureObject(playerObject):sendSystemMessage("The Matriarch swipes at you with her razor sharp claws in a last ditch attempt to kill you.")
      			writeData("kimo_matriarchScreenplay:spawnState",5)
				createEvent(0 * 1000, "kimo_matriarchScreenplay", "rend", playerObject, "")  			
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
		end
	return 0

end

function kimo_matriarchScreenplay:acidspit(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
			local pMember = CreatureObject(playerObject):getGroupMember(i)
			if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
			local trapDmg = getRandomNumber(500, 600)
			CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
		end
	end
else
	local trapDmg = getRandomNumber(500, 600)
		CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
	end
end

function kimo_matriarchScreenplay:acidspit_mid(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
			local pMember = CreatureObject(playerObject):getGroupMember(i)
			if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
			local trapDmg = getRandomNumber(600, 700)
			CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
		end
	end
else
	local trapDmg = getRandomNumber(600, 700)
		CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
	end
end

function kimo_matriarchScreenplay:earthquake(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
			local pMember = CreatureObject(playerObject):getGroupMember(i)
			if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
			local trapDmg = getRandomNumber(1000, 1100)
			CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
		end
	end
else
	local trapDmg = getRandomNumber(1000, 1100)
		CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
	end
end


function kimo_matriarchScreenplay:rend(playerObject)
	local trapDmg = getRandomNumber(2800, 4000)
		CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
end

function kimo_matriarchScreenplay:bossDead(pBoss)
	local creature = CreatureObject(pBoss)
	local respawn = math.random(7200,10800)
	createEvent(120 * 1000, "kimo_matriarchScreenplay", "KillBoss", pBoss, "") -- Corpse Despawn
	createEvent(respawn * 1000, "kimo_matriarchScreenplay", "KillSpawn", pBoss, "") -- Respawn
	return 0
end

function kimo_matriarchScreenplay:KillSpawn()
		local pBoss = spawnMobile("lok", "kimogila_matriarch", -1, 5995.7, 64.2, 6143.4, 166, 19500000)
		createObserver(DAMAGERECEIVED, "kimo_matriarchScreenplay", "npcDamageObserver", pBoss)
		createObserver(OBJECTDESTRUCTION, "kimo_matriarchScreenplay", "bossDead", pBoss)
end

function kimo_matriarchScreenplay:KillBoss(pBoss)
      	writeData("kimo_matriarchScreenplay:spawnState",0)  
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
