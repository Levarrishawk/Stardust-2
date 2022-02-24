local ObjectManager = require("managers.object.object_manager")

includeFile("dungeon/geonosian_lab/conversations/geonosianConvoHandlers.lua")

GeonosianLabScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	keypadCodes = { 32281, 12872, 51892, 12753, 86332, 11380, 52577, 78660 },
	lockedCells = { 1627785, 1627786, 1627790, 1627805, 1627812, 1627815, 1627822, 1627823 },

	--debris fields, all respawns are set to 4 minutes
	debris = {
		{ template = "object/static/destructible/destructible_cave_wall_damprock.iff", x = -105.8, z = -29.6, y = -368.3, cell = 1627818 },
		{ template = "object/static/destructible/destructible_tato_drum_dented.iff", x = 37.5, z = -34.0, y = -333.5, cell = 1627822 },
		{ template = "object/static/destructible/destructible_tato_drum_storage1.iff", x = 37.6, z = -34.0, y = -334.4, cell = 1627822 },
		{ template = "object/static/destructible/destructible_tato_drum_storage1.iff", x = 37.2, z = -34.0, y = -335.2, cell = 1627822 },
		{ template = "object/static/destructible/destructible_tato_drum_storage1.iff", x = 36.4, z = -34.0, y = -335.7, cell = 1627822 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_lg.iff", x = -121.3, z = -33.5, y = -226.5, cell = 1627809 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -121.8, z = -33.6, y = -227.7, cell = 1627809 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -121.5, z = -33.6, y = -228.4, cell = 1627809 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -122.0, z = -33.6, y = -229.1, cell = 1627809 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -122.3, z = -33.6, y = -228.4, cell = 1627809 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -74.5, z = -21.9, y = -109.7, cell = 1627792 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -75.0, z = -21.9, y = -110.3, cell = 1627792 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -75.2, z = -22.0, y = -111.0, cell = 1627792 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -75.3, z = -22.0, y = -111.6, cell = 1627792 },
		{ template = "object/static/destructible/destructible_tato_cave_rock_lg.iff", x = -74.1, z = -22.5, y = -110.7, cell = 1627792 }
	},

	keypads = {
		{ x = -34, z = -18, y = -31, cell = 1627784, dw = 0.707107, dx = 0, dy = 0.707107, dz = 0 },
		{ x = -47, z = -18, y = -56, cell = 1627785, dw = 1, dx = 0, dy = 0, dz = 0 },
		{ x = -105, z = -18, y = -64, cell = 1627789, dw = 0, dx = 0, dy = -1, dz = 0 },
		{ x = -79, z = -22, y = -146, cell = 1627804, dw = 1, dx = 0, dy = 0, dz = 0 },
		{ x = -67, z = -34, y = -260, cell = 1627811, dw = 1, dx = 0, dy = 0, dz = 0 },
		{ x = -133, z = -34, y = -204, cell = 1627814, dw = 0, dx = 0, dy = -1, dz = 0 },
		{ x = -4, z = -34, y = -417, cell = 1627821, dw = 0.707107, dx = 0, dy = -0.707107, dz = 0 },
		{ x = 38, z = -34, y = -333, cell = 1627822, dw = 0.707107, dx = 0, dy = -0.707107, dz = 0 }
	},

	doorActiveAreas = {
		{ worldX = -6404.5, worldZ = 64.3, worldY = -412.4, cell = 1627784 },
		{ worldX = -6376.5, worldZ = 64.3, worldY = -413.6, cell = 1627785 },
		{ worldX = -6338.8, worldZ = 64.3, worldY = -457.9, cell = 1627789 },
		{ worldX = -6284.8, worldZ = 60.3, worldY = -392.6, cell = 1627804 },
		{ worldX = -6193.3, worldZ = 48.3, worldY = -324.1, cell = 1627811 },
		{ worldX = -6204.7, worldZ = 48.3, worldY = -410.2, cell = 1627814 },
		{ worldX = -6089.5, worldZ = 48.3, worldY = -191.4, cell = 1627821 },
		{ worldX = -6181.5, worldZ = 48.3, worldY = -196.5, cell = 1627822 },
	},

	poisonShutoffDuration = 30000, --30 seconds

	geoDatapad = "object/tangible/loot/dungeon/geonosian_mad_bunker/engineering_datapad.iff",

	geoTenloss = "object/tangible/loot/loot_schematic/geonosian_tenloss_dxr6_schematic.iff"

}

registerScreenPlay("GeonosianLabScreenPlay", true)

function GeonosianLabScreenPlay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnActiveAreas()
		self:spawnSceneObjects()
		self:spawnMobiles()
		self:setupPermissionGroups()
	end
end

function GeonosianLabScreenPlay:spawnActiveAreas()
	local pActiveArea = spawnActiveArea("yavin4", "object/active_area.iff", -6435.5, 85.6, -367, 10, 1627783)
	if pActiveArea ~= nil then
		createObserver(ENTEREDAREA, "GeonosianLabScreenPlay", "notifyEnteredPoisonGas", pActiveArea)
	end

	local pGasArea = spawnActiveArea("yavin4", "object/active_area.iff", -6181.9, 48.3, -197.2, 4, 1627822)
	if pGasArea ~= nil then
		createObserver(ENTEREDAREA, "GeonosianLabScreenPlay", "notifyEnteredPoisonGas", pGasArea)
	end

	local pShockArea = spawnActiveArea("yavin4", "object/active_area.iff", -6169.0, 48.3, -382.3, 4, 1627813)
	if pShockArea ~= nil then
		createObserver(ENTEREDAREA, "GeonosianLabScreenPlay", "notifyElectroShock", pShockArea)
	end
end

