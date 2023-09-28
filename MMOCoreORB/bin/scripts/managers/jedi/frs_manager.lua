frsEnabled = 1

-- Object ID of Enclave buildings
lightEnclaveID = 8525417
darkEnclaveID = 3435626

petitionInterval = 86400000 -- 1 day
votingInterval = 86400000 -- 1 day
acceptanceInterval = 86400000 -- 1 day
maintenanceInterval = 86400000 -- 1 day

requestDemotionDuration = 604800000 -- 7 days
voteChallengeDuration = 604800000 -- 7 days

arenaOpenInterval = 5400000 -- 90 mins
arenaClosedInterval = 5400000 --  108000000 -- 30 hours
arenaChallengeDuration = 3600000 -- 60 mins
arenaChallengeCooldown = 90000000 -- 25 hours

-- Costs are in FRS experience
baseMaintCost = 100
requestDemotionCost = 2000
voteChallengeCost = 1000

maxPetitioners = 11
maxChallenges = 20
missedVotePenalty = 100 -- FRS XP

-- Restrict players from voting for and challenging other characters on their account
sameAccountEnclaveRestrictions = 1

-- { rank, skillName, requiredExperience, playerCap, robe }
lightRankingData = {
	{ 0, "force_rank_light_novice", 0, -1, "object/tangible/wearables/robe/robe_jedi_light_s01.iff" },
	{ 1, "force_rank_light_rank_01", 5000, 10, "object/tangible/wearables/robe/robe_jedi_light_s02.iff" },
	{ 2, "force_rank_light_rank_02", 15000, 10, "object/tangible/wearables/robe/robe_jedi_light_s02.iff" },
	{ 3, "force_rank_light_rank_03", 25000, 10, "object/tangible/wearables/robe/robe_jedi_light_s02.iff" },
	{ 4, "force_rank_light_rank_04", 35000, 10, "object/tangible/wearables/robe/robe_jedi_light_s02.iff" },
	{ 5, "force_rank_light_rank_05", 50000, 9, "object/tangible/wearables/robe/robe_jedi_light_s03.iff"},
	{ 6, "force_rank_light_rank_06", 70000, 9, "object/tangible/wearables/robe/robe_jedi_light_s03.iff" },
	{ 7, "force_rank_light_rank_07", 90000, 9, "object/tangible/wearables/robe/robe_jedi_light_s03.iff" },
	{ 8, "force_rank_light_rank_08", 130000, 8, "object/tangible/wearables/robe/robe_jedi_light_s04.iff" },
	{ 9, "force_rank_light_rank_09", 180000, 8, "object/tangible/wearables/robe/robe_jedi_light_s04.iff" },
	{ 10, "force_rank_light_rank_10", 250000, 11, "object/tangible/wearables/robe/robe_jedi_light_s05.iff" },
	{ 11, "force_rank_light_master", 400000, 1, "object/tangible/wearables/robe/robe_jedi_light_s05.iff" },
}

darkRankingData = {
	{ 0, "force_rank_dark_novice", 0, -1, "object/tangible/wearables/robe/robe_jedi_dark_s01.iff" },
	{ 1, "force_rank_dark_rank_01", 5000, 10, "object/tangible/wearables/robe/robe_jedi_dark_s02.iff" },
	{ 2, "force_rank_dark_rank_02", 15000, 10, "object/tangible/wearables/robe/robe_jedi_dark_s02.iff" },
	{ 3, "force_rank_dark_rank_03", 25000, 10, "object/tangible/wearables/robe/robe_jedi_dark_s02.iff" },
	{ 4, "force_rank_dark_rank_04", 35000, 10, "object/tangible/wearables/robe/robe_jedi_dark_s02.iff" },
	{ 5, "force_rank_dark_rank_05", 50000, 9, "object/tangible/wearables/robe/robe_jedi_dark_s03.iff" },
	{ 6, "force_rank_dark_rank_06", 70000, 9, "object/tangible/wearables/robe/robe_jedi_dark_s03.iff" },
	{ 7, "force_rank_dark_rank_07", 90000, 9, "object/tangible/wearables/robe/robe_jedi_dark_s03.iff" },
	{ 8, "force_rank_dark_rank_08", 130000, 8, "object/tangible/wearables/robe/robe_jedi_dark_s04.iff" },
	{ 9, "force_rank_dark_rank_09", 180000, 8, "object/tangible/wearables/robe/robe_jedi_dark_s04.iff" },
	{ 10, "force_rank_dark_rank_10", 250000, 11, "object/tangible/wearables/robe/robe_jedi_dark_s05.iff" },
	{ 11, "force_rank_dark_master", 400000, 1, "object/tangible/wearables/robe/robe_jedi_dark_s05.iff" },
}

