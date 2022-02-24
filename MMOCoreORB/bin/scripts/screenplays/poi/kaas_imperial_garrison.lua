local ObjectManager = require("managers.object.object_manager")

kaas_imperial_garison = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("kaas_imperial_garison", true)

function kaas_imperial_garison:start()
	if (isZoneEnabled("kaas")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function kaas_imperial_garison:spawnSceneObjects()
  spawnSceneObject("kaas", "object/tangible/terminal/terminal_mission.iff", -5149.5, 80, -2263.9, 0, math.rad(0) )
end

function kaas_imperial_garison:spawnMobiles()

	-- Outside Starport / Teh Cloaner
	spawnMobile("kaas", "at_st_prophets", 300, -5125.9, 80.0, -2257.9, 0, 0)
	spawnMobile("kaas", "at_st_prophets", 300, -5108.5, 80.0, -2257.9, 0, 0)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5123.9, 80.0, -2218.0, 0, 0)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5114.1, 80.0, -2217.7, 0, 0)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5111.6, 80.0, -2285.1, 0, 0)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5122.6, 80.0, -2285.1, 0, 0)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5080.7, 80.0, -2282.6, -90, 0)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5080.7, 80.0, -2275.7, -90, 0)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5145.8, 80.0, -2287.1, 0, 0)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5152.1, 80.0, -2287.1, 0, 0)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5160.6, 80.0, -2287.1, 0, 0)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5167.4, 80.0, -2287.1, 0, 0)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5129.4, 84.0, -2221.1, 0, 0)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5108.9, 84.0, -2221.1, 0, 0)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5082.5, 80.0, -2272.0, -90, 0)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5082.5, 80.0, -2267.8, -90, 0)	
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5109.6, 80.0, -2233.4, 179, 0)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5131.2, 80.0, -2233.4, 179, 0)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5147.8, 80.0, -2265.7, 90, 0)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5149.2, 80.0, -2224.3, 179, 0)
	spawnMobile("kaas", "at_st_prophets", 300, -5119.9, 80.0, -2192.4, 179, 0)


	
	-- Inside Police Station
	spawnMobile("kaas", "stormtrooper_prophets", 300, -0.0, 2.0, 3.9, 0, 36000034)
  spawnMobile("kaas", "stormtrooper_prophets", 300, 20.2, 1.0, 8.1, -90, 36000034)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -20.2, 1.0, 8.1, 90, 36000034)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -20.5, 1.0, -11.5, 90, 36000034)
	spawnMobile("kaas", "stormtrooper_prophets", 300, 20.6, 1.0, -11.5, -90, 36000034)
	
	spawnMobile("kaas", "stormtrooper_prophets", 300, -0.0, 1.0, -21.7, 0, 36000039)
	
	spawnMobile("kaas", "stormtrooper_prophets", 300, 14.2, 1.0, -1.4, 0, 36000037)
	
	
	
	spawnMobile("kaas", "stormtrooper_prophets", 300, -17.6, 1.0, -4.6, 0, 36000041)
	
	spawnMobile("kaas", "stormtrooper_prophets", 300, 2.7, 7.0, -0.4, -1, 36000042)
	spawnMobile("kaas", "stormtrooper_prophets", 300, 9.9, 7.0, -4.4, 0, 36000042)
	spawnMobile("kaas", "stormtrooper_prophets", 300, 7.8, 7.0, -15.2, 0, 36000042)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -9.8, 7.0, -13.1, -121, 36000042)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -4.8, 7.0, -4.7, -131, 36000042)
	spawnMobile("kaas", "stormtrooper_prophets", 300, 3.1, 7.0, -11.3, 121, 36000042)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -0.3, 7.0, -10.20, 123, 36000042)

	
	--spawnMobile("kaas", "prophet_kadann", 300, 14.5, 1.0, -21.2, 0, 35791432)

	
	-- Temple Entrance Guards

	spawnMobile("kaas", "at_st_prophets", 300, -5097.8, 80.0, -2362.2, -134, 0)
	spawnMobile("kaas", "at_st_prophets", 300, -5073.8, 80.0, -2346.1, -90, 0)
	spawnMobile("kaas", "at_st_prophets", 300, -5136.6, 80.0, -2358.5, 107, 0)
	spawnMobile("kaas", "at_st_prophets", 300, -5160.7, 80.0, -2340.2, 131, 0)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5136.6, 80.0, -2376.7, 0, 0)
	spawnMobile("kaas", "stormtrooper_prophets", 300, -5126.2, 80.0, -2376.7, 0, 0)
	spawnMobile("kaas", "prophet_of_the_dark_side", 300, -5105.2, 80.0, -2376.7, 0, 0)
	
  -- Dark Temple Interior

	spawnMobile("kaas", "prophet_of_the_dark_side", 900, -18.8, -2.0, 11.8, 0, 36000003)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 2.0, -17.0, -18.8, 0, 36000003)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 18.8, -26.5, 2.3, 0, 36000003)
