
object_mobile_vehicle_light_bending_barc = object_mobile_vehicle_shared_light_bending_barc:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_light_bending_barc, "object/mobile/vehicle/light_bending_barc.iff")