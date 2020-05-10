local world = require('world') --just require a world

function love.load()

  world = world:new()   --create a new instance of world
  world:createEntity({  --second add a entity including values !
   name = "Hero",
   health = "70",
   maxHealth = "100",
   image = love.graphics.newImage('Assets/Images/rectangle_ninja.png'), --if you want it to be drawed add a image and position value !
   position = {x = 0, y = 0}})

function love.update(dt)
  world:update(dt) --next update world
end

function love.draw()
  world:draw() -- see the magic happens !
end
