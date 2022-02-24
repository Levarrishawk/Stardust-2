
object_mobile_vehicle_walker_at_rt_reg = object_mobile_vehicle_shared_walker_at_rt_reg:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_walker_at_rt_reg, "object/mobile/vehicle/walker_at_rt_reg.iff")