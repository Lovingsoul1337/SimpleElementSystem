local entityspawner = {}
entityspawner.requiredElements = {name = {}, elements = {}}

function addBlueprint(name, elements)
  entitySpawner.requiredElements["name"] = name
  for k, v in pairs(elements) do
    tabel.insert(entitySpawner.requiredElements["elements"], v)
  end
end

function entityspawner:newLovie()
end

return entityspawner
