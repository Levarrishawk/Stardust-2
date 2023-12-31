local ObjectManager = require("managers.object.object_manager")

StardustVendorScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "StardustVendorScreenPlay",

}

registerScreenPlay("StardustVendorScreenPlay", true)

function StardustVendorScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
    spawnSceneObject("tatooine", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 3515.6, 5.1, -4796.3, 0, math.rad(0) )
		spawnMobile("tatooine", "stardust_vendor_npc", 60, 3514.9, 5.0, -4797.1, 124, 0)
		
	end
end

