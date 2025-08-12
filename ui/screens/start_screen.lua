return function(game)
    local start_screen = {}

    function start_screen:load()
        -- base_width  = game.window_width / game.gui_scale
        -- base_height = game.window_height / game.gui_scale

        self.settings_btn = love.graphics.newImage("assets/settings-btn.png")
    end

    function start_screen:draw()
        local win_width, win_height = love.graphics.getDimensions()

        -- -- Calculate scale factors
        -- local scale_x = win_width / base_width
        -- local scale_y = win_height / base_height

        -- local scale = math.min(scale_x, scale_y)

        -- local img_width  = self.settings_btn:getWidth() * scale
        -- local img_height = self.settings_btn:getHeight() * scale

        -- -- Center position
        -- local x = (win_width  - img_width) / 2
        -- local y = (win_height - img_height) / 2
        
        love.graphics.draw(self.settings_btn, 50, 50, 0)
    end

    return start_screen
end
