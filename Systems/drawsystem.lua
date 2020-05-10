local drawsystem = {}
drawsystem.requiredElements = {"image", "position"}

function drawsystem:update(entity, dt)
  print("Inside draw system:")
  print(entity.image)
  love.graphics.draw(entity.image, 0, 0)
end

return drawsystem