function GeonosianLabScreenPlay:spawnSceneObjects()

	local pGasLeak = spawnSceneObject("yavin4", "object/tangible/dungeon/poison_gas_cloud.iff", 21.7, 3.3, -29.1, 1627783, 0, 0, 0, 0)
	if (pGasLeak ~= nil) then
		writeData("geonosian_lab:gasLeakID", SceneObject(pGasLeak):getObjectID()) --set the gas leak as started
	end

	spawnSceneObject("yavin4", "object/tangible/dungeon/poison_gas_cloud.iff", 37.6, -34.0, -334.7, 1627822, 0, 0, 0, 0)

	--Building observer to lock all security doors.
	local pBuilding = getSceneObject(1627780) -- Geo lab building
	if (pBuilding ~= nil) then
		createObserver(ENTEREDBUILDING, "GeonosianLabScreenPlay", "notifyEnteredLab", pBuilding)
	end

	--Gas Valve
	local pSceneObject = spawnSceneObject("yavin4", "object/tangible/dungeon/wall_terminal_s1.iff", 2.27, -1.9, -15.73, 1627824, 0.701707, 0, -0.701707, 0)
	if (pSceneObject ~= nil) then
		createObserver(OBJECTRADIALUSED, "GeonosianLabScreenPlay", "notifyGasValveUsed", pSceneObject);
	end
	writeData("geonosian_lab:gasleak", 1) --set the gas leak as started

	--Keypads
	for i = 1, 8, 1 do
		local kp = self.keypads[i]
		pSceneObject = spawnSceneObject("yavin4", "object/tangible/dungeon/wall_terminal_s3.iff", kp.x, kp.z, kp.y, kp.cell, kp.dw, kp.dx, kp.dy, kp.dz)

		if (pSceneObject ~= nil) then
			writeData(SceneObject(pSceneObject):getObjectID() .. ":geonosian_lab:keypad_index", i)
			createObserver(OBJECTRADIALUSED, "GeonosianLabScreenPlay", "notifyKeypadUsed", pSceneObject)
		end

		local aa = self.doorActiveAreas[i]
		local pActiveArea = spawnActiveArea("yavin4", "object/active_area.iff", aa.worldX, aa.worldZ, aa.worldY, 4, aa.cell)
		if pActiveArea ~= nil then
			writeData(SceneObject(pActiveArea):getObjectID() .. ":GeoLabKeypad", i)
			createObserver(ENTEREDAREA, "GeonosianLabScreenPlay", "notifyLockedDoorArea", pActiveArea)
		end
	end

	for i = 1, 15, 1 do
		local debrisData = self.debris[i]
		local pDebris = spawnSceneObject("yavin4", debrisData.template, debrisData.x, debrisData.z, debrisData.y, debrisData.cell, 1, 0, 0, 0)
		if (pDebris ~= nil) then
			writeData(SceneObject(pDebris):getObjectID() .. ":geonosian_lab:debris_index", i)
			createObserver(OBJECTDESTRUCTION, "GeonosianLabScreenPlay", "notifyDebrisDestroyed", pDebris)
		end
	end
end

