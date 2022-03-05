KaasFacilityScreenPlay = ScreenPlay:new {
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

registerScreenPlay("KaasFacilityScreenPlay", true)

function KaasFacilityScreenPlay:start()
	self:spawnMobiles()
end

function KaasFacilityScreenPlay:spawnMobiles()
	-- Sith Shadow Group 1
	spawnMobile("kaas", "sith_shadow_taskmaster", 200, -81.0, 79.0, 6371.0, -116, 0)
	spawnMobile("kaas", "sith_shadow_mercenary", 200, -116.69, 79.0, 6372.0, -116, 0)
	spawnMobile("kaas", "sith_shadow_mercenary", 200, -96.0, 79.0, 6397.0, -116, 0)
	spawnMobile("kaas", "sith_shadow_mercenary", 200, -158.0, 77.0, 6349.0, -116, 0)
	spawnMobile("kaas", "sith_shadow_outlaw", 200, -134.0, 79.0, 6379.0, -116, 0)
	spawnMobile("kaas", "sith_shadow_outlaw", 200, -83.0, 78.0, 6336.0, -116, 0)

	-- Sith Shadow Group 2
	spawnMobile("kaas", "sith_shadow_taskmaster", 200, -28.0, 80.0, 6364.0, -116, 0)
	spawnMobile("kaas", "sith_shadow_mercenary", 200, -32.0, 80.0, 6388.0, -116, 0)
	spawnMobile("kaas", "sith_shadow_mercenary", 200, -15.0, 80.0, 6385.0, -116, 0)
	spawnMobile("kaas", "sith_shadow_mercenary", 200, -13.0, 78.0, 6409.0, -116, 0)
	spawnMobile("kaas", "sith_shadow_outlaw", 200, -28.0, 79.0, 6345.0, -116, 0)
	spawnMobile("kaas", "sith_shadow_outlaw", 200, -100.0, 80.0, 6318.0, -116, 0)

	
   end
