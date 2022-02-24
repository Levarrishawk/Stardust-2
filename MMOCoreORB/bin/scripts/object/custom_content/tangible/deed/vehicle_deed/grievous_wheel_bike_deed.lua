object_tangible_deed_vehicle_deed_grievous_wheel_bike_deed = object_tangible_deed_vehicle_deed_shared_grievous_wheel_bike_deed:new {

	templateType = VEHICLEDEED,

	controlDeviceObjectTemplate = "object/intangible/vehicle/grievous_wheel_bike.iff",
	generatedObjectTemplate = "object/mobile/vehicle/grievous_wheel_bike.iff",
	
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

ObjectTemplates:addTemplate(object_tangible_deed_vehicle_deed_grievous_wheel_bike_deed, "object/tangible/deed/vehicle_deed/grievous_wheel_bike_deed.iff")
