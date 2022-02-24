
object_tangible_deed_vehicle_deed_flare_s_swoop = object_tangible_deed_vehicle_deed_shared_flare_s_swoop:new {
  customName = "Flare S Swoop Deed",
	templateType = VEHICLEDEED,

	controlDeviceObjectTemplate = "object/intangible/vehicle/flare_s_swoop_pcd.iff",
	generatedObjectTemplate = "object/mobile/vehicle/flare_s_swoop.iff",
	
	numberExperimentalProperties = {1, 1, 1},
  experimentalProperties = {"XX", "XX", "SR"},
  experimentalWeights = {1, 1, 1},
  experimentalGroupTitles = {"null", "null", "exp_durability"},
  experimentalSubGroupTitles = {"null", "null", "hit_points"},
  experimentalMin = {0, 0, 10000},
  experimentalMax = {0, 0, 25000},
  experimentalPrecision = {0, 0, 0},
  experimentalCombineType = {0, 0, 1},

}
ObjectTemplates:addTemplate(object_tangible_deed_vehicle_deed_flare_s_swoop, "object/tangible/deed/vehicle_deed/flare_s_swoop.iff")
