local systemmanager = require('systemmanager')


local world = {}
world.__index = world

function world.new()
  local self = {}
  setmetatable(self, world)
  self.entityList = {}
  return self
end

function world:update(dt)
  systemmanager:update(self.entityList[1], dt)
end

function world:createEntity(entity)
  table.insert(self.entityList, entity)
end

function world:draw()
end

return world
