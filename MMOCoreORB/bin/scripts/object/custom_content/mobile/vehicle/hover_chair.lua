
object_mobile_vehicle_hover_chair = object_mobile_vehicle_shared_hover_chair:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_hover_chair, "object/mobile/vehicle/hover_chair.iff")