function GeonosianLabScreenPlay:spawnMobiles()
  -- cave_entrance (1627781)
  spawnMobile("yavin4", "biogenic_crazyguy", 1, -2.8, 10.8, 10.2, 69, 1627781)

  -- hall1 (1627782)
  spawnMobile("yavin4", "crazed_geonosian_guard",180,26.6,10.3,-13.3,-8,1627782)
  spawnMobile("yavin4", "crazed_geonosian_guard",180,32.3,9.5,-8.1,-105,1627782)
  spawnMobile("yavin4", "crazed_geonosian_guard",180,34.7,10.3,-14.4,-70,1627782)
  spawnMobile("yavin4", "crazed_geonosian_guard",180,37.4,9.8,-8.2,-109,1627782)

  -- hall2 (1627783)

  -- transition1 (1627784)
  spawnMobile("yavin4", "alert_droideka",180,-18,-18,-36,0,1627784)

  -- assistant_armory (1627785)
  spawnMobile("yavin4", "biogenic_securitytech", 1, -48, -18, -31, 180, 1627785)
  spawnMobile("yavin4", "crazed_geonosian_guard",180,-55.9,-18,-33.9,95,1627785)
  spawnMobile("yavin4", "crazed_geonosian_guard",180,-55.6,-18,-43.2,72,1627785)
  spawnMobile("yavin4", "crazed_geonosian_guard",180,-38.7,-18,-47.5,-75,1627785)

  -- transition2 (1627786)
  spawnMobile("yavin4", "alert_droideka",180,-62,-18,-59.5,-180,1627786)

  -- intersection1 (1627787)

  -- caveroom1 (1627788)
  spawnMobile("yavin4", "crazed_geonosian_guard",180,-66.7,-19,-41.2,-77,1627788)
  spawnMobile("yavin4", "crazed_geonosian_guard",180,-70.5,-18.9,-34.5,-161,1627788)
  spawnMobile("yavin4", "crazed_geonosian_guard",180,-83.9,-18.5,-42.3,85,1627788)

  -- transition3 (1627789)
  spawnMobile("yavin4", "alert_droideka",180,-90.5,-18,-76,0,1627789)

  -- lab1 (1627790)
  spawnMobile("yavin4", "biogenic_engineertech", 1,-106.5,-18,-33,50,1627790)
  spawnMobile("yavin4", "geonosian_scientist",180,-118.4,-20,-39.2,175,1627790)

  -- hall3 (1627791)
  spawnMobile("yavin4", "alert_droideka",180,-53.5,-18.2,-81.7,-90,1627791)

  -- intersection2 (1627792)

  -- largecavehall1 (1627793)
  spawnMobile("yavin4", "cavern_spider",180,-88.3,-21.8,-110.3,210,1627793)
  spawnMobile("yavin4", "cavern_spider",180,-98,-21.9,-114.7,50,1627793)
  spawnMobile("yavin4", "cavern_spider",180,-107.3,-22.2,-96.6,180,1627793)
  spawnMobile("yavin4", "cavern_spider",180,-108,-21.8,-126,0,1627793)
  spawnMobile("yavin4", "cavern_spider",180,-123,-22,-109.5,80,1627793)
  spawnMobile("yavin4", "cavern_spider",180,-134.7,-20.9,-112.2,77,1627793)

  -- largecavehall2 (1627794)
  spawnMobile("yavin4", "biogenic_construction", 1, -134.5, -21.7, -74.8, 90, 1627794)
  spawnMobile("yavin4", "enhanced_gaping_spider",3600,-130,-22.1,-85,-180,1627794, true) -- Randomized respawn

  -- hall4 (1627795)

  -- intersection3 (1627796)
  spawnMobile("yavin4", "alert_droideka",180,-3.8,-30.2,-92,-180,1627796)
  spawnMobile("yavin4", "cavern_spider",180,-16.8,-30.2,-115.1,22,1627796)

  -- hall5 (1627797)

  -- caveroom2 (1627798)
  spawnMobile("yavin4", "biogenic_scientist_human", 1, 23.8, -32, -83.2, 130, 1627798)
  spawnMobile("yavin4", "enhanced_kliknik",180,26,-31.5,-78,170,1627798)
  spawnMobile("yavin4", "enhanced_kliknik",180,36.5,-29.9,-82.7,-120,1627798)
  spawnMobile("yavin4", "enhanced_kliknik",180,29.5,-30.1,-88,-45,1627798)

  -- hall6 (1627799)

  -- intersection4 (1627800)
  spawnMobile("yavin4", "cavern_spider",180,-48,-21.8,-158,0,1627800)
  spawnMobile("yavin4", "cavern_spider",180,-48,-21.8,-143,0,1627800)

  -- transition4 (1627801)
  spawnMobile("yavin4", "alert_droideka",180,-34.2,-22,-128,-180,1627801)

  -- bedroom (1627802)
  spawnMobile("yavin4", "imperial_observer",180,-23,-22,-116,-90,1627802)
  spawnMobile("yavin4", "imperial_observer",180,-16.4,-22,-114.5,-150,1627802)

  -- cavecage1 (1627803)
  spawnMobile("yavin4", "biogenic_assistant", 1, -36, -21.9, -162.8, 0, 1627803)
  spawnMobile("yavin4", "crazed_geonosian_guard",180,-36,-22,-151.4,180,1627803)
  spawnMobile("yavin4", "crazed_geonosian_guard",180,-26.8,-22.9,-158,-90,1627803)
  spawnMobile("yavin4", "crazed_geonosian_guard",180,-19.4,-22.6,-151.7,-135,1627803)

  -- transition5 (1627804)
  spawnMobile("yavin4", "alert_droideka",180,-63.9,-22.0,-143.0,-3,1627804)

  -- office (1627805)
  spawnMobile("yavin4", "mercenary_sentry",180,-74.9,-22,-153.7,-119,1627805)
  spawnMobile("yavin4", "mercenary_sentry",180,-74.3,-22,-162.3,-40,1627805)
  spawnMobile("yavin4", "mercenary_sentry",180,-82.3,-22,-161.7,74,1627805)
  spawnMobile("yavin4", "mercenary_sentry",180,-82.2,-22,-155.1,106,1627805)

  -- hall7 (1627806)

  -- hall8 (1627807)
  spawnMobile("yavin4", "enhanced_kwi",180,-104.2,-28.7,-193.4,0,1627807)

  -- transition6 (1627808)
  spawnMobile("yavin4", "alert_droideka",180,-108,-34,-214,89,1627808)

  -- intersection5 (1627809)

  -- hall9 (1627810)

  -- transition7 (1627811)
  spawnMobile("yavin4", "alert_droideka",180,-61.5,-34,-252,-90,1627811)

  -- operatingroom1 (1627812)
  spawnMobile("yavin4", "biogenic_scientist_generic_01", 1, -72.0, -34, -272.9, 0, 1627812)
  spawnMobile("yavin4", "geonosian_scientist",180,-60.0,-34.0,-273.7,0,1627812)
  spawnMobile("yavin4", "enhanced_kliknik",180,-64.9,-34,-266.5,-143,1627812)
  spawnMobile("yavin4", "enhanced_kwi",180,-66.5,-34,-283.1,35,1627812)

  -- intersection6 (1627813)

  -- transition8 (1627814)

  -- operatingroom2 (1627815)
  spawnMobile("yavin4", "biogenic_scientist_generic_02", 1, -127.2, -34, -189.0, -93, 1627815)
  spawnMobile("yavin4", "enhanced_kwi",180,-143.2,-34,-180.8,-139,1627815)
  spawnMobile("yavin4", "enhanced_kliknik",180,-129.0,-34,-192.6,-32,1627815)
  spawnMobile("yavin4", "geonosian_scientist",180,-124.3,-34.0,-199.5,-60,1627815)
  spawnMobile("yavin4", "enhanced_kliknik",180,-139.8,-34,-194.3,57,1627815)

  -- transition9 (1627816)
  spawnMobile("yavin4", "alert_droideka",180,-129.8,-34.0,-267.9,87,1627816)

  -- cavecages2 (1627817)
  spawnMobile("yavin4", "cavern_spider",180,-128.2,-34.4,-322.4,-30,1627817)
  spawnMobile("yavin4", "cavern_spider",180,-143.5,-33.5,-321.7,134,1627817)
  spawnMobile("yavin4", "cavern_spider",180,-131.1,-33.9,-339.0,145,1627817)
  spawnMobile("yavin4", "cavern_spider",180,-135.5,-33.8,-342.8,-1,1627817)

  -- cavecages3 (1627818)
  spawnMobile("yavin4", "cavern_spider",180,-118.9,-34.0,-349.2,-98,1627818)
  spawnMobile("yavin4", "cavern_spider",180,-134.5,-34.0,-373.2,-2,1627818)
  spawnMobile("yavin4", "enhanced_kliknik",180,-129.4,-33.6,-384.1,-2,1627818)

  -- cavecages4 (1627819)
  spawnMobile("yavin4", "enhanced_kliknik",180,-87,-34.1,-386.5,210,1627819)
  spawnMobile("yavin4", "enhanced_force_kliknik",180,-86.5,-33.9,-372.8,-91,1627819)
  spawnMobile("yavin4", "enhanced_force_kliknik",180,-88.0,-34.6,-365.9,-102,1627819)
  spawnMobile("yavin4", "enhanced_force_kliknik",180,-71.5,-34,-348.1,-95,1627819)
  spawnMobile("yavin4", "enhanced_force_kliknik",180,-72.6,-33.8,-376.0,-168,1627819)
  spawnMobile("yavin4", "enhanced_force_kliknik",180,-72.7,-34.2,-382.5,-179,1627819)

  -- largecavehall3 (1627820)
  spawnMobile("yavin4", "enhanced_force_kliknik",180,-69.0,-34.0,-407.2,-7,1627820)
  spawnMobile("yavin4", "enhanced_force_kliknik",180,-46.8,-34.0,-407.5,92,1627820)
  spawnMobile("yavin4", "enhanced_force_kliknik",180,-28.5,-34.2,-408.4,-27,1627820)

  -- transition10 (1627821)
  spawnMobile("yavin4", "alert_droideka",180,-11.9,-34.0,-412.5,179,1627821)

  -- grandcageroom (1627822)
  spawnMobile("yavin4", "biogenic_scientist_geonosian", 1, 7.4, -22, -333, 180, 1627822)
  spawnMobile("yavin4", "cavern_spider",180,4.1,-34.0,-402.4,171,1627822)
  spawnMobile("yavin4", "enhanced_force_kliknik",180,16.5,-34.0,-368.3,161,1627822)
  spawnMobile("yavin4", "enhanced_kliknik",180,24.0,-34.0,-397.1,117,1627822)
  spawnMobile("yavin4", "enhanced_force_kliknik",180,22.9,-34.0,-370.1,11,1627822)
  spawnMobile("yavin4", "cavern_spider",180,24.8,-24.0,-333.8,87,1627822)
  spawnMobile("yavin4", "cavern_spider",180,13.3,-24.0,-341.6,89,1627822)
  spawnMobile("yavin4", "cavern_spider",180,13.4,-22.0,-337.3,-179,1627822)

  -- largeendcave (1627823)
  spawnMobile("yavin4", "acklay",7200,101.1,-34.3,-321.6,-136,1627823, true) --Randomized respawn
  spawnMobile("yavin4", "enhanced_kwi",180,48.0,-34.0,-334.4,0,1627823)
  spawnMobile("yavin4", "cavern_spider",180,91.2,-33.9,-347.9,5,1627823)
  spawnMobile("yavin4", "enhanced_kliknik",180,98.0,-34.1,-334.4,-53,1627823)
  spawnMobile("yavin4", "enhanced_kliknik",180,120.2,-33.9,-330.6,-33,1627823)
  spawnMobile("yavin4", "cavern_spider",180,85.0,-33.8,-309.1,143,1627823)
  spawnMobile("yavin4", "cavern_spider",180,74.7,-34.1,-329.0,-90,1627823)

  -- spiralhallway (1627824)
  spawnMobile("yavin4", "enhanced_kwi",180,9.5,-16.0,-27.9,89,1627824)
  spawnMobile("yavin4", "enhanced_kwi",180,10.8,-6.3,-7.8,-93,1627824)


  -- Heralds, not in lab
  if isZoneEnabled("corellia") then
    spawnMobile("corellia", "herald_biogenic_teraeza", 60, 21.3645, 1.28309, 9.48413, 142.744, 1935823)
  end

  if isZoneEnabled("naboo") then
    spawnMobile("naboo", "herald_biogenic_harmon", 60, 5094, -192, 6754, -173, 0)
  end

  spawnMobile("yavin4", "herald_biogenic_gardo", 60, -3.8, 0.1, -3.8, 88, 1713374)
