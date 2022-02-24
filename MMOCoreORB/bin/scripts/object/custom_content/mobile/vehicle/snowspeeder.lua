
object_mobile_vehicle_snowspeeder = object_mobile_vehicle_shared_snowspeeder:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_snowspeeder, "object/mobile/vehicle/snowspeeder.iff")