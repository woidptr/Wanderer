local vector2 = require("utils.math.vector2")

local button = {}

function button:new(texture, x, y)
    self.texture = texture
    self.x = x
    self.y = y

    return button
end

function button:draw()
    love.graphics.draw(self.texture, self.x, self.y, 0)
end

return button
