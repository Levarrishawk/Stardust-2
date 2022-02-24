
object_tangible_deed_vehicle_deed_mustafar_panning_droid = object_tangible_deed_vehicle_deed_shared_mustafar_panning_droid:new {

	templateType = VEHICLEDEED,

	controlDeviceObjectTemplate = "object/intangible/vehicle/mustafar_panning_droid.iff",
	generatedObjectTemplate = "object/mobile/vehicle/mustafar_panning_droid.iff",
	
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
ObjectTemplates:addTemplate(object_tangible_deed_vehicle_deed_mustafar_panning_droid, "object/tangible/deed/vehicle_deed/mustafar_panning_droid.iff")
