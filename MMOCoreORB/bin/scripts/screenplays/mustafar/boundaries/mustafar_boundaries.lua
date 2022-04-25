--[[

Boundaries for mustafar_mustafar_main terrain Layer by Levarris

Purpose:  Keeps players from exiting the boundaries of the world map and entering the surrounding instance areas. 

--]]

local ObjectManager = require("managers.object.object_manager")

mustafar_boundaries = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "mustafar_boundaries"
}
  
registerScreenPlay("mustafar_boundaries", true)
  
function mustafar_boundaries:start()
  if (isZoneEnabled("mustafar")) then
      --southeast
      self:spawnActiveAreaSe1()
      self:spawnActiveAreaSe2()
      self:spawnActiveAreaSe3()
      --south
      self:spawnActiveAreaSo1()
      self:spawnActiveAreaSo2()
      self:spawnActiveAreaSo3()
      self:spawnActiveAreaSo4()
      self:spawnActiveAreaSo5()
      self:spawnActiveAreaSo6()
      self:spawnActiveAreaSo7()
      self:spawnActiveAreaSo8()
      self:spawnActiveAreaSo9()
      self:spawnActiveAreaSo10()
      self:spawnActiveAreaSo11()
      self:spawnActiveAreaSo12()
      self:spawnActiveAreaSo13()
      self:spawnActiveAreaSo14()
      self:spawnActiveAreaSo15()
      self:spawnActiveAreaSo16()
      self:spawnActiveAreaSo17()
      self:spawnActiveAreaSo18()
      self:spawnActiveAreaSo19()
      self:spawnActiveAreaSo20()
      self:spawnActiveAreaSo21()
      self:spawnActiveAreaSo22()
      self:spawnActiveAreaSo23()
      self:spawnActiveAreaSo24()
      self:spawnActiveAreaSo25()
      self:spawnActiveAreaSo26()
      self:spawnActiveAreaSo27()
      --west
      self:spawnActiveAreaWe1()
      self:spawnActiveAreaWe2()
      self:spawnActiveAreaWe3()
      self:spawnActiveAreaWe4()
      self:spawnActiveAreaWe5()
      self:spawnActiveAreaWe6()
      self:spawnActiveAreaWe7()
      self:spawnActiveAreaWe8()
      self:spawnActiveAreaWe9()
      self:spawnActiveAreaWe10()
      self:spawnActiveAreaWe11()
      -- north
      self:spawnActiveAreaNo1()
      self:spawnActiveAreaNo2()
      self:spawnActiveAreaNo3()
      self:spawnActiveAreaNo4()
      self:spawnActiveAreaNo5()
      self:spawnActiveAreaNo6()
      self:spawnActiveAreaNo7()
      self:spawnActiveAreaNo8()
      self:spawnActiveAreaNo9()
      self:spawnActiveAreaNo10()
      self:spawnActiveAreaNo11()
      self:spawnActiveAreaNo12()
      self:spawnActiveAreaNo13()
      self:spawnActiveAreaNo14()
      self:spawnActiveAreaNo15()
      self:spawnActiveAreaNo16()
      self:spawnActiveAreaNo17()
      self:spawnActiveAreaNo18()
      self:spawnActiveAreaNo19()
      self:spawnActiveAreaNo20()
      self:spawnActiveAreaNo21()
      self:spawnActiveAreaNo22()
      self:spawnActiveAreaNo23()
      self:spawnActiveAreaNo24()
      self:spawnActiveAreaNo25()
      self:spawnActiveAreaNo26()
      self:spawnActiveAreaNo27()
      self:spawnActiveAreaNo28()
      self:spawnActiveAreaNo29()
      -- east
      self:spawnActiveAreaEa1()
      self:spawnActiveAreaEa2()
      self:spawnActiveAreaEa3()
      self:spawnActiveAreaEa4()
      self:spawnActiveAreaEa5()
      self:spawnActiveAreaEa6()
      self:spawnActiveAreaEa7()
      self:spawnActiveAreaEa8()
      self:spawnActiveAreaEa9()
      self:spawnActiveAreaEa10()
      self:spawnActiveAreaEa11()
      self:spawnActiveAreaEa12()
      self:spawnActiveAreaEa13()
      self:spawnActiveAreaEa14()
      self:spawnActiveAreaEa15()
      self:spawnActiveAreaEa16()
      self:spawnActiveAreaEa17()
      self:spawnActiveAreaEa18()
      self:spawnActiveAreaEa19()
      self:spawnActiveAreaEa20()
      self:spawnActiveAreaEa21()
      self:spawnActiveAreaEa22()
      self:spawnActiveAreaEa23()
      self:spawnActiveAreaEa24()
      
      --Mountains
      self:spawnActiveAreaTul1()
      self:spawnActiveAreaTul2()
      self:spawnActiveAreaTul3()
      self:spawnActiveAreaTul4()
      self:spawnActiveAreaTul5()
      
      self:spawnActiveAreaMin1()
      self:spawnActiveAreaMin2()
      self:spawnActiveAreaMin3()
      self:spawnActiveAreaMin4()
      self:spawnActiveAreaMin5()
      self:spawnActiveAreaMin6()
   end   
end

--southeast
  
