local systemmanager = require('systemmanager')
local forcesystem = require('forcesystem')

world = {}
world.__index = world

function world.new()
  local self = {}
  self.entityList = {}
  setmetatable(self, world)
  return self
end

function world:update(dt)
end

function world:addSystem()
end

function world:addEntity()
end

function world:draw()
end

return world