end

--[[
function GeonosianLabScreenPlay:spawnMobiles()

	if isZoneEnabled("corellia") then
		spawnMobile("corellia", "herald_biogenic_teraeza", 60, 21.3645, 1.28309, 9.48413, 142.744, 1935823)
	end
	if isZoneEnabled("naboo") then
		spawnMobile("naboo", "herald_biogenic_harmon", 60, 5094, -192, 6754, -173, 0)
	end

	spawnMobile("yavin4", "herald_biogenic_gardo", 60, -3.8, 0.1, -3.8, 88, 1713374)
	spawnMobile("yavin4", "acklay", math.random(1500, 2100),101.1,-34.3,-321.6,-136,1627823, true) -- Randomized respawn between 25 and 35mins.
	spawnMobile("yavin4", "enhanced_gaping_spider",math.random(900, 1260),-130,-22.1,-85,-180,1627794, true) -- Randomized respawn between 15mins to 21mins.

	spawnMobile("yavin4", "biogenic_crazyguy", 1, -2.8, 10.8, 10.2, 69, 1627781)--biogen_crazy
	spawnMobile("yavin4", "biogenic_securitytech", 1, -48, -18, -31, -180, 1627785)--biogen_security
	spawnMobile("yavin4", "biogenic_scientist_human", 1, 23.8, -32, -83.2, 130, 1627798)--biogen_human
	spawnMobile("yavin4", "biogenic_construction", 1, -134.5, -21.7, -74.8, 90, 1627794)--biogen_constuc
	spawnMobile("yavin4", "biogenic_engineertech", 1,-107.7,-18,-33.8,176,1627790)--biogen_engineer
	spawnMobile("yavin4", "biogenic_assistant", 1, -36, -21.9, -162.8, 0, 1627803)--biogen_assistant
	spawnMobile("yavin4", "biogenic_scientist_generic_01", 1, -72.0, -34, -272.9, 0, 1627812)--biogen_gen01
	spawnMobile("yavin4", "biogenic_scientist_generic_02", 1, -127.2, -34, -189.0, -93, 1627815)--biogen_gen02
	spawnMobile("yavin4", "biogenic_scientist_geonosian", 1, 7.4, -22, -333, 180, 1627822) -- biogen_geo

	spawnMobile("yavin4", "imperial_observer",600,-23,-22,-116,-90,1627802)
	spawnMobile("yavin4", "imperial_observer",600,-16.4,-22,-114.5,-150,1627802)
	spawnMobile("yavin4", "crazed_geonosian_guard",600,1.2,9.1,-8.1,63,1627781)
	spawnMobile("yavin4", "crazed_geonosian_guard",600,0.6,9.5,-3.5,99,1627781)
	spawnMobile("yavin4", "crazed_geonosian_guard",600,26.6,10.3,-13.3,-8,1627782)
	spawnMobile("yavin4", "crazed_geonosian_guard",600,32.3,9.5,-8.1,-105,1627782)
	spawnMobile("yavin4", "crazed_geonosian_guard",600,34.7,10.3,-14.4,-70,1627782)
	spawnMobile("yavin4", "crazed_geonosian_guard",600,37.4,9.8,-8.2,-109,1627782)
	spawnMobile("yavin4", "crazed_geonosian_guard",600,-55.9,-18,-33.9,95,1627785)
	spawnMobile("yavin4", "crazed_geonosian_guard",600,-55.6,-18,-43.2,72,1627785)
	spawnMobile("yavin4", "crazed_geonosian_guard",600,-38.7,-18,-47.5,-75,1627785)
	spawnMobile("yavin4", "crazed_geonosian_sentry",600,-66.7,-19,-41.2,-77,1627788)
	spawnMobile("yavin4", "crazed_geonosian_guard",600,-70.5,-18.9,-34.5,-161,1627788)
	spawnMobile("yavin4", "crazed_geonosian_sentry",600,-83.9,-18.5,-42.3,85,1627788)
	spawnMobile("yavin4", "crazed_geonosian_guard",600,-36,-22,-151.4,180,1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard",600,-26.8,-22.9,-158,-90,1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard",600,-19.4,-22.6,-151.7,-135,1627803)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-62,-21.8,-109.6,0,1627792)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-48,-21.8,-158,0,1627800)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-48,-21.8,-143,0,1627800)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-41,-21.8,-136,-90,1627801)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-88.3,-21.8,-110.3,210,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-98,-21.9,-114.7,50,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-107.3,-22.2,-96.6,180,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-108,-21.8,-126,0,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-123,-22,-109.5,80,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-134.7,-20.9,-112.2,77,1627793)
	spawnMobile("yavin4", "alert_droideka",600,-34.2,-22,-128,-180,1627801)
	spawnMobile("yavin4", "alert_droideka",600,-3.8,-30.2,-92,-180,1627796)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-16.8,-30.2,-115.1,22,1627796)
	spawnMobile("yavin4", "alert_droideka",600,-18,-18,-36,0,1627784)
	spawnMobile("yavin4", "alert_droideka",600,-62,-18,-59.5,-180,1627786)
	spawnMobile("yavin4", "alert_droideka",600,-90.5,-18,-76,0,1627789)
	spawnMobile("yavin4", "alert_droideka",600,-53.5,-18.2,-81.7,-90,1627791)
	spawnMobile("yavin4", "alert_droideka",600,-108,-34,-214,89,1627808)
	spawnMobile("yavin4", "alert_droideka",600,-61.5,-34,-252,-90,1627811)
	spawnMobile("yavin4", "geonosian_scientist",600,-116.5,-20,-38.4,88,1627790)
	spawnMobile("yavin4", "enhanced_kwi",600,9.5,-16.0,-27.9,89,1627824)
	spawnMobile("yavin4", "enhanced_kwi",600,10.8,-6.3,-7.8,-93,1627824)
	spawnMobile("yavin4", "enhanced_kwi",600,-104.2,-28.7,-193.4,0,1627807)
	spawnMobile("yavin4", "enhanced_kwi",600,-143.2,-34,-180.8,-139,1627815)
	spawnMobile("yavin4", "enhanced_kliknik",900,-129.0,-34,-192.6,-32,1627815)
	spawnMobile("yavin4", "geonosian_scientist",600,-124.3,-34.0,-199.5,-60,1627815)
	spawnMobile("yavin4", "geonosian_scientist",600,-60.0,-34.0,-273.7,0,1627812)
	spawnMobile("yavin4", "alert_droideka",600,-63.9,-22.0,-143.0,-3,1627804)
	spawnMobile("yavin4", "alert_droideka",600,-129.8,-34.0,-267.9,87,1627816)
	spawnMobile("yavin4", "enhanced_kliknik",900,26,-31.5,-78,170,1627798)
	spawnMobile("yavin4", "enhanced_kliknik",900,36.5,-29.9,-82.7,-120,1627798)
	spawnMobile("yavin4", "enhanced_kliknik",900,29.5,-30.1,-88,-45,1627798)
	spawnMobile("yavin4", "enhanced_kliknik",900,-139.8,-34,-194.3,57,1627815)
	spawnMobile("yavin4", "enhanced_kliknik",900,-64.9,-34,-266.5,-143,1627812)
	spawnMobile("yavin4", "enhanced_kliknik",900,-87,-34.1,-386.5,210,1627819)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-128.2,-34.4,-322.4,-30,1627817)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-143.5,-33.5,-321.7,134,1627817)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-131.1,-33.9,-339.0,145,1627817)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-135.5,-33.8,-342.8,-1,1627817)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-118.9,-34.0,-349.2,-98,1627818)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-134.5,-34.0,-373.2,-2,1627818)
	spawnMobile("yavin4", "enhanced_kliknik",900,-129.4,-33.6,-384.1,-2,1627818)
	spawnMobile("yavin4", "enhanced_force_kliknik",900,-86.5,-33.9,-372.8,-91,1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",900,-88.0,-34.6,-365.9,-102,1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",900,-71.5,-34,-348.1,-95,1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",900,-72.6,-33.8,-376.0,-168,1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",900,-72.7,-34.2,-382.5,-179,1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",900,-69.0,-34.0,-407.2,-7,1627820)
	spawnMobile("yavin4", "enhanced_force_kliknik",900,-46.8,-34.0,-407.5,92,1627820)
	spawnMobile("yavin4", "enhanced_force_kliknik",900,-28.5,-34.2,-408.4,-27,1627820)
	spawnMobile("yavin4", "alert_droideka",600,-11.9,-34.0,-412.5,179,1627821)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,4.1,-34.0,-402.4,171,1627822)
	spawnMobile("yavin4", "enhanced_force_kliknik",900,16.5,-34.0,-368.3,161,1627822)
	spawnMobile("yavin4", "enhanced_kliknik",900,24.0,-34.0,-397.1,117,1627822)
	spawnMobile("yavin4", "enhanced_force_kliknik",900,22.9,-34.0,-370.1,11,1627822)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,24.8,-24.0,-333.8,87,1627822)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,13.3,-24.0,-341.6,89,1627822)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,13.4,-22.0,-337.3,-179,1627822)
	spawnMobile("yavin4", "enhanced_kwi",600,48.0,-34.0,-334.4,0,1627823)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,91.2,-33.9,-347.9,5,1627823)
	spawnMobile("yavin4", "enhanced_kliknik",900,98.0,-34.1,-334.4,-53,1627823)
	spawnMobile("yavin4", "enhanced_kliknik",900,120.2,-33.9,-330.6,-33,1627823)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,85.0,-33.8,-309.1,143,1627823)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,74.7,-34.1,-329.0,-90,1627823)

	--[Anti-LootMacro Check]
	spawnMobile("yavin4", "mercenary_sentry",120,-74.9,-22,-153.7,-119,1627805)
	spawnMobile("yavin4", "mercenary_sentry",120,-74.3,-22,-162.3,-40,1627805)
	spawnMobile("yavin4", "mercenary_sentry",120,-82.3,-22,-161.7,74,1627805)
	spawnMobile("yavin4", "mercenary_sentry",120,-82.2,-22,-155.1,106,1627805)
	--[Anti-LootMacro Check]

	--[1627793]
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-136.281,-21.9195,-107.037,100,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-134.739,-21.9293,-98.6984,-180,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-127.746,-21.5192,-99.6317,-180,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-109.496,-21.9789,-102.542,152,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-110.414,-21.9385,-119.157,12,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-98.5207,-22.112,-106.8,114,1627793)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-87.3095,-22.0783,-114.962,54,1627793)
	--[1627793]

	spawnMobile("yavin4", "enhanced_cavern_spider",900,-15.5608,-29.9814,-109.619,104,1627796)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-9.03449,-30.2318,-110.233,-10,1627796)
	spawnMobile("yavin4", "enhanced_cavern_spider",900,-3.14966,-29.8641,-110.242,-92,1627796)
	spawnMobile("yavin4", "enhanced_kliknik",900, 34.5883, -29.739, -87.0682, -49, 1627798)
	spawnMobile("yavin4", "enhanced_kliknik",900, 34.053, -31.4091, -78.1577, -151, 1627798)
	spawnMobile("yavin4", "enhanced_kliknik",900, 17.559, -30.2715, -70.4098, 104, 1627798)
	spawnMobile("yavin4", "enhanced_kliknik",900, 22.2525, -30.8983, -68.4103, 166, 1627798)
	spawnMobile("yavin4", "enhanced_kliknik",900, 24.1396, -31.4499, -86.7594, -5, 1627798)
	spawnMobile("yavin4", "enhanced_kliknik",900, 25.7397, -30.0366, -97.6475, -91, 1627797)
	spawnMobile("yavin4", "enhanced_kliknik",900, 97.541, -33.6629, -315.264, -138, 1627823)
	spawnMobile("yavin4", "enhanced_kliknik",900, 105.561, -33.8948, -327.069, -111, 1627823)
	spawnMobile("yavin4", "enhanced_kliknik",900, 92.8565, -34.3936, -320.798, -146, 1627823)
	spawnMobile("yavin4", "enhanced_kliknik",900, 68.3836, -33.8069, -333.971, -4, 1627823)
	spawnMobile("yavin4", "enhanced_kliknik",900, 67.7088, -34.1103, -324.325, 178, 1627823)
	spawnMobile("yavin4", "alert_droideka",600, -14.1654, -33.7943, -419.905, -88, 1627821)
	spawnMobile("yavin4", "alert_droideka",600, -96.4077, -26, -178.065, 88, 1627806)
	spawnMobile("yavin4", "alert_droideka",600, -137.526, -34, -212.02, 90, 1627814)
	spawnMobile("yavin4", "alert_droideka",600, -125.998, -34, -256.001, -4, 1627813)
	spawnMobile("yavin4", "alert_droideka",600, -136.393, -33.7989, -282.031, 88, 1627816)

	-- Annoying survival check at beginnig of cave --
	-- [1627788]
	spawnMobile("yavin4", "crazed_geonosian_guard",300, -77.6631, -18.581, -31.3627, 143, 1627788) 
	spawnMobile("yavin4", "crazed_geonosian_guard",300, -68.0155, -19.1212, -37.35, -128, 1627788)
	spawnMobile("yavin4", "crazed_geonosian_guard",300, -77.6182, -18.6051, -40.3633, -178, 1627788)
	spawnMobile("yavin4", "crazed_geonosian_guard",300, -76.7914, -18.4807, -43.8397, -36, 1627788)
	spawnMobile("yavin4", "crazed_geonosian_guard",300, -83.529, -18.508, -40.4251, 101, 1627788)
	spawnMobile("yavin4", "crazed_geonosian_guard",300, -74.2385, -18.3719, -49.4647, -174, 1627788)
	spawnMobile("yavin4", "crazed_geonosian_guard",300, -77.3553, -18.1229, -49.4936, 168, 1627788)
	-- [1627788]
	-- Annoying survival check at beginnig of cave --

	-- [1627812]
	spawnMobile("yavin4", "enhanced_kwi",600, -72.0886, -34, -276.774, 179, 1627812)
	spawnMobile("yavin4", "enhanced_kwi",600, -60.1653, -34, -276.636, 177, 1627812)
	spawnMobile("yavin4", "enhanced_kwi",600, -57.2151, -34, -264.249, -109, 1627812)
	spawnMobile("yavin4", "enhanced_kwi",600, -71.5566, -34, -264.136, 90, 1627812)
	spawnMobile("yavin4", "enhanced_kwi",600, -55.6416, -34, -283.675, -31, 1627812)
	-- [1627812]



	--[1627819]
	spawnMobile("yavin4", "enhanced_force_kliknik",900, -52.1084, -33.5828, -373.367, -87, 1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",900, -51.5294, -33.9669, -365.18, -103, 1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",900, -57.7441, -33.6945, -360.386, -134, 1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",900, -76.2812, -34.1583, -363.449, -147, 1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",900, -87.0132, -34.1783, -369.616, -87, 1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",900, -88.667, -34.3344, -362.137, -110, 1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",900, -67.6258, -34.1073, -387.756, -35, 1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik",900, -76.7003, -33.7948, -389.124, 28, 1627819)
	--[1627819]

	--[1627822]
	spawnMobile("yavin4", "enhanced_force_kliknik",900, 13.6352, -34, -382.97, 177, 1627822)
	spawnMobile("yavin4", "enhanced_force_kliknik",900, 23.1283, -34, -381.871, -171, 1627822)
	spawnMobile("yavin4", "enhanced_force_kliknik",900, 9.96341, -34, -404.494, -141, 1627822)
	spawnMobile("yavin4", "enhanced_force_kliknik",900, 36.0805, -34, -341.97, -132, 1627822)
	spawnMobile("yavin4", "enhanced_force_kliknik",900, 32.9608, -34, -339.919, -132, 1627822)
	spawnMobile("yavin4", "enhanced_force_kliknik",900, 31.0486, -34, -338.153, -132, 1627822)
	spawnMobile("yavin4", "enhanced_force_kliknik",900, 29.1903, -34, -334.87, -128, 1627822)
	--[1627822]

	--[1627820]
	spawnMobile("yavin4", "enhanced_force_kliknik",900, -75.7891, -33.7396, -406.2, 35, 1627820)
	spawnMobile("yavin4", "enhanced_force_kliknik",900, -56.1903, -33.8068, -413.044, -23, 1627820)
	spawnMobile("yavin4", "enhanced_force_kliknik",900, -42.6794, -34.017, -412.7, -4, 1627820)
	spawnMobile("yavin4", "enhanced_force_kliknik",900, -25.8643, -34.2448, -412.436, -8, 1627820)
	--[1627820]


end
--]]