function mustafar_boundaries:spawnActiveAreaSe1()
  local pAreaSe1 = spawnSceneObject("mustafar", "object/active_area.iff", 587, 170, -196, 0, 0, 0, 0, 0)
    
  if (pAreaSe1 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSe1)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSe", pAreaSe1)          
      end
end

function mustafar_boundaries:spawnActiveAreaSe2()
  local pAreaSe2 = spawnSceneObject("mustafar", "object/active_area.iff", 448, 226, -404, 0, 0, 0, 0, 0)
    
  if (pAreaSe2 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSe2)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(275)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSe", pAreaSe2)          
      end
end

function mustafar_boundaries:spawnActiveAreaSe3()
  local pAreaSe3 = spawnSceneObject("mustafar", "object/active_area.iff", 139, 150, -504, 0, 0, 0, 0, 0)
    
  if (pAreaSe3 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSe3)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(275)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSe", pAreaSe3)          
      end
end

-- south

function mustafar_boundaries:spawnActiveAreaSo1()
  local pAreaSo1 = spawnSceneObject("mustafar", "object/active_area.iff", -121, 240, -604, 0, 0, 0, 0, 0)
    
  if (pAreaSo1 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo1)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(260)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo1", pAreaSo1)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo2()
  local pAreaSo2 = spawnSceneObject("mustafar", "object/active_area.iff", -374, 251, -604, 0, 0, 0, 0, 0)
    
  if (pAreaSo2 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo2)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(260)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo1", pAreaSo2)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo3()
  local pAreaSo3 = spawnSceneObject("mustafar", "object/active_area.iff", -374, 251, -604, 0, 0, 0, 0, 0)
    
  if (pAreaSo3 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo3)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo2", pAreaSo3)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo4()
  local pAreaSo4 = spawnSceneObject("mustafar", "object/active_area.iff", -374, 251, -604, 0, 0, 0, 0, 0)
    
  if (pAreaSo4 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo4)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo2", pAreaSo4)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo5()
  local pAreaSo5 = spawnSceneObject("mustafar", "object/active_area.iff", -374, 251, -604, 0, 0, 0, 0, 0)
    
  if (pAreaSo5 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo5)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo3", pAreaSo5)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo6()
  local pAreaSo6 = spawnSceneObject("mustafar", "object/active_area.iff", -1396, 373, -583, 0, 0, 0, 0, 0)
    
  if (pAreaSo6 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo6)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo3", pAreaSo6)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo7()
  local pAreaSo7 = spawnSceneObject("mustafar", "object/active_area.iff", -1648, 469, -592, 0, 0, 0, 0, 0)
    
  if (pAreaSo7 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo7)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo4", pAreaSo7)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo8()
  local pAreaSo8 = spawnSceneObject("mustafar", "object/active_area.iff", -1900, 217, -616, 0, 0, 0, 0, 0)
    
  if (pAreaSo8 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo8)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo4", pAreaSo8)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo9()
  local pAreaSo9 = spawnSceneObject("mustafar", "object/active_area.iff", -2153, 324, -650, 0, 0, 0, 0, 0)
    
  if (pAreaSo9 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo9)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo5", pAreaSo9)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo10()
  local pAreaSo10 = spawnSceneObject("mustafar", "object/active_area.iff", -2394, 235, -731, 0, 0, 0, 0, 0)
    
  if (pAreaSo10 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo10)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo5", pAreaSo10)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo11()
  local pAreaSo11 = spawnSceneObject("mustafar", "object/active_area.iff", -2648, 261, -715, 0, 0, 0, 0, 0)
    
  if (pAreaSo11 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo11)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo6", pAreaSo11)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo12()
  local pAreaSo12 = spawnSceneObject("mustafar", "object/active_area.iff", -2900, 317, -731, 0, 0, 0, 0, 0)
    
  if (pAreaSo12 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo12)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo6", pAreaSo12)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo13()
  local pAreaSo13 = spawnSceneObject("mustafar", "object/active_area.iff", -3150, 311, -695, 0, 0, 0, 0, 0)
    
  if (pAreaSo13 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo13)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo7", pAreaSo13)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo14()
  local pAreaSo14 = spawnSceneObject("mustafar", "object/active_area.iff", -3397, 315, -652, 0, 0, 0, 0, 0)
    
  if (pAreaSo14 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo14)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo7", pAreaSo14)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo15()
  local pAreaSo15 = spawnSceneObject("mustafar", "object/active_area.iff", -3650, 380, -618, 0, 0, 0, 0, 0)
    
  if (pAreaSo15 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo15)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo8", pAreaSo15)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo16()
  local pAreaSo16 = spawnSceneObject("mustafar", "object/active_area.iff", -3900, 516, -582, 0, 0, 0, 0, 0)
    
  if (pAreaSo16 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo16)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo9", pAreaSo16)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo17()
  local pAreaSo17 = spawnSceneObject("mustafar", "object/active_area.iff", -4139, 845, -520, 0, 0, 0, 0, 0)
    
  if (pAreaSo17 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo17)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo9", pAreaSo17)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo18()
  local pAreaSo18 = spawnSceneObject("mustafar", "object/active_area.iff", -4391, 601, -564, 0, 0, 0, 0, 0)
    
  if (pAreaSo18 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo18)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo10", pAreaSo18)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo19()
  local pAreaSo19 = spawnSceneObject("mustafar", "object/active_area.iff", -4644, 262, -567, 0, 0, 0, 0, 0)
    
  if (pAreaSo19 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo19)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo10", pAreaSo19)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo20()
  local pAreaSo20 = spawnSceneObject("mustafar", "object/active_area.iff", -4887, 211, -595, 0, 0, 0, 0, 0)
    
  if (pAreaSo20 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo20)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo11", pAreaSo20)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo21()
  local pAreaSo21 = spawnSceneObject("mustafar", "object/active_area.iff", -5139, 296, -577, 0, 0, 0, 0, 0)
    
  if (pAreaSo21 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo21)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo11", pAreaSo21)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo22()
  local pAreaSo22 = spawnSceneObject("mustafar", "object/active_area.iff", -5393, 321, -606, 0, 0, 0, 0, 0)
    
  if (pAreaSo22 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo22)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo12", pAreaSo22)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo23()
  local pAreaSo23 = spawnSceneObject("mustafar", "object/active_area.iff", -5645, 323, -640, 0, 0, 0, 0, 0)
    
  if (pAreaSo23 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo23)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo12", pAreaSo23)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo24()
  local pAreaSo24 = spawnSceneObject("mustafar", "object/active_area.iff", -5894, 309, -682, 0, 0, 0, 0, 0)
    
  if (pAreaSo24 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo24)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo13", pAreaSo24)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo25()
  local pAreaSo25 = spawnSceneObject("mustafar", "object/active_area.iff", -6148, 290, -697, 0, 0, 0, 0, 0)
    
  if (pAreaSo25 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo25)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo13", pAreaSo25)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo26()
  local pAreaSo26 = spawnSceneObject("mustafar", "object/active_area.iff", -6402, 623, -688, 0, 0, 0, 0, 0)
    
  if (pAreaSo26 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo26)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo13", pAreaSo26)          
      end
