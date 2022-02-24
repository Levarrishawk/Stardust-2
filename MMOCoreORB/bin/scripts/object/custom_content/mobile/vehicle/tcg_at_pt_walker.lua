
object_mobile_vehicle_tcg_at_pt_walker = object_mobile_vehicle_shared_tcg_at_pt_walker:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_tcg_at_pt_walker, "object/mobile/vehicle/tcg_at_pt_walker.iff")