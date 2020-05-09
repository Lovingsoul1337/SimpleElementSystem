local drawsystem = {}
drawsystem.requiredElements = {"image", "position"}

function drawsystem:update(entity, dt)
  love.graphics.draw(entity.image, entity.position.x, entity.position.y)
end

return drawsystem