function GeonosianLabScreenPlay:notifyGasValveUsed(pGasValve, pPlayer, radialSelected)
	if (pPlayer == nil) then
		return 0
	end

	if (radialSelected == 20) then
		local isGasLeaking = readData("geonosian_lab:gasleak")
		if (isGasLeaking == 1) then
			CreatureObject(pPlayer):sendSystemMessage("@dungeon/geonosian_madbio:gas_off") --You have shut off the gas leak.
			local gasLeakID = readData("geonosian_lab:gasLeakID")
			local pGasLeak = getSceneObject(gasLeakID)

			if (pGasLeak ~= nil) then
				SceneObject(pGasLeak):destroyObjectFromWorld()
			end

			deleteData("geonosian_lab:gasLeakID")

			writeData("geonosian_lab:gasleak", 0)
			createServerEvent(self.poisonShutoffDuration, "GeonosianLabScreenPlay", "restartGasLeak", "GasLeakRestart")
		else
			CreatureObject(pPlayer):sendSystemMessage("@dungeon/geonosian_madbio:gas_already_off") --The gas leak has already been repaired...
		end
	end

	return 0
end

function GeonosianLabScreenPlay:notifyKeypadUsed(pKeypad, pPlayer, radialSelected)
	if (pKeypad == nil or pPlayer == nil) then
		return 0
	end

	if (radialSelected == 20) then
		local suiManager = LuaSuiManager()
		suiManager:sendKeypadSui(pKeypad, pPlayer, "GeonosianLabScreenPlay", "keypadSuiCallback")
	end

	return 0
