local systemmanager = require('systemmanager')
local forcesystem = require('forcesystem')
local world = require('world')

function love.load()
world = world.new()
end

function love.update(dt)
world:update(dt)
end

function love.draw()
end
