
object_mobile_vehicle_walker_at_st = object_mobile_vehicle_shared_walker_at_st:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_walker_at_st, "object/mobile/vehicle/walker_at_st.iff")