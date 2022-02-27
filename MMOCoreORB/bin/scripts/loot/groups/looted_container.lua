looted_container = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		-- Junk/Misc Items (25% chance)
		-- Common
		{itemTemplate = "broken_decryptor", weight = 77719},
		{itemTemplate = "camera", weight = 77719},
		{itemTemplate = "corrupt_datadisk", weight = 77719},
		{itemTemplate = "corsec_id_badge", weight = 77719},
		{itemTemplate = "damaged_datapad", weight = 77719},
		{itemTemplate = "decorative_bowl", weight = 77719},
		{itemTemplate = "decorative_shisa", weight = 77719},
		{itemTemplate = "dermal_analyzer", weight = 77719},
		{itemTemplate = "dud_firework_grey", weight = 77719},
		{itemTemplate = "dud_firework_red", weight = 77719},
		{itemTemplate = "empty_cage", weight = 77719},
		{itemTemplate = "expensive_basket", weight = 77719},
		{itemTemplate = "expired_ticket", weight = 77719},
		{itemTemplate = "hyperdrive_part", weight = 77719},
		{itemTemplate = "ledger", weight = 77719},
		{itemTemplate = "locked_briefcase", weight = 77719},
		{itemTemplate = "locked_container", weight = 328719},
		{itemTemplate = "loudspeaker", weight = 77719},
		{itemTemplate = "palm_frond", weight = 77719},
		{itemTemplate = "photographic_image", weight = 77719},
		{itemTemplate = "recorded_image_1", weight = 77719},
		{itemTemplate = "recording_rod", weight = 77719},
		{itemTemplate = "slave_collar", weight = 77719},
		{itemTemplate = "used_ticket", weight = 77719},
		{itemTemplate = "worklight", weight = 77719},

		-- Uncommon
		{itemTemplate = "force_color_crystal", weight = 43861},
		{itemTemplate = "force_power_crystal", weight = 87722},
		{itemTemplate = "jedi_holocron_dark", weight = 43861},
		{itemTemplate = "jedi_holocron_light", weight = 43861},
		{itemTemplate = "attachment_clothing", weight = 43860},
		{itemTemplate = "attachment_armor", weight = 43860},

		-- Weapons (24% chance)
		{groupTemplate = "weapons_all", weight = 2400000},

		-- Armors (24% chance)
		{groupTemplate = "armor_all", weight = 2400000},

		-- Clothing (25% chance)
		{groupTemplate = "wearables_all", weight = 2500000},

		-- Vet rewards (2% chance)
		{groupTemplate = "veteran_rewards_90_days", weight = 100000},
		{groupTemplate = "veteran_rewards_180_days", weight = 70000},
		{groupTemplate = "veteran_rewards_270_days", weight = 30000},
	}
}

addLootGroupTemplate("looted_container", looted_container)
