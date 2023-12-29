local ObjectManager = require("managers.object.object_manager")

StardustVendorScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "StardustVendorScreenPlay",

}

registerScreenPlay("StardustVendorScreenPlay", true)

function StardustVendorScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
    --spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 3515.6, 5.0, -4796.3, 0, math.rad(0) )
		spawnMobile("tatooine", "stardust_vendor_npc", 60, 3514, 5, -4798, 135, 0)d
		
	end
end

