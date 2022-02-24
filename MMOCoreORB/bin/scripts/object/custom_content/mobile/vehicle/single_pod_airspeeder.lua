
object_mobile_vehicle_single_pod_airspeeder = object_mobile_vehicle_shared_single_pod_airspeeder:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_single_pod_airspeeder, "object/mobile/vehicle/single_pod_airspeeder.iff")