local playersystem = {} --first name your system
playersystem.requiredElements = {"name", "health", "maxHealth"} --define what elements are needed

function playersystem:update(entity) --systems need a update function and a entity parameter
  print("Inside Playerystem:")
  print(entity.name .. " " .. entity.health .. "/" .. entity.maxHealth)
end

return playersystem