end

function GeonosianLabScreenPlay:restartGasLeak()
	local pGasLeak = spawnSceneObject("yavin4", "object/tangible/dungeon/poison_gas_cloud.iff", 21.7, 3.3, -29.1, 1627783, 0, 0, 0, 0)

	if (pGasLeak ~= nil) then
		writeData("geonosian_lab:gasLeakID", SceneObject(pGasLeak):getObjectID())
		writeData("geonosian_lab:gasleak", 1)
	end
end

function GeonosianLabScreenPlay:keypadSuiCallback(pCreature, pSui, eventIndex, enteredCode, pressedButton)
	local cancelPressed = (eventIndex == 1)

	if (pCreature == nil or pSui == nil or cancelPressed) then
		return
	end

	local suiBox = LuaSuiBox(pSui)
	local pUsingObject = suiBox:getUsingObject()

	if (pUsingObject == nil) then
		return
	end

	local keypadIndex = readData(SceneObject(pUsingObject):getObjectID() .. ":geonosian_lab:keypad_index")
	local keypadCode = self.keypadCodes[keypadIndex]

	if (pressedButton == "enter") then
		if (tonumber(enteredCode) == keypadCode) then
			CreatureObject(pCreature):sendSystemMessage("@dungeon/geonosian_madbio:right_code") --You have successfully entered the code for this door.
			self:givePermission(pCreature, "GeoLabKeypad" .. keypadIndex)
		else
			CreatureObject(pCreature):sendSystemMessage("@dungeon/geonosian_madbio:bad_code") --The number that you entered is not a valid code for this door.
		end
	elseif (pressedButton == "slice") then
		if (CreatureObject(pCreature):hasSkill("combat_smuggler_slicing_01")) then
			CreatureObject(pCreature):sendSystemMessage("@dungeon/geonosian_madbio:hack_success") --You have successfully hacked this terminal.
			self:givePermission(pCreature, "GeoLabKeypad" .. keypadIndex)
		else
			CreatureObject(pCreature):sendSystemMessage("@dungeon/geonosian_madbio:hack_fail") --Unable to successfully slice the keypad, you realize that the only way to reset it is to carefully repair what damage you have done.
		end
	elseif (pressedButton == "keycard") then
		if (keypadIndex ~= 4 and self:hasGeoItem(pCreature, "object/tangible/loot/dungeon/geonosian_mad_bunker/passkey.iff")) then
			self:removeGeoItem(pCreature, "object/tangible/loot/dungeon/geonosian_mad_bunker/passkey.iff")
			CreatureObject(pCreature):sendSystemMessage("@dungeon/geonosian_madbio:keycard_success") --You have successfully used a keycard on this door.
			self:givePermission(pCreature, "GeoLabKeypad" .. keypadIndex)
		elseif (keypadIndex == 4 and self:hasGeoItem(pCreature, "object/tangible/loot/dungeon/geonosian_mad_bunker/engineering_key.iff")) then
			self:removeGeoItem(pCreature, "object/tangible/loot/dungeon/geonosian_mad_bunker/engineering_key.iff")
			CreatureObject(pCreature):sendSystemMessage("@dungeon/geonosian_madbio:keycard_success") --You have successfully used a keycard on this door.
			self:givePermission(pCreature, "GeoLabKeypad" .. keypadIndex)
		end
	end