end

function mustafar_boundaries:spawnActiveAreaSo27()
  local pAreaSo27 = spawnSceneObject("mustafar", "object/active_area.iff", -6643, 751, -678, 0, 0, 0, 0, 0)
    
  if (pAreaSo27 ~= nil) then
    local activeArea = LuaActiveArea(pAreaSo27)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSo13", pAreaSo27)          
      end
end

-- west

function mustafar_boundaries:spawnActiveAreaWe1()
  local pAreaWe1 = spawnSceneObject("mustafar", "object/active_area.iff", -6636, 751, -428, 0, 0, 0, 0, 0)
    
  if (pAreaWe1 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe1)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe1", pAreaWe1)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe2()
  local pAreaWe2 = spawnSceneObject("mustafar", "object/active_area.iff", -6607, 290, -179, 0, 0, 0, 0, 0)
    
  if (pAreaWe2 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe2)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe1", pAreaWe2)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe3()
  local pAreaWe3 = spawnSceneObject("mustafar", "object/active_area.iff", -6580, 268, 71, 0, 0, 0, 0, 0)
    
  if (pAreaWe3 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe3)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe1", pAreaWe3)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe4()
  local pAreaWe4 = spawnSceneObject("mustafar", "object/active_area.iff", -6573, 290, 325, 0, 0, 0, 0, 0)
    
  if (pAreaWe4 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe4)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe2", pAreaWe4)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe5()
  local pAreaWe5 = spawnSceneObject("mustafar", "object/active_area.iff", -6560, 440, 578, 0, 0, 0, 0, 0)
    
  if (pAreaWe5 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe5)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe3", pAreaWe5)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe6()
  local pAreaWe6 = spawnSceneObject("mustafar", "object/active_area.iff", -6555, 869, 832, 0, 0, 0, 0, 0)
    
  if (pAreaWe6 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe6)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe3", pAreaWe6)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe7()
  local pAreaWe7 = spawnSceneObject("mustafar", "object/active_area.iff", -6557, 685, 1084, 0, 0, 0, 0, 0)
    
  if (pAreaWe7 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe7)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe3", pAreaWe7)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe8()
  local pAreaWe8 = spawnSceneObject("mustafar", "object/active_area.iff", -6543, 1045, 1337, 0, 0, 0, 0, 0)
    
  if (pAreaWe8 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe8)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe4", pAreaWe8)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe9()
  local pAreaWe9 = spawnSceneObject("mustafar", "object/active_area.iff", -6530, 642, 1591, 0, 0, 0, 0, 0)
    
  if (pAreaWe9 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe9)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe4", pAreaWe9)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe10()
  local pAreaWe10 = spawnSceneObject("mustafar", "object/active_area.iff", -6523, 613, 1847, 0, 0, 0, 0, 0)
    
  if (pAreaWe10 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe10)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe4", pAreaWe10)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe11()
  local pAreaWe11 = spawnSceneObject("mustafar", "object/active_area.iff", -6513, 539, 2099, 0, 0, 0, 0, 0)
    
  if (pAreaWe11 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe11)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe5", pAreaWe11)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe12()
  local pAreaWe12 = spawnSceneObject("mustafar", "object/active_area.iff", -6507, 592, 2354, 0, 0, 0, 0, 0)
    
  if (pAreaWe12 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe12)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe5", pAreaWe12)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe13()
  local pAreaWe13 = spawnSceneObject("mustafar", "object/active_area.iff", -6495, 562, 2606, 0, 0, 0, 0, 0)
    
  if (pAreaWe13 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe13)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe5", pAreaWe13)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe14()
  local pAreaWe14 = spawnSceneObject("mustafar", "object/active_area.iff", -6473, 235, 2849, 0, 0, 0, 0, 0)
    
  if (pAreaWe14 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe14)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe6", pAreaWe14)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe15()
  local pAreaWe15 = spawnSceneObject("mustafar", "object/active_area.iff", -6570, 268, 3082, 0, 0, 0, 0, 0)
    
  if (pAreaWe15 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe15)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe6", pAreaWe15)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe16()
  local pAreaWe16 = spawnSceneObject("mustafar", "object/active_area.iff", -6562, 539, 3336, 0, 0, 0, 0, 0)
    
  if (pAreaWe16 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe16)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe7", pAreaWe16)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe17()
  local pAreaWe17 = spawnSceneObject("mustafar", "object/active_area.iff", -6606, 558, 3585, 0, 0, 0, 0, 0)
    
  if (pAreaWe17 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe17)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe7", pAreaWe17)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe18()
  local pAreaWe18 = spawnSceneObject("mustafar", "object/active_area.iff", -6588, 657, 3836, 0, 0, 0, 0, 0)
    
  if (pAreaWe18 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe18)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe7", pAreaWe18)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe19()
  local pAreaWe19 = spawnSceneObject("mustafar", "object/active_area.iff", -6674, 450, 4064, 0, 0, 0, 0, 0)
    
  if (pAreaWe19 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe19)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe8", pAreaWe19)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe20()
  local pAreaWe20 = spawnSceneObject("mustafar", "object/active_area.iff", -6700, 273, 4316, 0, 0, 0, 0, 0)
    
  if (pAreaWe20 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe20)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe8", pAreaWe20)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe21()
  local pAreaWe21 = spawnSceneObject("mustafar", "object/active_area.iff", -6693, 637, 4570, 0, 0, 0, 0, 0)
    
  if (pAreaWe21 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe21)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe8", pAreaWe21)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe22()
  local pAreaWe22 = spawnSceneObject("mustafar", "object/active_area.iff", -6648, 514, 4818, 0, 0, 0, 0, 0)
    
  if (pAreaWe22 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe22)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe9", pAreaWe22)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe23()
  local pAreaWe23 = spawnSceneObject("mustafar", "object/active_area.iff", -6623, 405, 5070, 0, 0, 0, 0, 0)
    
  if (pAreaWe23 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe23)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe9", pAreaWe23)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe24()
  local pAreaWe24 = spawnSceneObject("mustafar", "object/active_area.iff", -6587, 280, 5321, 0, 0, 0, 0, 0)
    
  if (pAreaWe24 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe24)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(300)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe9", pAreaWe24)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe25()
  local pAreaWe25 = spawnSceneObject("mustafar", "object/active_area.iff", -6487, 234, 5576, 0, 0, 0, 0, 0)
    
  if (pAreaWe25 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe25)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe10", pAreaWe25)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe26()
  local pAreaWe26 = spawnSceneObject("mustafar", "object/active_area.iff", -6394, 221, 5810, 0, 0, 0, 0, 0)
    
  if (pAreaWe26 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe26)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe10", pAreaWe26)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe27()
  local pAreaWe27 = spawnSceneObject("mustafar", "object/active_area.iff", -6367, 378, 6058, 0, 0, 0, 0, 0)
    
  if (pAreaWe27 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe27)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe11", pAreaWe27)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe28()
  local pAreaWe28 = spawnSceneObject("mustafar", "object/active_area.iff", -6225, 696, 6264, 0, 0, 0, 0, 0)
    
  if (pAreaWe28 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe28)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe11", pAreaWe28)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe29()
  local pAreaWe29 = spawnSceneObject("mustafar", "object/active_area.iff", -6014, 416, 6405, 0, 0, 0, 0, 0)
    
  if (pAreaWe29 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe29)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe11", pAreaWe29)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe30()
  local pAreaWe30 = spawnSceneObject("mustafar", "object/active_area.iff", -5764, 321, 6376, 0, 0, 0, 0, 0)
    
  if (pAreaWe30 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe30)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(100)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe11", pAreaWe30)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe31()
  local pAreaWe31 = spawnSceneObject("mustafar", "object/active_area.iff", -5788, 185, 6507, 0, 0, 0, 0, 0)
    
  if (pAreaWe31 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe31)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe11", pAreaWe31)          
      end
