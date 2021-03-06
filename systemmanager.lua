local littlehelper = require('Support.littlehelper')
local drawsystem = require('Drawing.drawsystem')

local systemmanager = {}
systemmanager.systems = littlehelper.requireSystems()
systemmanager.drawingQueue = {}

function systemmanager:update(entity, dt)
  if systemmanager.checkIfDrawable(entity) then
    table.insert(systemmanager.drawingQueue, entity)
  end

  for k1, v1 in pairs(systemmanager.systems) do
    if systemmanager.checkEntity(entity, systemmanager.systems[k1]["requiredElements"]) then
       v1:update(entity, dt)
    end
  end
end

function systemmanager.checkEntity(entity, requiredComponents)
  for k1, v1 in pairs(requiredComponents) do
    if entity[v1] == nil then
      return false
    end
  end
  return true
end

function systemmanager.checkIfDrawable(entity)
  for k, v in pairs(entity) do
    if k == "image" then
      return true
    end
   end
  return false
end

function systemmanager:draw(entity)
  for i = 1, #systemmanager.drawingQueue do
    drawsystem:update(systemmanager.drawingQueue[i])
  end
  systemmanager.drawingQueue = {}
end

return systemmanager