--spawnMobile("kaas", "prophet_of_the_dark_side", 900, -0.1, -37.3, 15.2, -179, 35791397)
--	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 11.7, -37.3, 0.0, -90, 35791397)   -- Duplicate of Boss PlaceHolder
--spawnMobile("kaas", "prophet_of_the_dark_side", 900, -11.7, -37.3, 15.2, 90, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 16.3, -30.3, 16.6, -140, 36000003)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 16.6, -21.3, -16.7, -44, 36000003)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, -16.7, -11.3, -16.8, 45, 36000003)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 20.3, -1.3, 11.2, 90, 36000003)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 20.4, -1.3, -11.0, -90, 36000003)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 0.2, -1.3, -21.0, 0, 36000003)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, -0.1, -1.3, 20.5, -179, 36000003)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, -20.9, -1.3, -11.0, 90, 36000003)
	
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, -5120.9, -81.3, -2406.3, 0, 0)
	

-- Det HQ


	spawnMobile("kaas", "stormtrooper_prophets", 200, 1.8, -6.8, -5.1, 90, 36000057)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 6.9, -6.8, -4.9, -90, 36000057)
	spawnMobile("kaas", "prophet_of_the_dark_side", 200, 4.5, -6.8, -5.9, 0, 36000057)
	
	spawnMobile("kaas", "stormtrooper_prophets", 200, -0.3, -13.7, -3.6, -90, 36000059)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -6.8, -13.7, -0.2, 90, 36000059)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -6.8, -13.7, -7.0, 90, 36000059)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -6.8, -13.7, -13.3, 90, 36000059)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -6.8, -13.7, 5.7, 90, 36000059)
	spawnMobile("kaas", "prophet_of_the_dark_side", 200, -6.4, -13.7, -3.7, 90, 36000059)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -7.6, -13.8, 12.0, 90, 36000060)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -1.3, -13.7, 13.9, -90, 36000060)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 1.9, -13.7, 13.9, -90, 36000060)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 3.5, -13.7, 13.9, -90, 36000060)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 0.7, -13.7, 10.2, -90, 36000060)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 3.0, -13.7, 10.2, -90, 36000060)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 5.6, -13.7, 10.2, -90, 36000060)
	spawnMobile("kaas", "prophet_of_the_dark_side", 200, 16.8, -13.7, 12.5, -149, 36000061)
	spawnMobile("kaas", "prophet_of_the_dark_side", 200, 13.8, -13.7, 9.3, 56, 36000061)
	spawnMobile("kaas", "prophet_of_the_dark_side", 200, 16.8, -13.7, 8.1, -42, 36000061)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 13.2, -13.8, -14.3, 0, 36000062)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 17.8, -13.8, -14.2, 0, 36000062)

	
