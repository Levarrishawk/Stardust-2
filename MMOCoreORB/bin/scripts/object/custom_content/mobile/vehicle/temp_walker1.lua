
object_mobile_vehicle_temp_walker1 = object_mobile_vehicle_shared_temp_walker1:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_temp_walker1, "object/mobile/vehicle/temp_walker1.iff")