naboo_memorial = ScreenPlay:new {
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

registerScreenPlay("naboo_memorial", true)

function naboo_memorial:start()
	self:spawnMobiles()
	self:spawnSceneObjects()
end

function naboo_memorial:spawnSceneObjects()

 spawnSceneObject("naboo", "object/static/structure/naboo/garden_gazebo_lg_s01.iff", 5373, 7.5, 1525, 0, math.rad(0) )
 
 
 

end

function naboo_memorial:spawnMobiles()

-- Mobiles

--	spawnMobile("naboo", "rodian_thug", 200, 2866.6, 124, 3874.7, 121, 0)
	
	

end
