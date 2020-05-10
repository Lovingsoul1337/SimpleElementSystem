local vector2D = {}
vector2D.__index = vector2D

vector2D_meta = {
  __add = function(a, b)
    return vector2D.new(
    a.x + b.x,
    a.y + b.y
  )
end,
__sub = function(a, b)
  return vector2D.new(
  a.x - b.x,
  a.y - b.y
)
end,
__mul = function(a, b)
  return vector2D.new(
  a.x * b.x,
  a.y * b.y
)
end,
__div = function(a, b)
  return vector2D.new(
  a.x / b.x,
  a.y / b.y
)
end
}

function vector2D.new(x, y)
  local self = {}
  self.x = x or 0
  self.y = y or 0
  setmetatable(self, vector2D_meta)
  return self
end

return vector2D
