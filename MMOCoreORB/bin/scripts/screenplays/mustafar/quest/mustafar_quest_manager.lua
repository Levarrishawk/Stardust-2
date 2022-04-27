local ObjectManager = require("managers.object.object_manager")

mustafarQuestManager = ScreenPlay:new {
	numberOfActs = 1,
}


registerScreenPlay("mustafarQuestManager", true)


function mustafarQuestManager:start()
  if (isZoneEnabled("mustafar")) then
	 self:resetAllQuestStatus()
	end 
end

function mustafarQuestManager:resetAllQuestStatus()

end

function mustafarQuestManager:miningFieldMarkersQuestStatus()
end