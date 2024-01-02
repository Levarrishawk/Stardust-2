RoriRebelMilitaryBaseScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
}

registerScreenPlay("RoriRebelMilitaryBaseScreenPlay", true)

function RoriRebelMilitaryBaseScreenPlay:start()
	if isZoneEnabled("rori") then
				self:spawnRemnants()
	end
end


function RoriRebelMilitaryBaseScreenPlay:spawnRemnants()
	-- Outside spot 1
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5307.530, 75.894, 5009.310, 82.711, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5311.120, 76.009, 5012.210, 176.000, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5313.580, 76.062, 5007.680, 80.422, 0)
	-- Right tent
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5316.700, 76.001, 5070.840, 39.227, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5318.290, 76.012, 5075.460, -177.504, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5319.400, 76.000, 5070.660, 0.794, 0)
	-- Green factory
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5341.730, 76.000, 5087.920, 11.237, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5339.400, 76.000, 5087.770, 83.172, 0)
	-- Right tower
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5334.020, 80.010, 5067.550, 135.727, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5334.660, 80.010, 5068.880, 34.843, 0)
	-- Central lawn
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, getRandomNumber(12) + -5370, 76, getRandomNumber(16) + 5049, getRandomNumber(180) + -90, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5362.500, 76.000, 5067.360, -161.201, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5367.130, 76.000, 5066.420, 114.595, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5368.140, 76.000, 5061.860, 135.653, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5362.830, 76.000, 5061.750, 34.561, 0)

	spawnMobile("rori","imperial_remnant_stormtrooper", 900, getRandomNumber(12) + -5334, 76, getRandomNumber(12) + 5035, getRandomNumber(900), 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, getRandomNumber(12) + -5334, 76, getRandomNumber(12) + 5035, getRandomNumber(900), 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, getRandomNumber(12) + -5334, 76, getRandomNumber(12) + 5035, getRandomNumber(900), 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, getRandomNumber(12) + -5334, 76, getRandomNumber(12) + 5035, getRandomNumber(900), 0)

	spawnMobile("rori","imperial_remnant_stormtrooper", 900, getRandomNumber(12) + -5357, 76, getRandomNumber(12) + 5008, getRandomNumber(900), 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, getRandomNumber(12) + -5357, 76, getRandomNumber(12) + 5008, getRandomNumber(900), 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, getRandomNumber(12) + -5357, 76, getRandomNumber(12) + 5008, getRandomNumber(900), 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, getRandomNumber(12) + -5357, 76, getRandomNumber(12) + 5008, getRandomNumber(900), 0)

	-- Left supplies
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5393.190, 76.000, 5062.330, 50.886, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5397.430, 76.000, 5065.170, 71.564, 0)
	-- Left tower
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5374.270, 80.010, 5034.760, 54.368, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5376.280, 80.010, 5037.600, 35.632, 0)
	-- Left tent with food table
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5349.220, 76.000, 4995.770, -156.473, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5352.580, 76.000, 4995.850, 149.354, 0)
	-- Ion-fusion generator
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5363.020, 76.000, 4999.490, 71.912, 0)
	-- Central tower
	--spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5330.110, 83.010, 5012.140, -173.436, 0)
	--spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5323.650, 83.010, 5013.930, 90.476, 0)
	--spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5324.660, 83.010, 5021.500, 11.254, 0)
	--spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5327.590, 83.010, 5015.240, 127.087, 0)
	-- Right building
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -3.753, 0.125, -1.790, 91.608, 7555645)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, 0.208, 0.125, -5.539, 15.788, 7555642)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, 4.173, 0.125, -3.947, 87.468, 7555644)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, 3.233, 0.125, -2.203, 0.162, 7555644)
	-- Left building
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, 0.616, 0.125, -5.619, 127.514, 7555635)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, 3.865, 0.125, -4.194, 89.946, 7555637)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, 3.633, 0.125, -2.190, 137.113, 7555637);
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, 3.252, 0.125, 3.604, -91.859, 7555636)
	-- Outside spot 2
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5337.310, 75.920, 4982.150, 109.938, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5331.610, 76.156, 4982.920, -121.976, 0)
	-- Outside viewpoint hill
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5249.920, 89.554, 4968.660, 137.738, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5253.200, 89.623, 4966.770, -168.074, 0)
end

