
object_mobile_vehicle_senate_pod = object_mobile_vehicle_shared_senate_pod:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_senate_pod, "object/mobile/vehicle/senate_pod.iff")