end

function mustafar_boundaries:spawnActiveAreaWe32()
  local pAreaWe32 = spawnSceneObject("mustafar", "object/active_area.iff", -5541, 347, 6570, 0, 0, 0, 0, 0)
    
  if (pAreaWe32 ~= nil) then
    local activeArea = LuaActiveArea(pAreaWe32)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaWe11", pAreaWe32)          
      end
end
-- north

function mustafar_boundaries:spawnActiveAreaNo1()
  local pAreaNo1 = spawnSceneObject("mustafar", "object/active_area.iff", -5541, 347, 6570, 0, 0, 0, 0, 0)
    
  if (pAreaNo1 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo1)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo1", pAreaNo1)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo2()
  local pAreaNo2 = spawnSceneObject("mustafar", "object/active_area.iff", -5049, 355, 6549, 0, 0, 0, 0, 0)
    
  if (pAreaNo2 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo2)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo1", pAreaNo2)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo3()
  local pAreaNo3 = spawnSceneObject("mustafar", "object/active_area.iff", -4795, 592, 6544, 0, 0, 0, 0, 0)
    
  if (pAreaNo3 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo3)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo2", pAreaNo3)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo4()
  local pAreaNo4 = spawnSceneObject("mustafar", "object/active_area.iff", -4542, 397, 6515, 0, 0, 0, 0, 0)
    
  if (pAreaNo4 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo4)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo2", pAreaNo4)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo5()
  local pAreaNo5 = spawnSceneObject("mustafar", "object/active_area.iff", -4542, 397, 6515, 0, 0, 0, 0, 0)
    
  if (pAreaNo5 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo5)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo3", pAreaNo5)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo6()
  local pAreaNo6 = spawnSceneObject("mustafar", "object/active_area.iff", -4034, 313, 6502, 0, 0, 0, 0, 0)
    
  if (pAreaNo6 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo6)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo3", pAreaNo6)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo7()
  local pAreaNo7 = spawnSceneObject("mustafar", "object/active_area.iff", -3784, 686, 6497, 0, 0, 0, 0, 0)
    
  if (pAreaNo7 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo7)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo3", pAreaNo7)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo8()
  local pAreaNo8 = spawnSceneObject("mustafar", "object/active_area.iff", -3539, 531, 6558, 0, 0, 0, 0, 0)
    
  if (pAreaNo8 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo8)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo4", pAreaNo8)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo9()
  local pAreaNo9 = spawnSceneObject("mustafar", "object/active_area.iff", -3296, 496, 6631, 0, 0, 0, 0, 0)
    
  if (pAreaNo9 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo9)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo4", pAreaNo9)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo10()
  local pAreaNo10 = spawnSceneObject("mustafar", "object/active_area.iff", -3296, 496, 6631, 0, 0, 0, 0, 0)
    
  if (pAreaNo10 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo10)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo5", pAreaNo10)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo11()
  local pAreaNo11 = spawnSceneObject("mustafar", "object/active_area.iff", -2791, 264, 6640, 0, 0, 0, 0, 0)
    
  if (pAreaNo11 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo11)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo5", pAreaNo11)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo12()
  local pAreaNo12 = spawnSceneObject("mustafar", "object/active_area.iff", -2539, 651, 6627, 0, 0, 0, 0, 0)
    
  if (pAreaNo12 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo12)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo5", pAreaNo12)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo13()
  local pAreaNo13 = spawnSceneObject("mustafar", "object/active_area.iff", -2539, 651, 6627, 0, 0, 0, 0, 0)
    
  if (pAreaNo13 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo13)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo6", pAreaNo13)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo14()
  local pAreaNo14 = spawnSceneObject("mustafar", "object/active_area.iff", -2288, 650, 6359, 0, 0, 0, 0, 0)
    
  if (pAreaNo14 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo14)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo6", pAreaNo14)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo15()
  local pAreaNo15 = spawnSceneObject("mustafar", "object/active_area.iff", -2244, 378, 6110, 0, 0, 0, 0, 0)
    
  if (pAreaNo15 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo15)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo6", pAreaNo15)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo16()
  local pAreaNo16 = spawnSceneObject("mustafar", "object/active_area.iff", -2199, 287, 5865, 0, 0, 0, 0, 0)
    
  if (pAreaNo16 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo16)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo6", pAreaNo16)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo17()
  local pAreaNo17 = spawnSceneObject("mustafar", "object/active_area.iff", -2040, 1109, 6567, 0, 0, 0, 0, 0)
    
  if (pAreaNo17 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo17)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo7", pAreaNo17)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo18()
  local pAreaNo18 = spawnSceneObject("mustafar", "object/active_area.iff", -1787, 1078, 6561, 0, 0, 0, 0, 0)
    
  if (pAreaNo18 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo18)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo7", pAreaNo18)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo19()
  local pAreaNo19 = spawnSceneObject("mustafar", "object/active_area.iff", -1535, 501, 6529, 0, 0, 0, 0, 0)
    
  if (pAreaNo19 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo19)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo7", pAreaNo19)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo20()
  local pAreaNo20 = spawnSceneObject("mustafar", "object/active_area.iff", -1286, 256, 6502, 0, 0, 0, 0, 0)
    
  if (pAreaNo20 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo20)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo7", pAreaNo20)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo21()
  local pAreaNo21 = spawnSceneObject("mustafar", "object/active_area.iff", -1038, 256, 6458, 0, 0, 0, 0, 0)
    
  if (pAreaNo21 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo21)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo8", pAreaNo21)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo22()
  local pAreaNo22 = spawnSceneObject("mustafar", "object/active_area.iff", -805, 214, 6528, 0, 0, 0, 0, 0)
    
  if (pAreaNo22 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo22)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo8", pAreaNo22)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo23()
  local pAreaNo23 = spawnSceneObject("mustafar", "object/active_area.iff", -557, 205, 6570, 0, 0, 0, 0, 0)
    
  if (pAreaNo23 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo23)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo8", pAreaNo23)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo24()
  local pAreaNo24 = spawnSceneObject("mustafar", "object/active_area.iff", -307, 309, 6526, 0, 0, 0, 0, 0)
    
  if (pAreaNo24 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo24)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo9", pAreaNo24)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo25()
  local pAreaNo25 = spawnSceneObject("mustafar", "object/active_area.iff", -56, 253, 6531, 0, 0, 0, 0, 0)
    
  if (pAreaNo25 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo25)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo9", pAreaNo25)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo26()
  local pAreaNo26 = spawnSceneObject("mustafar", "object/active_area.iff", 194, 373, 6514, 0, 0, 0, 0, 0)
    
  if (pAreaNo26 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo26)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo10", pAreaNo26)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo27()
  local pAreaNo27 = spawnSceneObject("mustafar", "object/active_area.iff", 443, 446, 6463, 0, 0, 0, 0, 0)
    
  if (pAreaNo27 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo27)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo10", pAreaNo27)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo28()
  local pAreaNo28 = spawnSceneObject("mustafar", "object/active_area.iff", 526, 645, 6226, 0, 0, 0, 0, 0)
    
  if (pAreaNo28 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo28)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo10", pAreaNo28)          
      end