end

function GeonosianLabScreenPlay:notifyEnteredLab(pBuilding, pPlayer)
	if pPlayer == nil or not SceneObject(pPlayer):isCreatureObject() then
		return 0
	end

	if (CreatureObject(pPlayer):isAiAgent()) then
		return 0
	end

	for i = 1, #self.lockedCells, 1 do
		self:removePermission(pPlayer, "GeoLabKeypad" .. i)
	end

	local playerID = SceneObject(pPlayer):getObjectID()

	deleteData(playerID .. ":geo_engineertech_talked")
	deleteData(playerID .. ":geo_assistant_talked")
	deleteData(playerID .. ":geo_security_tech_talked")
	CreatureObject(pPlayer):removeScreenPlayState(1, "geonosian_lab_datapad_delivered")
	CreatureObject(pPlayer):removeScreenPlayState(1, "geonosian_lab_tenloss")

	CreatureObject(pPlayer):sendSystemMessage("@dungeon/geonosian_madbio:relock") --Security systems at this facility have been cycled and reset.

	return 0
end

function GeonosianLabScreenPlay:notifyLockedDoorArea(pArea, pPlayer)
	if (pPlayer == nil or not SceneObject(pPlayer):isCreatureObject()) then
		return 0
	end

	if (CreatureObject(pPlayer):isAiAgent()) then
		return 0
	end

	local areaDoor = readData(SceneObject(pArea):getObjectID() .. ":GeoLabKeypad")
	if not self:hasPermission(pPlayer, "GeoLabKeypad" .. areaDoor) then
		CreatureObject(pPlayer):sendSystemMessage("@dungeon/geonosian_madbio:door_locked") -- This door is locked.
	end

	return 0
