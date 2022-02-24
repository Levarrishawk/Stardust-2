local ObjectManager = require("managers.object.object_manager")

mensix_mining_facility_main = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "mensix_mining_facility_main"
}

registerScreenPlay("mensix_mining_facility_main", true)

function mensix_mining_facility_main:start()
	if (isZoneEnabled("mustafar")) then
		writeData("mensix_mining_facility_main:travelerConvoInProgress", 0) 
		writeData("mensix_mining_facility_main:travelerConvoState", 0)   
		
		writeData("mensix_mining_facility_main:minerConvoInProgress", 0) 
    writeData("mensix_mining_facility_main:minerConvoState", 0)  
    
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:startMinerConvo()
		self:startTravelerConvo()
	end
end



function mensix_mining_facility_main:spawnSceneObjects()

	-- Stardust Specific Droid:  Remove for other servers.
  spawnSceneObject("mustafar", "object/tangible/terminal/terminal_event_buffs.iff", -83.7, 10.3, 122, 12112227, math.rad(173) )
  
 
end

function mensix_mining_facility_main:spawnMobiles()

    local pTraveler_m = spawnMobile("mustafar", "traveler_m",0,-2481,230.1,1633.7,-51,0)  -- -55.1,31.5,-120.3,-33,12112248  Original NGE Position (changed to outdoors due to spatialChat not working in cell)
      self:setMoodString(pTraveler_m, "npc_consoling")    
    local pTraveler_f = spawnMobile("mustafar", "traveler_f",0,-2483.1,230.1,1635.7,-90,0)  -- -56.7,31.5,-118.9,-90,12112248 Original NGE Position (changed to outdoors due to spatialChat not working in cell)
      self:setMoodString(pTraveler_f, "angry")    
      
     writeData("mensix_mining_facility_main:traveler_m_objectID", SceneObject(pTraveler_m):getObjectID() )
     writeData("mensix_mining_facility_main:traveler_f_objectID", SceneObject(pTraveler_f):getObjectID() )    
     
     local pMiner1 = spawnMobile("mustafar", "mustafarian_miner_02",0,-2384.0,210.2,1809.9,-35,0)
     local pMiner2 = spawnMobile("mustafar", "mustafarian_miner_01",0,-2384.3,210.2,1813.2,165,0)
     local pMiner3 = spawnMobile("mustafar", "mustafarian_miner_01",0,-2387.6,210.2,1812.2,123,0)
     
     writeData("mensix_mining_facility_main:pMiner1_objectID", SceneObject(pMiner1):getObjectID() )
     writeData("mensix_mining_facility_main:pMiner2_objectID", SceneObject(pMiner2):getObjectID() )
     writeData("mensix_mining_facility_main:pMiner3_objectID", SceneObject(pMiner3):getObjectID() )
     
     spawnMobile("mustafar", "junk_dealer_mustafar",0,-90,22.7,-47.8,23,12112245)
     
     
     -- Background NPCs
     local pMiner_b1 = spawnMobile("mustafar", "mustafarian_miner_01",0,-82.4,23.2,-35.5,-3,12112245)
     self:setMoodString(pMiner_b1, "npc_use_terminal_high")  
     local pMiner_b2 = spawnMobile("mustafar", "mustafarian_miner_01",0,-154.4,19.1,-66.4,-158,12112243)
     self:setMoodString(pMiner_b2, "npc_use_terminal_high") 
     local pMiner_b3 = spawnMobile("mustafar", "mustafarian_miner_01",0,-78.8,14.9,1.7,88,12112236)
     self:setMoodString(pMiner_b3, "npc_use_terminal_high")
     local pMiner_b4 = spawnMobile("mustafar", "mustafarian_miner_01",0,-88.3,10.8,49.4,28,12112226)
     self:setMoodString(pMiner_b4, "entertained")
     local pMiner_b5 = spawnMobile("mustafar", "mustafarian_miner_01",0,-86.8,10.8,41.9,113,12112226)
     self:setMoodString(pMiner_b5, "entertained")
     local pMiner_b6 = spawnMobile("mustafar", "mustafarian_miner_01",0,-80.6,10.8,42.2,179,12112226)
     self:setMoodString(pMiner_b6, "npc_accusing")
     local pMiner_b7 = spawnMobile("mustafar", "mustafarian_miner_01",0,-81.1,10.8,39.7,1,12112226)
     self:setMoodString(pMiner_b7, "npc_accusing")
     
     -- Quest Givers
     spawnMobile("mustafar", "pei_yi",0,-77.1,10.8,67.5,-138,12112226)
     spawnMobile("mustafar", "diskret_stahn",0,-75.4,10.8,66.3,-112,12112226)
     
   