end

function mustafar_boundaries:spawnActiveAreaNo29()
  local pAreaNo29 = spawnSceneObject("mustafar", "object/active_area.iff", 721, 262, 6069, 0, 0, 0, 0, 0)
    
  if (pAreaNo29 ~= nil) then
    local activeArea = LuaActiveArea(pAreaNo29)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo11", pAreaNo29)          
      end
end

--east

function mustafar_boundaries:spawnActiveAreaEa1()
  local pAreaEa1 = spawnSceneObject("mustafar", "object/active_area.iff", 765, 298, 5823, 0, 0, 0, 0, 0)
    
  if (pAreaEa1 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa1)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaNo11", pAreaEa1)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa2()
  local pAreaEa2 = spawnSceneObject("mustafar", "object/active_area.iff", 767, 305, 5569, 0, 0, 0, 0, 0)
    
  if (pAreaEa2 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa2)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa1", pAreaEa2)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa3()
  local pAreaEa3 = spawnSceneObject("mustafar", "object/active_area.iff", 784, 289, 5319, 0, 0, 0, 0, 0)
    
  if (pAreaEa3 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa3)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa1", pAreaEa3)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa4()
  local pAreaEa4 = spawnSceneObject("mustafar", "object/active_area.iff", 773, 304, 5067, 0, 0, 0, 0, 0)
    
  if (pAreaEa4 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa4)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa2", pAreaEa4)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa5()
  local pAreaEa5 = spawnSceneObject("mustafar", "object/active_area.iff", 749, 305, 4817, 0, 0, 0, 0, 0)
    
  if (pAreaEa5 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa5)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa2", pAreaEa5)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa6()
  local pAreaEa6 = spawnSceneObject("mustafar", "object/active_area.iff", 554, 297, 4659, 0, 0, 0, 0, 0)
    
  if (pAreaEa6 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa6)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa3", pAreaEa6)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa7()
  local pAreaEa7 = spawnSceneObject("mustafar", "object/active_area.iff", 684, 290, 4438, 0, 0, 0, 0, 0)
    
  if (pAreaEa7 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa7)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa3", pAreaEa7)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa8()
  local pAreaEa8 = spawnSceneObject("mustafar", "object/active_area.iff", 759, 318, 4197, 0, 0, 0, 0, 0)
    
  if (pAreaEa8 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa8)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa4", pAreaEa8)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa9()
  local pAreaEa9 = spawnSceneObject("mustafar", "object/active_area.iff", 791, 203, 3950, 0, 0, 0, 0, 0)
    
  if (pAreaEa9 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa9)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa4", pAreaEa9)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa10()
  local pAreaEa10 = spawnSceneObject("mustafar", "object/active_area.iff", 781, 227, 3698, 0, 0, 0, 0, 0)
    
  if (pAreaEa10 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa10)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa4", pAreaEa10)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa11()
  local pAreaEa11 = spawnSceneObject("mustafar", "object/active_area.iff", 780, 288, 3443, 0, 0, 0, 0, 0)
    
  if (pAreaEa11 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa11)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa5", pAreaEa11)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa12()
  local pAreaEa12 = spawnSceneObject("mustafar", "object/active_area.iff", 725, 319, 3198, 0, 0, 0, 0, 0)
    
  if (pAreaEa12 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa12)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(300)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa5", pAreaEa12)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa13()
  local pAreaEa13 = spawnSceneObject("mustafar", "object/active_area.iff", 681, 315, 2907, 0, 0, 0, 0, 0)
    
  if (pAreaEa13 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa13)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(300)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa6", pAreaEa13)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa14()
  local pAreaEa14 = spawnSceneObject("mustafar", "object/active_area.iff", 665, 295, 2640, 0, 0, 0, 0, 0)
    
  if (pAreaEa14 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa14)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(300)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa6", pAreaEa14)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa15()
  local pAreaEa15 = spawnSceneObject("mustafar", "object/active_area.iff", 813, 94, 2432, 0, 0, 0, 0, 0)
    
  if (pAreaEa15 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa15)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa7", pAreaEa15)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa16()
  local pAreaEa16 = spawnSceneObject("mustafar", "object/active_area.iff", 813, 94, 2432, 0, 0, 0, 0, 0)
    
  if (pAreaEa16 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa16)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa7", pAreaEa16)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa17()
  local pAreaEa17 = spawnSceneObject("mustafar", "object/active_area.iff", 813, 94, 2432, 0, 0, 0, 0, 0)
    
  if (pAreaEa17 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa17)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa7", pAreaEa17)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa18()
  local pAreaEa18 = spawnSceneObject("mustafar", "object/active_area.iff", 805, 448, 1690, 0, 0, 0, 0, 0)
    
  if (pAreaEa18 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa18)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa8", pAreaEa18)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa19()
  local pAreaEa19 = spawnSceneObject("mustafar", "object/active_area.iff", 790, 281, 1436, 0, 0, 0, 0, 0)
    
  if (pAreaEa19 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa19)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa8", pAreaEa19)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa20()
  local pAreaEa20 = spawnSceneObject("mustafar", "object/active_area.iff", 739, 615, 1193, 0, 0, 0, 0, 0)
    
  if (pAreaEa20 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa20)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa8", pAreaEa20)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa21()
  local pAreaEa21 = spawnSceneObject("mustafar", "object/active_area.iff", 715, 612, 941, 0, 0, 0, 0, 0)
    
  if (pAreaEa21 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa21)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa9", pAreaEa21)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa22()
  local pAreaEa22 = spawnSceneObject("mustafar", "object/active_area.iff", 712, 442, 690, 0, 0, 0, 0, 0)
    
  if (pAreaEa22 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa22)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa9", pAreaEa22)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa23()
  local pAreaEa23 = spawnSceneObject("mustafar", "object/active_area.iff", 712, 442, 690, 0, 0, 0, 0, 0)
    
  if (pAreaEa23 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa23)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaEa9", pAreaEa23)          
      end