end

function GeonosianLabScreenPlay:setupPermissionGroups()
	for i = 1, #self.lockedCells, 1 do
		local pCell = getSceneObject(self.lockedCells[i])
		if pCell ~= nil then
			SceneObject(pCell):setContainerInheritPermissionsFromParent(false)
			SceneObject(pCell):clearContainerDefaultDenyPermission(WALKIN)
			SceneObject(pCell):clearContainerDefaultAllowPermission(WALKIN)
			SceneObject(pCell):setContainerAllowPermission("GeoLabKeypad" .. i, WALKIN)
			SceneObject(pCell):setContainerDenyPermission("GeoLabKeypad" .. i, MOVEIN)
		end
	end
end

function GeonosianLabScreenPlay:givePermission(pPlayer, permissionGroup)
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost ~= nil) then
		PlayerObject(pGhost):addPermissionGroup(permissionGroup, true)
	end
end

function GeonosianLabScreenPlay:removePermission(pPlayer, permissionGroup)
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	if (PlayerObject(pGhost):hasPermissionGroup(permissionGroup)) then
		PlayerObject(pGhost):removePermissionGroup(permissionGroup, true)
	end
end

function GeonosianLabScreenPlay:hasPermission(pPlayer, permissionGroup)
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return false
	end

	return PlayerObject(pGhost):hasPermissionGroup(permissionGroup)
end

function GeonosianLabScreenPlay:notifyEnteredPoisonGas(pActiveArea, pMovingObject)
	if (pMovingObject == nil or pActiveArea == nil or not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end

	if (CreatureObject(pMovingObject):isAiAgent() and not AiAgent(pMovingObject):isPet()) then
		return 0
	end

	local objectID = CreatureObject(pMovingObject):getObjectID()
	local isGasLeaking = readData("geonosian_lab:gasleak")

	if (isGasLeaking == 0) then
		return 0
	end

	if (self:hasRebreather(pMovingObject)) then
		CreatureObject(pMovingObject):sendSystemMessage("@dungeon/geonosian_madbio:gasmask") --Your gasmask diffuses the poison gas and you are able to breathe with no difficulty.
	else
		local areaID = SceneObject(pActiveArea):getObjectID()

		if (ActiveArea(pActiveArea):getCellObjectID() == 1627783) then
			CreatureObject(pMovingObject):addDotState(pMovingObject, POISONED, getRandomNumber(20) + 80, HEALTH, 1000, 2000, areaID, 0)
		else
			CreatureObject(pMovingObject):addDotState(pMovingObject, POISONED, getRandomNumber(100) + 200, HEALTH, 1000, 2000, areaID, 0)
		end
		CreatureObject(pMovingObject):sendSystemMessage("@dungeon/geonosian_madbio:toxic_fumes") --You breathe in toxic fumes!
	end
	return 0
end

function GeonosianLabScreenPlay:notifyElectroShock(pActiveArea, pMovingObject)
	if (pMovingObject == nil or pActiveArea == nil or not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end

	if (SceneObject(pMovingObject):isAiAgent() and not AiAgent(pMovingObject):isPet()) then
		return 0
	end

	CreatureObject(pMovingObject):inflictDamage(pMovingObject, 0, 1000, 0)
	CreatureObject(pMovingObject):sendSystemMessage("@dungeon/geonosian_madbio:shock") --You feel electricity coursing through your body!
	return 0
end


function GeonosianLabScreenPlay:hasRebreather(pCreature)
	if (pCreature == nil) then
		return false
	end

	--TODO: Change this to be a skill mod check for private_poison_rebreather
	local pRebreather = CreatureObject(pCreature):getSlottedObject("eyes")

	if pRebreather == nil then
		return false
	end

	local headSlot = SceneObject(pRebreather):getTemplateObjectPath()
	return (headSlot == "object/tangible/wearables/goggles/rebreather.iff" or headSlot == "object/tangible/wearables/armor/mandalorian/armor_mandalorian_helmet.iff")
end

function GeonosianLabScreenPlay:respawnDebris(pDebris)
	if (pDebris == nil) then
		return
	end

	TangibleObject(pDebris):setConditionDamage(0, false)
	local debrisData = self.debris[readData(SceneObject(pDebris):getObjectID() .. ":geonosian_lab:debris_index")]

	local pCell = getSceneObject(debrisData.cell)

	if (pCell ~= nil) then
		SceneObject(pCell):transferObject(pDebris, -1, true)
	end
end

function GeonosianLabScreenPlay:notifyDebrisDestroyed(pDebris, pPlayer)
	if (pPlayer == nil or pDebris == nil) then
		return 0
	end

	createEvent(240000, "GeonosianLabScreenPlay", "respawnDebris", pDebris, "")
	SceneObject(pDebris):destroyObjectFromWorld()

	CreatureObject(pPlayer):clearCombatState(1)
	return 0
end

function GeonosianLabScreenPlay:hasGeoItem(pPlayer, itemTemplate)
	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

	if (pInventory == nil) then
		return 0
	end

	local pItem = getContainerObjectByTemplate(pInventory, itemTemplate, true)

	return pItem ~= nil
end

function GeonosianLabScreenPlay:removeGeoItem(pPlayer, itemTemplate)
	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

	if (pInventory == nil) then
		return
	end

	local pItem = getContainerObjectByTemplate(pInventory, itemTemplate, true)

	if (pItem ~= nil) then
		SceneObject(pItem):destroyObjectFromWorld()
		SceneObject(pItem):destroyObjectFromDatabase()
	end
end

function GeonosianLabScreenPlay:giveGeoItem(pPlayer, itemTemplate)
	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

	if (not self:hasGeoItem(pPlayer, itemTemplate)) then
		local pItem = giveItem(pInventory, itemTemplate, -1)
		if (pItem ~= nil) then
			SceneObject(pItem):sendTo(pPlayer)
		end
	end
end