--[[ function RoriRebelMilitaryBaseScreenPlay:spawnRebels(pBuilding)
	if (pBuilding == nil) then
		return
	end

	BuildingObject(pBuilding):initializeStaticGCWBase(FACTIONREBEL)

	-- Outside spot 1
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5307.530, 75.894, 5009.310, 82.711, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5311.120, 76.009, 5012.210, 176.000, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5313.580, 76.062, 5007.680, 80.422, 0)
	-- Right tent
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5316.700, 76.001, 5070.840, 39.227, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5318.290, 76.012, 5075.460, -177.504, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5319.400, 76.000, 5070.660, 0.794, 0)
	-- Green factory
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5341.730, 76.000, 5087.920, 11.237, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5339.400, 76.000, 5087.770, 83.172, 0)
	-- Right tower
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5334.020, 80.010, 5067.550, 135.727, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5334.660, 80.010, 5068.880, 34.843, 0)
	-- Central lawn
	spawnMobile("rori","imperial_remnant_stormtrooper", 300, getRandomNumber(12) + -5370, 76, getRandomNumber(16) + 5049, getRandomNumber(180) + -90, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5362.500, 76.000, 5067.900, -161.201, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5367.130, 76.000, 5066.420, 114.595, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5368.140, 76.000, 5061.860, 135.653, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5362.830, 76.000, 5061.750, 34.561, 0)

	spawnMobile("rori","imperial_remnant_stormtrooper", 300, getRandomNumber(12) + -5334, 76, getRandomNumber(12) + 5035, getRandomNumber(900), 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 300, getRandomNumber(12) + -5334, 76, getRandomNumber(12) + 5035, getRandomNumber(900), 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 300, getRandomNumber(12) + -5334, 76, getRandomNumber(12) + 5035, getRandomNumber(900), 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 300, getRandomNumber(12) + -5334, 76, getRandomNumber(12) + 5035, getRandomNumber(900), 0)

	spawnMobile("rori","imperial_remnant_stormtrooper", 300, getRandomNumber(12) + -5357, 76, getRandomNumber(12) + 5008, getRandomNumber(900), 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 300, getRandomNumber(12) + -5357, 76, getRandomNumber(12) + 5008, getRandomNumber(900), 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 300, getRandomNumber(12) + -5357, 76, getRandomNumber(12) + 5008, getRandomNumber(900), 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 300, getRandomNumber(12) + -5357, 76, getRandomNumber(12) + 5008, getRandomNumber(900), 0)

	-- Left supplies
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5393.190, 76.000, 5062.330, 50.886, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5397.430, 76.000, 5065.170, 71.564, 0)
	-- Left tower
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5374.270, 80.010, 5034.760, 54.368, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5376.280, 80.010, 5037.600, 35.632, 0)
	-- Left tent with food table
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5349.220, 76.000, 4995.770, -156.473, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5352.580, 76.000, 4995.850, 149.354, 0)
	-- Ion-fusion generator
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5363.020, 76.000, 4999.490, 71.912, 0)
	-- Central tower
	--spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5330.110, 83.010, 5012.140, -173.436, 0)
	--spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5323.650, 83.010, 5013.930, 90.476, 0)
	--spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5324.660, 83.010, 5021.500, 11.254, 0)
	--spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5327.590, 83.010, 5015.240, 127.087, 0)
	-- Right building
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -3.753, 0.125, -1.790, 91.608, 7555645)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, 0.208, 0.125, -5.539, 15.788, 7555642)
	spawnMobile("rori","imperial_remnant_stormtrooper_squad_leader", 900, 4.173, 0.125, -3.947, 87.468, 7555644)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, 3.233, 0.125, -2.203, 0.162, 7555644)
	-- Left building
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, 0.616, 0.125, -5.619, 127.514, 7555635)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, 3.865, 0.125, -4.194, 89.946, 7555637)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, 3.633, 0.125, -2.190, 137.113, 7555637);
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, 3.252, 0.125, 3.604, -91.859, 7555636)
	-- Outside spot 2
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5337.310, 75.920, 4982.150, 109.938, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5331.610, 76.156, 4982.920, -121.976, 0)
	-- Outside viewpoint hill
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5249.920, 89.554, 4968.660, 137.738, 0)
	spawnMobile("rori","imperial_remnant_stormtrooper", 900, -5253.200, 89.623, 4966.770, -168.074, 0)
end
]]--