end

function mustafar_boundaries:spawnActiveAreaEa24()
  local pAreaEa24 = spawnSceneObject("mustafar", "object/active_area.iff", 679, 230, 186, 0, 0, 0, 0, 0)
    
  if (pAreaEa24 ~= nil) then
    local activeArea = LuaActiveArea(pAreaEa24)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(256)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaSe", pAreaEa24)          
      end
end
---------------------------------------------------------------------------------------------------------------------------
-- Mountains
---------------------------------------------------------------------------------------------------------------------------

function mustafar_boundaries:spawnActiveAreaTul1()
  local pAreaTul1 = spawnSceneObject("mustafar", "object/active_area.iff", -1939, 128, 2241, 0, 0, 0, 0, 0)
    
  if (pAreaTul1 ~= nil) then
    local activeArea = LuaActiveArea(pAreaTul1)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(75)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaTul", pAreaTul1)          
      end
end

function mustafar_boundaries:spawnActiveAreaTul2()
  local pAreaTul2 = spawnSceneObject("mustafar", "object/active_area.iff", -2121, 265, 1911, 0, 0, 0, 0, 0)
    
  if (pAreaTul2 ~= nil) then
    local activeArea = LuaActiveArea(pAreaTul2)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(65)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaTul", pAreaTul2)          
      end
