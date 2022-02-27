
object_mobile_vehicle_hoverlifter_speeder = object_mobile_vehicle_shared_hoverlifter_speeder:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_hoverlifter_speeder, "object/mobile/vehicle/hoverlifter_speeder.iff")