enclaveRoomRequirements = {
	-- Light enclave
	{ 8525444, -1 }, -- entrancehall1
	{ 8525421, 1 }, -- tier1hall1
	{ 8525420, 1 }, -- tier1room
	{ 8525419, 1 }, -- tier1hall2
	{ 8525424, 5 }, -- tier2hall1
	{ 8525423, 5 }, -- tier2room
	{ 8525422, 5 }, -- tier2hall2
	{ 8525433, 8 }, -- tier3hall1
	{ 8525432, 8 }, -- tier3room
	{ 8525431, 8 }, -- tier3hall2
	{ 8525430, 10 }, -- tier4hall1
	{ 8525429, 10 }, -- tier4room
	{ 8525428, 10 }, -- tier4hall2
	{ 8525427, 11 }, -- tier5hall1
	{ 8525426, 11 }, -- tier5room
	{ 8525425, 11 }, -- tier5hall2
	-- Dark enclave
	{ 3435626, -1 }, -- ramp1
	{ 3435644, 1 }, -- hallwayb1
	{ 3435650, 1 }, -- council1
	{ 3435637, 5 }, -- hallwaya1
	{ 3435652, 5 }, -- council3
	{ 3435638, 8 }, -- hallwaya2
	{ 3435653, 8 }, -- council4
	{ 3435645, 8 }, -- hallwayb2
	{ 3435639, 10 }, -- hallwaya3
	{ 3435646, 10 }, -- hallwayb3
	{ 3435651, 10 }, -- council2
	{ 3435640, 11 }, -- hallwaya4
	{ 3435647, 11 }, -- hallwayb4
	{ 3435641, 11 }, -- chamberramp
	{ 3435642, 11 }, -- chamber
}

-- Key followed by values for player rank 0 through 11
-- Key references the player's target
-- Ex: Rank 5 loses to BH, see "bh_lose" key and 6th integer value in same row
frsExperienceValues = {	
	{ "nonjedi_win", 4000, 5000, 7036, 9000, 12000, 15000, 19000, 22000, 27000, 31000, 35000, 40000 },
  { "nonjedi_lose", 400, 1000, 2000, 3600, 5200, 7000, 9000, 11000, 14000, 16600, 19000, 22000 },
  { "bh_win", 4000, 5000, 7036, 9000, 12000, 15000, 19000, 22000, 27000, 31000, 35000, 40000 },
  { "bh_lose", 400, 1000, 2000, 3600, 5200, 7000, 9000, 11000, 14000, 16600, 19000, 22000 },
  { "padawan_win", 4000, 5000, 7036, 9000, 12000, 15000, 19000, 22000, 27000, 31000, 35000, 40000 },
  { "padawan_lose", 400, 1000, 2000, 3600, 5200, 7000, 9000, 11000, 14000, 16600, 19000, 22000 },
  { "rank0_win", 4000, 5000, 7036, 9000, 12000, 15000, 19000, 22000, 27000, 31000, 35000, 40000 },
  { "rank0_lose", 400, 1000, 2000, 3600, 5200, 7000, 9000, 11000, 14000, 16600, 19000, 22000 },
  { "rank1_win", 5000, 5000, 7036, 9000, 12000, 15000, 19000, 22000, 27000, 31000, 35000, 40000 },
  { "rank1_lose", 400, 1000, 2000, 3600, 5200, 7000, 9000, 11000, 14000, 16600, 19000, 22000 },
  { "rank2_win", 6000, 6000, 7036, 9000, 12000, 15000, 19000, 22000, 27000, 31000, 35000, 40000 },
  { "rank2_lose", 400, 1000, 2000, 3600, 5200, 7000, 9000, 11000, 14000, 16600, 19000, 22000 },
  { "rank3_win", 7000, 7000, 7036, 9000, 12000, 15000, 19000, 22000, 27000, 31000, 35000, 40000 },
  { "rank3_lose", 400, 1000, 2000, 3600, 5200, 7000, 9000, 11000, 14000, 16600, 19000, 22000 },
  { "rank4_win", 8000, 8000, 7036, 9000, 12000, 15000, 19000, 22000, 27000, 31000, 35000, 40000 },
  { "rank4_lose", 400, 1000, 2000, 3600, 5200, 7000, 9000, 11000, 14000, 16600, 19000, 22000 },
  { "rank5_win", 9000, 9000, 7036, 9000, 12000, 15000, 19000, 22000, 27000, 31000, 35000, 40000 },
  { "rank5_lose", 400, 1000, 2000, 3600, 5200, 7000, 9000, 11000, 14000, 16600, 19000, 22000 },
  { "rank6_win", 9000, 10000, 12000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, 50000, 50000 },
  { "rank6_lose", 400, 1000, 2000, 3600, 5200, 7000, 9000, 11000, 14000, 16600, 19000, 22000 },
  { "rank7_win", 9000, 11000, 12000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, 50000, 50000 },
  { "rank7_lose", 400, 1000, 2000, 3600, 5200, 7000, 9000, 11000, 14000, 16600, 19000, 22000 },
  { "rank8_win", 12000, 12000, 15000, 19000, 20000, 30000, 40000, 50000, 55000, 60000, 65000, 70000 },
  { "rank8_lose", 400, 1000, 2000, 3600, 5200, 7000, 9000, 11000, 14000, 16600, 19000, 22000 },
  { "rank9_win", 13000, 13000, 17036, 19000, 22000, 35000, 49000, 52000, 67000, 71000, 85000, 90000 },
  { "rank9_lose", 400, 1000, 2000, 3600, 5200, 7000, 9000, 11000, 14000, 16600, 19000, 22000 },
  { "rank10_win", 14000, 14000, 17036, 19000, 22000, 35000, 49000, 52000, 67000, 71000, 85000, 90000 },
  { "rank10_lose", 400, 1000, 2000, 3600, 5200, 7000, 9000, 11000, 14000, 16600, 19000, 22000 },
  { "rank11_win", 15000, 15000, 17036, 19000, 22000, 35000, 49000, 52000, 67000, 71000, 85000, 90000 },
  { "rank11_lose", 400, 1000, 2000, 3600, 5200, 7000, 9000, 11000, 14000, 16600, 19000, 22000 },
}
