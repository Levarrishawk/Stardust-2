kaas_smuggler_starport = ScreenPlay:new {
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

registerScreenPlay("kaas_smuggler_starport", true)

function kaas_smuggler_starport:start()
	self:spawnMobiles()
	self:spawnSceneObjects()
end

function kaas_smuggler_starport:spawnSceneObjects()

 spawnSceneObject("kaas", "object/static/structure/general/streetlamp_large_blue_style_01_on.iff", 2830.9, 126.3, 3880.9, 0, math.rad(90) )
 spawnSceneObject("kaas", "object/static/structure/general/streetlamp_large_blue_style_01_on.iff", 2842.2, 125.8, 3870.5, 0, math.rad(28) )
 
 

end

function kaas_smuggler_starport:spawnMobiles()

-- Mobiles

	spawnMobile("kaas", "rodian_thug", 200, 2866.6, 124, 3874.7, 121, 0)
	spawnMobile("kaas", "rodian_thug", 200, 2859.3, 125, 3866, 121, 0)
	
	spawnMobile("kaas", "junk_dealer", 200, 2831.9, 126.3, 3881.3, 104, 0)
	

end