end


function mensix_mining_facility_main:startTravelerConvo(pActiveArea1, pMovingObject, pPlayer, pTraveler_m, pTraveler_f)
  
   local pTraveler_f = getSceneObject(readData("mensix_mining_facility_main:traveler_f_objectID"))
   local pTraveler_m = getSceneObject(readData("mensix_mining_facility_main:traveler_m_objectID"))

   if not(readData("mensix_mining_facility_main:travelerConvoInProgress") == 1) then       
          writeData("mensix_mining_facility_main:travelerConvoInProgress", 1)
          createEvent(90 * 1000, "mensix_mining_facility_main", "touristConvoF1", pTraveler_f, "")
          createEvent(100 * 1000, "mensix_mining_facility_main", "touristConvoM1", pTraveler_m, "")
   else
      return 0
   end              
end






function mensix_mining_facility_main:touristConvoF1(pTraveler_f, pPlayer)
  
  local pTraveler_f = getSceneObject(readData("mensix_mining_facility_main:traveler_f_objectID"))
  
  if (readData("mensix_mining_facility_main:travelerConvoState") == 0) then
      spatialChat(pTraveler_f, "I cannot believe you took me to this flaming hunk of rock! What were you thinking? This world is a nightmare.")     
        writeData("mensix_mining_facility_main:travelerConvoState", 1)   
        createEvent(20 * 1000, "mensix_mining_facility_main", "touristConvoF2", pTraveler_f, "")  
  end
end

function mensix_mining_facility_main:touristConvoM1(pTraveler_m, pPlayer)
  
  local pTraveler_m = getSceneObject(readData("mensix_mining_facility_main:traveler_m_objectID"))
  
  if (readData("mensix_mining_facility_main:travelerConvoState") == 1) then
      spatialChat(pTraveler_m, "Please, Clarrisa, don't start. I thought this would be a nice change of pace for us. You said you wanted to go some place full of adventure and mystery. With all of the discoveries here on Mustafar I thought you would love it.")     
        writeData("mensix_mining_facility_main:travelerConvoState", 2)   
        createEvent(20 * 1000, "mensix_mining_facility_main", "touristConvoM2", pTraveler_m, "")   
  end
end

function mensix_mining_facility_main:touristConvoF2(pTraveler_f, pPlayer)
  
  local pTraveler_f = getSceneObject(readData("mensix_mining_facility_main:traveler_f_objectID"))
  
  if (readData("mensix_mining_facility_main:travelerConvoState") == 2) then
      spatialChat(pTraveler_f, "Adventure! When I said that, I meant we should go someplace nice like Naboo. You drag me half way across the galaxy to show me a burning rock! We are going to have a serious talk about your concept of adventure when we get home. Are you listening to me?")     
        writeData("mensix_mining_facility_main:travelerConvoState", 3)    
        createEvent(20 * 1000, "mensix_mining_facility_main", "touristConvoF3", pTraveler_f, "")  
  end
end

function mensix_mining_facility_main:touristConvoM2(pTraveler_m, pPlayer)
  
  local pTraveler_m = getSceneObject(readData("mensix_mining_facility_main:traveler_m_objectID"))
  
  if (readData("mensix_mining_facility_main:travelerConvoState") == 3) then
      spatialChat(pTraveler_m, "Of course dear. I was just trying to be exciting and unexpected for you. We could have explored some of those ruins and maybe make a discovery of our own.")     
        writeData("mensix_mining_facility_main:travelerConvoState", 4)  
        createEvent(22 * 1000, "mensix_mining_facility_main", "touristConvoM3", pTraveler_m, "")   
  end
