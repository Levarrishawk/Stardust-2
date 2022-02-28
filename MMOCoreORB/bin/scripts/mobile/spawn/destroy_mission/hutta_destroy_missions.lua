hutta_destroy_missions = {
	minLevelCeiling = 25,

	lairSpawns = {	
		{
			lairTemplateName = "tatooine_spice_fiend_neutral_small_theater",
			minDifficulty = 6,
			maxDifficulty = 10,
			size = 25,
		},
		{
			lairTemplateName = "tatooine_rodian_clan_outpost_neutral_large_theater",
			minDifficulty = 10,
			maxDifficulty = 14,
			size = 25,
		},
		{
			lairTemplateName = "tatooine_valarian_swooper_neutral_small_theater",
			minDifficulty = 10,
			maxDifficulty = 14,
			size = 25,
		},
		{
			lairTemplateName = "tatooine_valarian_assasin_neutral_large_theater",
			minDifficulty = 14,
			maxDifficulty = 18,
			size = 25,
		},		
	}
}

addDestroyMissionGroup("hutta_destroy_missions", hutta_destroy_missions);
