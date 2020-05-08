local systemmanager = {}
systemmanager.systems = {
  system = {function(entity, dt)return any end},
  requiredElements = {},
  name = {}
}


function systemmanager:addSystem(system, name, requiredElements)
  systemmanager.systems["system"] = system
  systemmanager.systems["name"] = name
  systemmanager.systems["requiredElements"] = requiredElements
end

function systemmanager:updateSystems(entity, dt)
  for k, v in pairs(systemmanager.systems["system"]) do
    for k, v2 in pairs(value) do
      if checkEntity(entity, v2) then
        v:update(entity, dt)
      end
    end
  end
end

local function checkEntity(entity, requiredComponents)
  for __, component in ipairs(requiredComponents) do
    if not entity[component] then
      return false
    end
  end
    return true
end

function systemmanager:drawSystems()
  for k, v in pairs(systemmanager.systems["system"]) do
    for k, v2 in pairs(value) do
      if checkEntity(entity, v2) then
        v2:draw(entity, dt)
      end
    end
  end
end

return systemmanager
