
object_mobile_vehicle_tcg_military_transport = object_mobile_vehicle_shared_tcg_military_transport:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_tcg_military_transport, "object/mobile/vehicle/tcg_military_transport.iff")