end

function mustafar_boundaries:spawnActiveAreaTul3()
  local pAreaTul3 = spawnSceneObject("mustafar", "object/active_area.iff", -2066, 264, 1681, 0, 0, 0, 0, 0)
    
  if (pAreaTul3 ~= nil) then
    local activeArea = LuaActiveArea(pAreaTul3)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(65)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaTul", pAreaTul3)          
      end
end

function mustafar_boundaries:spawnActiveAreaTul4()
  local pAreaTul4 = spawnSceneObject("mustafar", "object/active_area.iff", -1796, 245, 1569, 0, 0, 0, 0, 0)
    
  if (pAreaTul4 ~= nil) then
    local activeArea = LuaActiveArea(pAreaTul4)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(55)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaTul", pAreaTul4)          
      end
end

function mustafar_boundaries:spawnActiveAreaTul5()
  local pAreaTul5 = spawnSceneObject("mustafar", "object/active_area.iff", -1493, 261, 1711, 0, 0, 0, 0, 0)
    
  if (pAreaTul5 ~= nil) then
    local activeArea = LuaActiveArea(pAreaTul5)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(50)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaTul", pAreaTul5)          
      end
end

function mustafar_boundaries:spawnActiveAreaMin1()
  local pAreaMin1 = spawnSceneObject("mustafar", "object/active_area.iff", -1985, 307, 1088, 0, 0, 0, 0, 0)
    
  if (pAreaMin1 ~= nil) then
    local activeArea = LuaActiveArea(pAreaMin1)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(50)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaMin", pAreaMin1)          
      end
end