end

function mensix_mining_facility_main:touristConvoF3(pTraveler_f, pPlayer)
  
  local pTraveler_f = getSceneObject(readData("mensix_mining_facility_main:traveler_f_objectID"))
  
  if (readData("mensix_mining_facility_main:travelerConvoState") == 4) then
      spatialChat(pTraveler_f, "Next time you want to be exciting...don't. I will not have any such foolishness like you digging around in the dirt like some grubby archeologist. What would people back home say? Now we are just going to wait until the next shuttle and never speak of this again. Is that understood?")     
        writeData("mensix_mining_facility_main:travelerConvoState", 5)           
  end
end

function mensix_mining_facility_main:touristConvoM3(pTraveler_m, pPlayer)
  
  local pTraveler_m = getSceneObject(readData("mensix_mining_facility_main:traveler_m_objectID"))
  
  if (readData("mensix_mining_facility_main:travelerConvoState") == 5) then
      spatialChat(pTraveler_m, "Yes, dear. Whatever you say.") 
        writeData("mensix_mining_facility_main:travelerConvoState", 0)   
        createEvent(6 * 100 * 1000, "mensix_mining_facility_main", "resetTravelerConvo", pTraveler_m, "")   
  end
end

function mensix_mining_facility_main:resetTravelerConvo(pPlayer, pTraveler_f, pTraveler_m)
    writeData("mensix_mining_facility_main:travelerConvoInProgress", 0)    
    self:startTravelerConvo()
end

-- Miner Jokes

function mensix_mining_facility_main:startMinerConvo(pActiveArea1, pMovingObject, pPlayer, pMiner1, pMiner2, pMiner3)
  
   local pMiner1 = getSceneObject(readData("mensix_mining_facility_main:pMiner1_objectID"))
   local pMiner2 = getSceneObject(readData("mensix_mining_facility_main:pMiner2_objectID"))
   local pMiner3 = getSceneObject(readData("mensix_mining_facility_main:pMiner3_objectID"))

   if not(readData("mensix_mining_facility_main:minerConvoInProgress") == 1) then       
          writeData("mensix_mining_facility_main:minerConvoInProgress", 1)
          writeData("mensix_mining_facility_main:minerConvoState", 1)
          createEvent(90 * 1000, "mensix_mining_facility_main", "minerConvo_miner3_1", pMiner3, "")          
          createEvent(94 * 1000, "mensix_mining_facility_main", "minerConvo_miner1_1", pMiner1, "")
          createEvent(141 * 1000, "mensix_mining_facility_main", "minerConvo_miner2_1", pMiner2, "")
   else
      return 0
   end              
end

function mensix_mining_facility_main:minerConvo_miner3_1(pMiner3, pPlayer)
  
  local pMiner3 = getSceneObject(readData("mensix_mining_facility_main:pMiner3_objectID"))
  
  if (readData("mensix_mining_facility_main:minerConvoState") == 1) then
      spatialChat(pMiner3, "Hey, do your impression of those human fellas.") --@must_joker:do_humans
        writeData("mensix_mining_facility_main:minerConvoState", 2)   
        createEvent(11 * 1000, "mensix_mining_facility_main", "minerConvo_miner3_2", pMiner3, "")   
  end
end

function mensix_mining_facility_main:minerConvo_miner1_1(pMiner1, pPlayer)
  
  local pMiner1 = getSceneObject(readData("mensix_mining_facility_main:pMiner1_objectID"))
  
  if (readData("mensix_mining_facility_main:minerConvoState") == 2) then
      spatialChat(pMiner1, "So you want to see what humans are like, eh? Well just you watch this...it is uncanny.") --@must_joker:alright_humans
        writeData("mensix_mining_facility_main:minerConvoState", 3)   
        createEvent(4 * 1000, "mensix_mining_facility_main", "minerConvo_miner1_2", pMiner1, "")   
  end
