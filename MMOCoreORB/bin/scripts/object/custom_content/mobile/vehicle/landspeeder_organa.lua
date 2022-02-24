
object_mobile_vehicle_landspeeder_organa = object_mobile_vehicle_shared_landspeeder_organa:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_landspeeder_organa, "object/mobile/vehicle/landspeeder_organa.iff")