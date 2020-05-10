local systemmanager = require('systemmanager')
local littlehelper = require('Support.littlehelper')

local world = {}
world.__index = world

function world.new()
  local self = {}
  setmetatable(self, world)
  self.entityList = {}
  return self
end

function world:update(dt)
  for i = 1, #self.entityList do
    systemmanager:update(self.entityList[i], dt)
  end
end

function world:createEntity(entity)
  table.insert(self.entityList, entity)
end

function world:draw()
  systemmanager:draw(entity)
end

return world
