local vector2 = require("utils.math.vector2")

local game = {}

function game:new()
    self.window_size = vector2:new(650, 400)
    self.gui_scale = 3
    self.current_screen = nil
end

function game:calculate_gui_scale()
    local base_width  = self.window_size.x / self.gui_scale
    local base_height = self.window_size.y / self.gui_scale

    local win_width, win_height = love.graphics.getDimensions()

    local scale_x = win_width / base_width
    local scale_y = win_height / base_height

    local scale = math.min(scale_x, scale_y)

    return scale
end

return game
