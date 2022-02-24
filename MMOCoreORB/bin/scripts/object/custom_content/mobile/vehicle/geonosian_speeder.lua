
object_mobile_vehicle_geonosian_speeder = object_mobile_vehicle_shared_geonosian_speeder:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_geonosian_speeder, "object/mobile/vehicle/geonosian_speeder.iff")