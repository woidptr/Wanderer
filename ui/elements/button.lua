local vector2 = require("utils.math.vector2")

local button = {}

function button:new(x, y)
    self.pos = vector2:new(x, y)
end

return button