end

function mensix_mining_facility_main:minerConvo_miner1_2(pMiner1, pPlayer)
  
  local pMiner1 = getSceneObject(readData("mensix_mining_facility_main:pMiner1_objectID"))
  
  if (readData("mensix_mining_facility_main:minerConvoState") == 3) then
      spatialChat(pMiner1, "Hey look at me. I am human. I am so pretty. This lava is too hot for my tender pink skin. Oooo, it is a scary blistmok...help me...help me.") --@must_joker:i_am_human
        writeData("mensix_mining_facility_main:minerConvoState", 4)   
        createEvent(48 * 1000, "mensix_mining_facility_main", "minerConvo_miner1_3", pMiner1, "")   -- 43
  end
end

function mensix_mining_facility_main:minerConvo_miner3_2(pMiner3, pPlayer)
  
  local pMiner1 = getSceneObject(readData("mensix_mining_facility_main:pMiner1_objectID"))
  local pMiner2 = getSceneObject(readData("mensix_mining_facility_main:pMiner2_objectID"))
  local pMiner3 = getSceneObject(readData("mensix_mining_facility_main:pMiner3_objectID"))
  
  if (readData("mensix_mining_facility_main:minerConvoState") == 4) then
      spatialChat(pMiner3, "It is funny because it is true.") --@must_joker:i_love_that
      CreatureObject(pMiner1):doAnimation("emt_rofl")
      CreatureObject(pMiner2):doAnimation("emt_rofl")
      CreatureObject(pMiner3):doAnimation("emt_rofl")
        writeData("mensix_mining_facility_main:minerConvoState", 5)   
        createEvent(2 * 64 * 1000, "mensix_mining_facility_main", "minerConvo_miner3_3", pMiner3, "")   --
  end
end

function mensix_mining_facility_main:minerConvo_miner2_1(pMiner2, pPlayer)
  
  local pMiner2 = getSceneObject(readData("mensix_mining_facility_main:pMiner2_objectID"))
  
  if (readData("mensix_mining_facility_main:minerConvoState") == 5) then
      spatialChat(pMiner2, "Hey, hey...now do a Wookiee.") --@must_joker:do_wookiee
        writeData("mensix_mining_facility_main:minerConvoState", 6)   
        createEvent(76 * 1000, "mensix_mining_facility_main", "minerConvo_miner2_2", pMiner2, "")   --76
  end
end

function mensix_mining_facility_main:minerConvo_miner1_3(pMiner1, pPlayer)
  
  local pMiner1 = getSceneObject(readData("mensix_mining_facility_main:pMiner1_objectID"))
  local pMiner2 = getSceneObject(readData("mensix_mining_facility_main:pMiner2_objectID"))
  local pMiner3 = getSceneObject(readData("mensix_mining_facility_main:pMiner3_objectID"))
  
  if (readData("mensix_mining_facility_main:minerConvoState") == 6) then
      spatialChat(pMiner1, "No way! Those walking furballs smell something fierce.") -- @must_joker:wookiee_smell
      CreatureObject(pMiner1):doAnimation("emt_rofl")
      CreatureObject(pMiner2):doAnimation("emt_rofl")
      CreatureObject(pMiner3):doAnimation("emt_rofl")
        writeData("mensix_mining_facility_main:minerConvoState", 7)   
        createEvent(45 * 1000, "mensix_mining_facility_main", "minerConvo_miner1_4", pMiner1, "")   -- 43
  end
end

function mensix_mining_facility_main:minerConvo_miner1_4(pMiner1, pPlayer)
  
  local pMiner1 = getSceneObject(readData("mensix_mining_facility_main:pMiner1_objectID"))
  
  if (readData("mensix_mining_facility_main:minerConvoState") == 7) then
      spatialChat(pMiner1, "Hey, guys. Watch this. I am going to do all those treasure hunters out in those ruins thinking they are going to get rich. Silly off-worlders...there are more credits floating in the lava pools than they will ever find in those dumb ruins.") --@must_joker:offworlders
        writeData("mensix_mining_facility_main:minerConvoState", 8)   
        createEvent(31 * 1000, "mensix_mining_facility_main", "minerConvo_miner1_5", pMiner1, "")   -- 43
  end
