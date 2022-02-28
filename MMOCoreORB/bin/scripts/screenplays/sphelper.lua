local sphelper = {}

function sphelper.spawnMobileAndIdle(planet, mobile, spawntimer, x, z, y, rot, cell)
  local pMobile = spawnMobile(planet, mobile, spawntimer, x, z, y, rot, cell)
    local aiAgentSquad = LuaAiAgent(pMobile)
  if (aiAgentSquad ~= nil) then
    aiAgentSquad:setAiTemplate("idlewander")
  end
end

---- build function
function sphelper.spawnHorizontalSceneObjects(planet, startX, startY, iffName, count, stepDiff)
  for i = 0 , count - 1 , 1 do
    spawnSceneObjectAutoZ(planet, iffName, startX - (i*stepDiff), 0, startY, 0, 0, 0, 0, 0)
  end
end

function sphelper.spawnVerticalSceneObjects(planet, startX, startY, iffName, count, stepDiff)
  for i = 0 , count - 1 , 1 do
    spawnSceneObjectAutoZ(planet, iffName, startX , 0, startY - (i*stepDiff), 0, 0.707, 0, -0.707, 0)
  end
end

function sphelper.spawnDiagonalSceneObjects(planet, startX, startY, iffName, count, stepDiff, invert, dxr, dyr)
  for i = 0 , count - 1 , 1 do
    spawnSceneObjectAutoZ(planet, iffName, startX - (i*stepDiff*0.707*invert) , 0, startY - (i*stepDiff*0.707*invert), 0, dxr, 0, dyr, 0)
  end
end

function sphelper.spawnImpTurret(planet, iff, x, z, y, cell, dw, dx, dy, dz, pvpmask)
  local turret = spawnSceneObject(planet,iff, x, z, y, cell, dw, dx, dy, dz)
  local turretObj = LuaTangibleObject(turret)
  turretObj:setFaction(3679112276)
  turretObj:setPvpStatusBitmask(pvpmask)
  return turret
end


-- directions are N,NE,E,SE,S,SW,W,NW
function spawnSceneObjectlineToDirection(planet, iff, x, y, direction, count, objlen)
  xpos = 0
  ypos = 0
  dw = 0
  dz = 0
  len = objlen/2
  for i = 0 , count - 1 ,1 do
    if (direction == "N") then
      xpos = x
      ypos = y + (len *(1+i*2))
      dw = 0.7071 --0
      dz = -0.70710 --0
    elseif (direction == "NE") then
      xpos = x + (0.707 * len *(1+i*2))
      ypos = y + (0.707 * len *(1+i*2))
      dw = 0.9238
      dz = -0.3826
    elseif (direction == "E") then
      xpos = x + (len *(1+i*2))
      ypos = y
      dw = 0--0.7071
      dz = 0---0.7071
    elseif (direction == "SE") then
      xpos = x + (0.707 * len *(1+i*2))
      ypos = y - (0.707 * len *(1+i*2))
      dw = 0.3826
      dz = -0.9238
    elseif (direction == "S") then
      xpos = x
      ypos = y - (len *(1+i*2))
      dw = 0.7071 --0
      dz = -0.7071 ---1
    elseif (direction == "SW") then
      xpos = x - (0.707 * len *(1+i*2))
      ypos = y - (0.707 * len *(1+i*2))
      dw = 0.3826
      dz = 0.9238
    elseif (direction == "W") then
      xpos = x - (len *(1+i*2))
      ypos = y
      dw = 0--0.7071
      dz = 0---0.7071
    elseif (direction == "NW") then
      xpos = x - (0.707 * len *(1+i*2))
      ypos = y + (0.707 * len *(1+i*2))
      dw = 0.9238
      dz = 0.3826
    end
    spawnSceneObjectAutoZ(planet,iff, xpos, 0, ypos, 0, dw, 0, dz, 0)
  end
end
 
function sphelper.spawnSquad(squadid, count, linemax, x, z, y, rot, xoffset, yoffset, planet,iff)
  sphelper.spawnSquadwithRespawn(squadid, count, linemax, x, z, y, rot, xoffset, yoffset, planet,iff,0 )
end
 --spawnMobile(planet, mobileTemplate, respawnTimer, x, z, y, heading, cellid)
---- grouped mobile Functions
function sphelper.spawnSquadwithRespawn(squadid, count, linemax, x, z, y, rot, xoffset, yoffset, planet,iff,respawn )
  local linecounter = 0
  local linehelper = 0 
  for i = 0 , count - 1 , 1 do
    
    if (linehelper == linemax) then
      linecounter = linecounter +1
      linehelper = 0 
    end
    local pSquad = spawnMobile(planet, iff, respawn, x + (linehelper * xoffset ), z, y +(linecounter * yoffset), rot, 0 )
    local oSquad = LuaCreatureObject(pSquad)
    if (oSquad ~= nil) then
      local stringhelper = (squadid..i)
      writeStringData(stringhelper..":objectid",oSquad:getObjectID())
    end 
      linehelper = linehelper + 1
  end
end

--behavior = idlewander, patrol, wait, follow
function sphelper.setBehavior(squadid, behavior, count)

  for i = 0 , count - 1 , 1 do
    local stringhelper = (squadid..i)
    local pSquad = getCreatureObject(readStringData(stringhelper..":objectid"))
    local aiAgent_Squad = LuaAiAgent(pSquad)

    if (aiAgent_Squad ~= nil) then
      aiAgent_Squad:setAiTemplate(behavior)
    end
  end
end

--destroy Objects from world and DB
function sphelper.destroy(objectID, deleteFromDB)
  local sObj = getSceneObject(objectID)
  if (sObj ~= nil) then
    local oObj = LuaSceneObject(sObj)
    if (oObj ~= nil) then
      oObj:destroyObjectFromWorld()
      if (deleteFromDB == true) then
        oObj:destroyObjectFromDatabase()
      end
    end
  end
end


return sphelper
