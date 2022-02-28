moraband_destroy_missions = {
	minLevelCeiling = 35,

	lairSpawns = {
		
		{
			lairTemplateName = "lok_marooned_pirate_camp_neutral_medium_theater",
			minDifficulty = 17,
			maxDifficulty = 21,
			size = 25,
		},	
		{
			lairTemplateName = "lok_mynock_lair_neutral_medium",
			minDifficulty = 23,
			maxDifficulty = 27,
			size = 25,
		},	
	}
}

addDestroyMissionGroup("moraband_destroy_missions", moraband_destroy_missions);
