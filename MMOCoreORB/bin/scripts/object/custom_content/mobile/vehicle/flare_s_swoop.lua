
object_mobile_vehicle_flare_s_swoop = object_mobile_vehicle_shared_flare_s_swoop:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_flare_s_swoop, "object/mobile/vehicle/flare_s_swoop.iff")