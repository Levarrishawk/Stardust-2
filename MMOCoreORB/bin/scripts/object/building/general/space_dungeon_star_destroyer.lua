--Copyright (C) 2010 <SWGEmu>


--This File is part of Core3.

--This program is free software; you can redistribute 
--it and/or modify it under the terms of the GNU Lesser 
--General Public License as published by the Free Software
--Foundation; either version 2 of the License, 
--or (at your option) any later version.

--This program is distributed in the hope that it will be useful, 
--but WITHOUT ANY WARRANTY; without even the implied warranty of 
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
--See the GNU Lesser General Public License for
--more details.

--You should have received a copy of the GNU Lesser General 
--Public License along with this program; if not, write to
--the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

--Linking Engine3 statically or dynamically with other modules 
--is making a combined work based on Engine3. 
--Thus, the terms and conditions of the GNU Lesser General Public License 
--cover the whole combination.

--In addition, as a special exception, the copyright holders of Engine3 
--give you permission to combine Engine3 program with free software 
--programs or libraries that are released under the GNU LGPL and with 
--code included in the standard release of Core3 under the GNU LGPL 
--license (or modified versions of such code, with unchanged license). 
--You may copy and distribute such a system following the terms of the 
--GNU LGPL for Engine3 and the licenses of the other code concerned, 
--provided that you include the source code of that other code when 
--and as the GNU LGPL requires distribution of source code.

--Note that people who make modified versions of Engine3 are not obligated 
--to grant this special exception for their modified versions; 
--it is their choice whether to do so. The GNU Lesser General Public License 
--gives permission to release a modified version without this exception; 
--this exception also makes it possible to release a modified version 


object_building_general_space_dungeon_star_destroyer = object_building_general_shared_space_dungeon_star_destroyer:new {
  planetMapCategory = "cloningfacility",
  
    skillMods = {
      {"private_medical_rating", 100}
          },
  
          childObjects = {
                {templateFile = "object/tangible/terminal/terminal_insurance.iff", x = -10.5816, z = 175.335, y = -35.5272, ox = 0, oy = 0, oz = 0, ow = 1, cellid = 33, containmentType = -1},
                 
            -- Elevator Terminals
              -- Docking Control
                {templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = 48.9897, z = 173.835, y = 205.563, ox = 0, oy = -0.707107, oz = 0, ow = 0.707107, cellid = 39, containmentType = -1},              
                {templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = 48.9897, z = 192.335, y = 205.563, ox = 0, oy = -0.707107, oz = 0, ow = 0.707107, cellid = 39, containmentType = -1},
                
              -- Port Side Hangar 
                {templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = 54.3956, z = 173.835, y = 20.1421, ox = 0, oy = -0.707107, oz = 0, ow = 0.707107, cellid = 37, containmentType = -1},              
                {templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = 54.3956, z = 181.335, y = 20.1421, ox = 0, oy = -0.707107, oz = 0, ow = 0.707107, cellid = 37, containmentType = -1},
              -- Starboard Side Hangar 
                {templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -54.3932, z = 173.835, y = 20.1421, ox = 0, oy = -0.707107, oz = 0, ow = -0.707107, cellid = 38, containmentType = -1},              
                {templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = -54.3932, z = 181.335, y = 20.1421, ox = 0, oy = -0.707107, oz = 0, ow = -0.707107, cellid = 38, containmentType = -1},
              -- Reactor Lift
                --[[   -- Disabled due to bugged cells on that level.
                {templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = 20.0514, z = 140.585, y = 347.689, ox = 0, oy = 0, oz = 0, ow = -1, cellid = 40, containmentType = -1},              
                {templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = 20.0514, z = 170.585, y = 347.689, ox = 0, oy = 0, oz = 0, ow = -1, cellid = 40, containmentType = -1},
                --]]
              -- Bridge Lift
                {templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = 19.9312, z = 170.585, y = 430.471, ox = 0, oy = 0, oz = 0, ow = 1, cellid = 48, containmentType = -1},              
                {templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = 19.9312, z = 453.359, y = 430.471, ox = 0, oy = 0, oz = 0, ow = 1, cellid = 48, containmentType = -1},
                -- Port Side bridge 
                {templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = 21.3, z = 448.607, y = 341.889, ox = 0, oy = -0.707107, oz = 0, ow = 0.707107, cellid = 55, containmentType = -1},              
                {templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = 21.3, z = 453.609, y = 341.889, ox = 0, oy = -0.707107, oz = 0, ow = 0.707107, cellid = 55, containmentType = -1},
              -- Starboard Side bridge 
                {templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -21.399, z = 448.607, y = 341.889, ox = 0, oy = 0.707107, oz = 0, ow = 0.707107, cellid = 56, containmentType = -1},              
                {templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = -21.399, z = 453.609, y = 341.889, ox = 0, oy = 0.707107, oz = 0, ow = 0.707107, cellid = 56, containmentType = -1},
                 
          
          
          
         },
  
    spawningPoints = {
      { x = -7.75978, z = 175.522, y = -34.3437, ow = 0.897693, ox = 0, oz = 0, oy = -0.440621, cellid = 33 }
      }, -- { x, z, y, ow, ox, oy, oz, cellid }
  templateType = CLONINGBUILDING,
  facilityType = CLONER_STANDARD, 
 
}

ObjectTemplates:addTemplate(object_building_general_space_dungeon_star_destroyer, "object/building/general/space_dungeon_star_destroyer.iff")
