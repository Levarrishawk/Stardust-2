
object_mobile_vehicle_ric_920_speeder = object_mobile_vehicle_shared_ric_920_speeder:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_ric_920_speeder, "object/mobile/vehicle/ric_920_speeder.iff")