function mustafar_boundaries:spawnActiveAreaMin2()
  local pAreaMin2 = spawnSceneObject("mustafar", "object/active_area.iff", -2119, 306, 1229, 0, 0, 0, 0, 0)
    
  if (pAreaMin2 ~= nil) then
    local activeArea = LuaActiveArea(pAreaMin2)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(50)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaMin", pAreaMin2)          
      end
end

function mustafar_boundaries:spawnActiveAreaMin3()
  local pAreaMin3 = spawnSceneObject("mustafar", "object/active_area.iff", -2302, 304, 1331, 0, 0, 0, 0, 0)
    
  if (pAreaMin3 ~= nil) then
    local activeArea = LuaActiveArea(pAreaMin3)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(50)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaMin", pAreaMin3)          
      end
end

function mustafar_boundaries:spawnActiveAreaMin4()
  local pAreaMin4 = spawnSceneObject("mustafar", "object/active_area.iff", -2507, 315, 1202, 0, 0, 0, 0, 0)
    
  if (pAreaMin4 ~= nil) then
    local activeArea = LuaActiveArea(pAreaMin4)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(90)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaMin", pAreaMin4)          
      end
end

function mustafar_boundaries:spawnActiveAreaMin5()
  local pAreaMin5 = spawnSceneObject("mustafar", "object/active_area.iff", -2627, 309, 1008, 0, 0, 0, 0, 0)
    
  if (pAreaMin5 ~= nil) then
    local activeArea = LuaActiveArea(pAreaMin5)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(50)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaMin", pAreaMin5)          
      end
end

function mustafar_boundaries:spawnActiveAreaMin6()
  local pAreaMin6 = spawnSceneObject("mustafar", "object/active_area.iff", -2734, 217, 835, 0, 0, 0, 0, 0)
    
  if (pAreaMin6 ~= nil) then
    local activeArea = LuaActiveArea(pAreaMin6)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(50)
          createObserver(ENTEREDAREA, "mustafar_boundaries", "notifySpawnAreaMin", pAreaMin6)          
      end
end

----------------------------------------------------------------------------------------------------------------------------------------
--  ---------------------- EXFIL Points ------------------------------------------------------------------------------------------------
--
--
--
--
--
--
-------------------------------------------------------------------------------------------------------------------
--Southeast Exfiltration Teleport.
function mustafar_boundaries:notifySpawnAreaSe(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(197, 121, -214, 0)
      end
    return 0    
  end)
end
-- south 1
function mustafar_boundaries:notifySpawnAreaSo1(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-133, 175, -272, 0)
      end
    return 0    
  end)
end
-- south2
function mustafar_boundaries:notifySpawnAreaSo2(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-658, 104, -268, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaSo3(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-1117, 102, -199, 0)
      end
    return 0    
  end)
end
--
function mustafar_boundaries:notifySpawnAreaSo4(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-1678, 101, -87, 0)
      end
    return 0    
  end)
end
--
function mustafar_boundaries:notifySpawnAreaSo5(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-2258, 103, -276, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaSo6(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-2694, 103, -291, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaSo7(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-3099, 103, -335, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaSo8(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-3593, 116, -129, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaSo9(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-3918, 3, -188, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaSo10(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-4409, 3, -50, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaSo11(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-4943, 3, -134, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaSo12(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-5436, 4, -130, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaSo13(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-5826, 25, -100, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaWe1(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-6241, 85, -146, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaWe2(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-6183, 109, 286, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaWe3(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-6040, 242, 851, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaWe4(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-6004, 195, 1575, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaWe5(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-5971, 80, 2451, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaWe6(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-6164, 3, 2879, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaWe7(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-6214, 80, 3592, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaWe8(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-6317, 43, 4261, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaWe9(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-6221, 152, 5007, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaWe10(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-6003, 96, 5586, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaWe11(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-6071, 113, 5983, 0)
      end
    return 0    
  end)
end
-- North exfil points ---------------------------------------------------------------------------------------------

function mustafar_boundaries:notifySpawnAreaNo1(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-5245, 135, 6192, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaNo2(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-4815, 28, 6115, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaNo3(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-4179, 23, 5952, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaNo4(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-3383, 36, 6128, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaNo5(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-2987, 43, 6142, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaNo6(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-2496, 35, 5706, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaNo7(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-1744, 57, 5951, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaNo8(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-724, 87, 6111, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaNo9(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(-374, 126, 6142, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaNo10(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(96, 128, 6141, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaNo11(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(465, 129, 5837, 0)
      end
    return 0    
  end)
end

-- East
function mustafar_boundaries:notifySpawnAreaEa1(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(487, 131, 5567, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaEa2(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(475, 128, 5052, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaEa3(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(281, 128, 4652, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaEa4(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(474, 135, 3996, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaEa5(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(436, 128, 3426, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaEa6(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(403, 128, 3169, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaEa7(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(484, 57, 2211, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaEa8(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from travelling further in that direction.")
      player:teleport(508, 294, 1511, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaTul(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from scaling this mountain.")
      player:teleport(-1817, 119, 1999, 0)
      end
    return 0    
  end)
end

function mustafar_boundaries:notifySpawnAreaMin(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end    
    
    if not (player:isAiAgent()) then
      player:sendSystemMessage("An invisible force prevents you from scaling this mountain.")
      player:teleport(-2448, 122, 874, 0)
      end
    return 0    
  end)
end