end

function mensix_mining_facility_main:minerConvo_miner2_2(pMiner2, pPlayer)
  
  local pMiner2 = getSceneObject(readData("mensix_mining_facility_main:pMiner2_objectID"))
  
  if (readData("mensix_mining_facility_main:minerConvoState") == 8) then
      spatialChat(pMiner2, "I bet you can't do a Rodian.") --@must_joker:do_rodian
        writeData("mensix_mining_facility_main:minerConvoState", 9)   
       
  end
end

function mensix_mining_facility_main:minerConvo_miner1_5(pMiner1, pPlayer)
  
  local pMiner1 = getSceneObject(readData("mensix_mining_facility_main:pMiner1_objectID"))
  
  if (readData("mensix_mining_facility_main:minerConvoState") == 9) then
      spatialChat(pMiner1, "Hmmmmm...rodian eh? That could be a tough one...") --@must_joker:okay_rodian
        writeData("mensix_mining_facility_main:minerConvoState", 10)   
        createEvent(5 * 1000, "mensix_mining_facility_main", "minerConvo_miner1_6", pMiner1, "")   -- 43
  end
end

function mensix_mining_facility_main:minerConvo_miner1_6(pMiner1, pPlayer)
  
  local pMiner1 = getSceneObject(readData("mensix_mining_facility_main:pMiner1_objectID"))
  
  if (readData("mensix_mining_facility_main:minerConvoState") == 10) then
      spatialChat(pMiner1, "Hey everyone, I am Rodian.  Look at me with my skinny green legs and my flappy little lips. I am a scary bounty hunter...OoooOOooO. ") --@must_joker:i_am_rodian
        writeData("mensix_mining_facility_main:minerConvoState", 11)   
        createEvent(3 * 1000, "mensix_mining_facility_main", "minerConvo_miner1_7", pMiner1, "")   -- 43
  end
end

function mensix_mining_facility_main:minerConvo_miner3_3(pMiner3, pPlayer)
  
  local pMiner3 = getSceneObject(readData("mensix_mining_facility_main:pMiner3_objectID"))
  
  if (readData("mensix_mining_facility_main:minerConvoState") == 11) then
      spatialChat(pMiner3, "I don't get it.") --@must_joker:i_dont_get_it
        writeData("mensix_mining_facility_main:minerConvoState", 12)   
        createEvent(9 * 1000, "mensix_mining_facility_main", "minerConvo_miner3_4", pMiner3, "")   --
  end
end

function mensix_mining_facility_main:minerConvo_miner1_7(pMiner1, pPlayer)
  
  local pMiner1 = getSceneObject(readData("mensix_mining_facility_main:pMiner1_objectID"))
  
  if (readData("mensix_mining_facility_main:minerConvoState") == 12) then
      spatialChat(pMiner1, "Rodians are all yella...well green anyways. They are all supposed to be scary but how can you be scary with those weird things sticking out of your head?") --@must_joker:rodian_yellow
        writeData("mensix_mining_facility_main:minerConvoState", 13)   
       
  end
end

function mensix_mining_facility_main:minerConvo_miner3_4(pMiner3, pPlayer)
  
  local pMiner3 = getSceneObject(readData("mensix_mining_facility_main:pMiner3_objectID"))
  
  if (readData("mensix_mining_facility_main:minerConvoState") == 13) then
      spatialChat(pMiner3, "Oh...yeah...that was a good one...") --@must_joker:no_i_get_it
        writeData("mensix_mining_facility_main:minerConvoState", 0) 
        writeData("mensix_mining_facility_main:minerConvoInProgress", 0)   
        createEvent(3 * 100 * 1000, "mensix_mining_facility_main", "startMinerConvo", pMiner3, "")   
  end
end


