local littlehelper = require('Support.littlehelper')

local systemmanager = {}
systemmanager.systems = littlehelper.requireSystems()

function systemmanager:update(entity, dt)

  for k1, v1 in pairs(systemmanager.systems) do
    for k2, v2 in pairs(systemmanager.systems[k1].requiredElements) do
      if checkEntity(entity, systemmanager.systems[k1]) then
        v1:update(entity, dt)
      end
    end
  end
end

function checkEntity(entity, requiredComponents)
  for key, component in ipairs(requiredComponents) do
    if not entity[key] then
      return false
    end
  end
    return true
end

return systemmanager