-- Research Facility


	spawnMobile("kaas", "stormtrooper_prophets", 200, 3.4, -12.0, 30.3, 179, 36000068)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 25.4, -12.0, 43.7, 0, 36000068)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 3.6, -12.0, 65.4, 179, 36000068)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 9.8, -12.0, 62.8, 90, 36000068)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -2.7, -12.0, 63.2, -90, 36000068)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -12.5, -12.0, 51.4, 179, 36000068)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -12.6, -12.0, 41.0, 179, 36000068)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -0.3, -12.0, 37.5, 179, 36000068)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 6.7, -12.0, 37.5, 179, 36000068)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 25.1, -12.0, 52.7, -128, 36000068)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -1.5, -12.0, 68.4, 143, 36000068)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -19.6, -12.0, 54.0, 130, 36000068)
	
	spawnMobile("kaas", "prophet_of_the_dark_side", 200, -49.7, -20.0, 80.9, -90, 36000072)
	spawnMobile("kaas", "prophet_of_the_dark_side", 200, -53.5, -20.0, 86.1, -139, 36000072)
	spawnMobile("kaas", "prophet_of_the_dark_side", 200, -51.7, -20.0, 77.2, -57, 36000072)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -56.3, -20.0, 87.4, -172, 36000072)
	spawnMobile("kaas", "prophet_of_the_dark_side", 200, -71.0, -20.0, 80.7, 90, 36000072)
	
	spawnMobile("kaas", "prophet_of_the_dark_side", 200, -74.9, -20.0, 12.9, -90, 36000071)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -65.1, -20.0, 18.4, 0, 36000071)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -60.6, -20.0, 18.4, 0, 36000071)
	
	spawnMobile("kaas", "stormtrooper_prophets", 200, 62.1, -12.0, 22.9, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 60.1, -12.0, 22.9, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 58.1, -12.0, 22.9, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 56.1, -12.0, 22.9, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 54.1, -12.0, 22.9, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 52.1, -12.0, 22.9, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 50.1, -12.0, 22.9, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 48.1, -12.0, 22.9, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 46.1, -12.0, 22.9, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 44.1, -12.0, 22.9, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 42.1, -12.0, 22.9, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 40.1, -12.0, 22.9, -179, 36000077)
	
	spawnMobile("kaas", "stormtrooper_prophets", 200, 62.1, -12.0, 19.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 60.1, -12.0, 19.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 58.1, -12.0, 19.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 56.1, -12.0, 19.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 54.1, -12.0, 19.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 52.1, -12.0, 19.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 50.1, -12.0, 19.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 48.1, -12.0, 19.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 46.1, -12.0, 19.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 44.1, -12.0, 19.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 42.1, -12.0, 19.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 40.1, -12.0, 19.1, 0, 36000077)
	
	spawnMobile("kaas", "stormtrooper_prophets", 200, 62.1, -12.0, 13.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 60.1, -12.0, 13.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 58.1, -12.0, 13.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 56.1, -12.0, 13.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 54.1, -12.0, 13.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 52.1, -12.0, 13.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 50.1, -12.0, 13.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 48.1, -12.0, 13.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 46.1, -12.0, 13.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 44.1, -12.0, 13.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 42.1, -12.0, 13.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 40.1, -12.0, 13.0, -179, 36000077)
	
	spawnMobile("kaas", "stormtrooper_prophets", 200, 62.1, -12.0, 9.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 60.1, -12.0, 9.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 58.1, -12.0, 9.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 56.1, -12.0, 9.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 54.1, -12.0, 9.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 52.1, -12.0, 9.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 50.1, -12.0, 9.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 48.1, -12.0, 9.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 46.1, -12.0, 9.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 44.1, -12.0, 9.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 42.1, -12.0, 9.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 40.1, -12.0, 9.1, 0, 36000077)
	
	spawnMobile("kaas", "stormtrooper_prophets", 200, 62.1, -12.0, 3.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 60.1, -12.0, 3.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 58.1, -12.0, 3.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 56.1, -12.0, 3.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 54.1, -12.0, 3.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 52.1, -12.0, 3.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 50.1, -12.0, 3.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 48.1, -12.0, 3.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 46.1, -12.0, 3.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 44.1, -12.0, 3.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 42.1, -12.0, 3.0, -179, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 40.1, -12.0, 3.0, -179, 36000077)
	
	spawnMobile("kaas", "stormtrooper_prophets", 200, 62.1, -12.0, -1.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 60.1, -12.0, -1.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 58.1, -12.0, -1.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 56.1, -12.0, -1.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 54.1, -12.0, -1.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 52.1, -12.0, -1.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 50.1, -12.0, -1.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 48.1, -12.0, -1.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 46.1, -12.0, -1.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 44.1, -12.0, -1.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 42.1, -12.0, -1.1, 0, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 40.1, -12.0, -1.1, 0, 36000077)
	
	spawnMobile("kaas", "stormtrooper_prophets", 200, 38.2, -12.0, 0.4, 90, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 38.2, -12.0, 10.8, 90, 36000077)
	spawnMobile("kaas", "stormtrooper_prophets", 200, 38.2, -12.0, 21.1, 90, 36000077)
	
	spawnMobile("kaas", "stormtrooper_prophets", 200, -21.3, -20.0, 8.1, 179, 36000079)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -12.1, -20.0, 8.1, 179, 36000079)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -11.7, -20.0, -2.7, 0, 36000079)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -21.3, -20.0, -2.7, 0, 36000079)
	
	spawnMobile("kaas", "stormtrooper_prophets", 200, -30.3, -20.0, 27.3, 0, 36000081)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -30.3, -20.0, 58.3, 0, 36000081)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -30.3, -20.0, 82.3, 0, 36000081)
	
	spawnMobile("kaas", "stormtrooper_prophets", 200, -37.5, -20.0, 101.1, -90, 36000082)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -27.9, -20.0, 106.2, -179, 36000082)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -17.9, -20.0, 106.2, -179, 36000082)
	spawnMobile("kaas", "stormtrooper_prophets", 200, -7.6, -20.0, 100.7, 90, 36000082)
	
	spawnMobile("kaas", "stormtrooper_prophets", 200, -2.5, -20.0, 64.8, -179, 36000084)
	
	spawnMobile("kaas", "stormtrooper_prophets", 200, 35.6, -20.0, 146.2, 0, 36000076)
	

	
	
	

	
end