local drawsystem = {} --put here your drawingsystem
drawsystem.requiredElements = {"image", "position"} --drawsystem needs atleast a image and position but you can add more like a quad and origin !

function drawsystem:update(entity, dt)
  love.graphics.draw(entity.image, entity.position.x, entity.position.y)
end

return drawsystem
