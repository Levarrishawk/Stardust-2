kaas_rebel_cave = ScreenPlay:new {
	numberOfActs = 1;
	
	lootContainers = {
		

	},

	lootLevel = 100,

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 700000},
				{group = "junk", chance = 7500000},
				{group = "rifles", chance = 600000},
				{group = "pistols", chance = 600000},
				{group = "clothing_attachments", chance = 300000},
				{group = "armor_attachments", chance = 300000}
			},
			lootChance = 8000000
		}
	},
}

registerScreenPlay("kaas_rebel_cave", true)

function kaas_rebel_cave:start()
	self:spawnMobiles()
	self:spawnSceneObjects()
end

function kaas_rebel_cave:spawnSceneObjects()

 spawnSceneObject("kaas", "object/building/player/city/shuttleport_corellia.iff", 2852.3, 125.6, 3900, 0, math.rad(180) )
 spawnSceneObject("coruscant", "object/building/player/city/shuttleport_corellia.iff", -5816, 0, -4833, 0, math.rad(180) )
 

end

function kaas_rebel_cave:spawnMobiles()

-- Gundark Cave

	spawnMobile("kaas", "gundark", 200, -90.5, -103.4, -124.8, 179, 36000170)
	
	spawnMobile("kaas", "gundark", 200, -49.5, -87.8, -146.5, 90, 36000169)
	spawnMobile("kaas", "gundark", 200, -30.1, -80.0, -145.2, 0, 36000169)
	spawnMobile("kaas", "gundark", 200, -20.8, -79.6, -143.9, 0, 36000169)
	spawnMobile("kaas", "gundark", 200, -25.4, -77.7, -131.5, 0, 36000169)
	
	spawnMobile("kaas", "gundark", 200, -30.4, -70.0, -102.2, -90, 36000168)
	spawnMobile("kaas", "gundark", 200, -39.0, -70.1, -95.8, -90, 36000168)
	spawnMobile("kaas", "gundark", 200, -38.4, -70.8, -81.3, -90, 36000168)
	spawnMobile("kaas", "gundark", 200, -50.6, -69.6, -89.1, -90, 36000168)
	spawnMobile("kaas", "gundark", 200, -58.9, -68.2, -104.5, -90, 36000168)
	
	spawnMobile("kaas", "gundark", 200, -94.1, -69.8, -96.2, 179, 36000167)
	spawnMobile("kaas", "gundark", 200, -100.9, -69.3, -101.2, 179, 36000167)
	spawnMobile("kaas", "gundark", 200, -88.6, -69.7, -106.6, 179, 36000167)
	spawnMobile("kaas", "gundark", 200, -94.2, -102.8, -135.1, 139, 36000167)
	spawnMobile("kaas", "gundark", 200, -79.1, -100.7, -136.4, 154, 36000167)
	spawnMobile("kaas", "gundark", 200, -74.5, -99.4, -159.4, 0, 36000167)
	spawnMobile("kaas", "gundark", 200, -81.8, -70.3, -124.4, -90, 36000167)
	spawnMobile("kaas", "gundark", 200, -116.1, -69.3, -126.5, 90, 36000167)	
	spawnMobile("kaas", "gundark", 200, -110.2, -69.7, -170.6, 90, 36000167)
	spawnMobile("kaas", "gundark", 200, -96.6, -72.3, -180.7, 0, 36000167)
	spawnMobile("kaas", "gundark", 200, -76.7, -69.9, -170.6, 90, 36000167)
	spawnMobile("kaas", "gundark", 200, -68.0, -70.5, -159.0, 179, 36000167)
	spawnMobile("kaas", "gundark", 200, -59.6, -69.2, -165.7, 179, 36000167)
	spawnMobile("kaas", "gundark", 200, -52.4, -69.1, -172.4, 179, 36000167)
	spawnMobile("kaas", "gundark", 200, -82.3, -69.8, -203.8, 0, 36000167)
	
	spawnMobile("kaas", "gundark", 200, -3.3, -63.9, -233.4, -90, 36000166)
	spawnMobile("kaas", "gundark", 200, -11.1, -63.8, -260.6, 0, 36000166)
	spawnMobile("kaas", "gundark", 200, -19.2, -63.1, -260.7, 0, 36000166)
	
	spawnMobile("kaas", "gundark", 200, -36.1, -66.8, -181.5, 90, 36000165)
	
	spawnMobile("kaas", "gundark", 200, 47.9, -56.4, -178.1, 0, 36000164)
	spawnMobile("kaas", "gundark", 200, 51.0, -56.4, -174.7, 0, 36000164)
	spawnMobile("kaas", "gundark", 200, 44.7, -56.9, -166.7, 0, 36000164)	
	spawnMobile("kaas", "gundark", 200, 58.0, -49.8, -134.5, -90, 36000164)
	spawnMobile("kaas", "gundark", 200, 62.0, -48.0, -129.4, -90, 36000164)
	spawnMobile("kaas", "gundark", 200, 59.5, -46.4, -123.1, -90, 36000164)
	spawnMobile("kaas", "gundark", 200, 47.9, -48.2, -125.3, -90, 36000164)	
	spawnMobile("kaas", "gundark", 200, 24.6, -46.0, -124.4, 0, 36000164)	
	spawnMobile("kaas", "gundark", 200, -1.8, -45.7, -147.3, 0, 36000164)
	spawnMobile("kaas", "gundark", 200, -7.9, -44.8, -139.9, 179, 36000164)
	spawnMobile("kaas", "gundark", 200, -2.8, -45.1, -139.2, 179, 36000164)
	spawnMobile("kaas", "gundark", 200, -9.8, -30.8, -28.9, 90, 36000164)

	spawnMobile("kaas", "gundark", 200, 39.0, -46.3, -83.0, 0, 36000163)
	spawnMobile("kaas", "gundark", 200, 33.0, -45.3, -54.8, -90, 36000163)
	spawnMobile("kaas", "gundark", 200, 34.6, -45.3, -57.4, -90, 36000163)
	spawnMobile("kaas", "gundark", 200, 35.8, -45.6, -49.9, -90, 36000163)
	
	--spawnMobile("kaas", "gundark", 200, -10.8, -40.4, -83.1, 0, 36000162)   --556

	
	spawnMobile("kaas", "gundark", 200, 3356.7, 98.0, 2597.6, 0, 0)
	spawnMobile("kaas", "gundark", 200, 3345.3, 96.4, 2612.4, 0, 0)
	spawnMobile("kaas", "gundark", 200, 3329.8, 102.8, 2617.4, -25, 0)
	
	spawnMobile("kaas", "rodian_thug", 200, -93.2, -101, -106, 168, 36000170)
	spawnMobile("kaas", "rodian_thug", 200, -82.2, -101.7, -116.7, -168, 36000170)
	
	-- Kell Dragon Cave
	
	spawnMobile("kaas", "kell_dragon", 200, -90.5, -103.4, -124.8, 179, 36000158)
  
  spawnMobile("kaas", "kell_dragon", 200, -49.5, -87.8, -146.5, 90, 36000157)
  spawnMobile("kaas", "kell_dragon", 200, -30.1, -80.0, -145.2, 0, 36000157)
  spawnMobile("kaas", "kell_dragon", 200, -20.8, -79.6, -143.9, 0, 36000157)
  spawnMobile("kaas", "kell_dragon", 200, -25.4, -77.7, -131.5, 0, 36000157)
  
  spawnMobile("kaas", "kell_dragon", 200, -30.4, -70.0, -102.2, -90, 36000156)
  spawnMobile("kaas", "kell_dragon", 200, -39.0, -70.1, -95.8, -90, 36000156)
  spawnMobile("kaas", "kell_dragon", 200, -38.4, -70.8, -81.3, -90, 36000156)
  spawnMobile("kaas", "kell_dragon", 200, -50.6, -69.6, -89.1, -90, 36000156)
  spawnMobile("kaas", "kell_dragon", 200, -58.9, -68.2, -104.5, -90, 36000156)
  
  spawnMobile("kaas", "kell_dragon", 200, -94.1, -69.8, -96.2, 179, 36000155)
  spawnMobile("kaas", "kell_dragon", 200, -100.9, -69.3, -101.2, 179, 36000155)
  spawnMobile("kaas", "kell_dragon", 200, -88.6, -69.7, -106.6, 179, 36000155)
  spawnMobile("kaas", "kell_dragon", 200, -94.2, -102.8, -135.1, 139, 36000155)
  spawnMobile("kaas", "kell_dragon", 200, -79.1, -100.7, -136.4, 154, 36000155)
  spawnMobile("kaas", "kell_dragon", 200, -74.5, -99.4, -159.4, 0, 36000155)
  spawnMobile("kaas", "kell_dragon", 200, -81.8, -70.3, -124.4, -90, 36000155)
  spawnMobile("kaas", "kell_dragon", 200, -116.1, -69.3, -126.5, 90, 36000155)  
  spawnMobile("kaas", "kell_dragon", 200, -110.2, -69.7, -170.6, 90, 36000155)
  spawnMobile("kaas", "kell_dragon", 200, -96.6, -72.3, -180.7, 0, 36000155)
  spawnMobile("kaas", "kell_dragon", 200, -76.7, -69.9, -170.6, 90, 36000155)
  spawnMobile("kaas", "kell_dragon", 200, -68.0, -70.5, -159.0, 179, 36000155)
  spawnMobile("kaas", "kell_dragon", 200, -59.6, -69.2, -165.7, 179, 36000155)
  spawnMobile("kaas", "kell_dragon", 200, -52.4, -69.1, -172.4, 179, 36000155)
  spawnMobile("kaas", "kell_dragon", 200, -82.3, -69.8, -203.8, 0, 36000155)
  
  spawnMobile("kaas", "kell_dragon", 200, -3.3, -63.9, -233.4, -90, 36000154)
  spawnMobile("kaas", "kell_dragon", 200, -11.1, -63.8, -260.6, 0, 36000154)
  spawnMobile("kaas", "kell_dragon", 200, -19.2, -63.1, -260.7, 0, 36000154)
  
  spawnMobile("kaas", "kell_dragon", 200, -36.1, -66.8, -181.5, 90, 36000153)
  
  spawnMobile("kaas", "kell_dragon", 200, 47.9, -56.4, -178.1, 0, 36000152)
  spawnMobile("kaas", "kell_dragon", 200, 51.0, -56.4, -174.7, 0, 36000152)
  spawnMobile("kaas", "kell_dragon", 200, 44.7, -56.9, -166.7, 0, 36000152) 
  spawnMobile("kaas", "kell_dragon", 200, 58.0, -49.8, -134.5, -90, 36000152)
  spawnMobile("kaas", "kell_dragon", 200, 62.0, -48.0, -129.4, -90, 36000152)
  spawnMobile("kaas", "kell_dragon", 200, 59.5, -46.4, -123.1, -90, 36000152)
  spawnMobile("kaas", "kell_dragon", 200, 47.9, -48.2, -125.3, -90, 36000152) 
  spawnMobile("kaas", "kell_dragon", 200, 24.6, -46.0, -124.4, 0, 36000152) 
  spawnMobile("kaas", "kell_dragon", 200, -1.8, -45.7, -147.3, 0, 36000152)
  spawnMobile("kaas", "kell_dragon", 200, -7.9, -44.8, -139.9, 179, 36000152)
  spawnMobile("kaas", "kell_dragon", 200, -2.8, -45.1, -139.2, 179, 36000152)
  spawnMobile("kaas", "kell_dragon", 200, -9.8, -30.8, -28.9, 90, 36000152)

  spawnMobile("kaas", "kell_dragon", 200, 39.0, -46.3, -83.0, 0, 36000151)
  spawnMobile("kaas", "kell_dragon", 200, 33.0, -45.3, -54.8, -90, 36000151)
  spawnMobile("kaas", "kell_dragon", 200, 34.6, -45.3, -57.4, -90, 36000151)
  spawnMobile("kaas", "kell_dragon", 200, 35.8, -45.6, -49.9, -90, 36000151)
  
 -- spawnMobile("kaas", "kell_dragon", 200, -10.8, -40.4, -83.1, 0, 36000150) 
	

end
