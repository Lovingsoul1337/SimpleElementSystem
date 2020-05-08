entity = {}
entity.__index = entity

function entity.new(elements)
  local self = {elements = elements}
  setmetatable(self, entity)
  return self
end

return entity
