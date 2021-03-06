local world = require('world') --just require a world and drop your systems inside the systems folder

function love.load()

  world = world:new()   --create a new instance of world
  world:createEntity({  --second add a entity including values !
   name = "Hero",
   health = "70",
   maxHealth = "100",
   image = love.graphics.newImage('Assets/Images/rectangle_ninja.png'), --if you want it to be drawed add a image and position value !
   position = {x = 88, y = 88}})

   world:createEntity({  --second add a entity including values !
    name = "Fero",
    health = "70",
    maxHealth = "100",
    image = love.graphics.newImage('Assets/Images/rectangle_ninja.png'), --if you want it to be drawed add a image and position value !
    position = {x = 188, y = 188}})

    world:createEntity({  --second add a entity including values !
     name = "Nice",
     health = "88",
     maxHealth = "100",
     image = love.graphics.newImage('Assets/Images/rectangle_ninja.png'), --if you want it to be drawed add a image and position value !
     position = {x = 288, y = 288}})
end

function love.update(dt)
  world:update(dt) --next update world
end

function love.draw()
  world:draw() -- see the magic happens !
end
