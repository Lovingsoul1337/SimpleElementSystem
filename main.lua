local world = require('world') --just require a world

function love.load()
  world = world:new() --create a new instance of world
  world:createEntity({name = "Hero", health = "70", maxHealth = "100"}) --second add a entity including values !
end

function love.update(dt)
  world:update(dt) --next update world
end

function love.draw()
  world:draw() -- and see the magic happens !
end
