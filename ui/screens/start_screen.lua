return function(game)
    local button = require("ui.elements.button")

    local start_screen = {}

    function start_screen:load()
        self.settings_btn_texture = love.graphics.newImage("assets/settings-btn.png")
        local settings_btn_texturee = love.graphics.newImage("assets/settings-btn.png")
        self.settings_btn = button:new(settings_btn_texturee, 50, 50)
        -- self.settings_btn = love.graphics.newImage("assets/settings-btn.png")
    end

    function start_screen:draw()
        local win_width, win_height = love.graphics.getDimensions()

        love.graphics.draw(self.settings_btn_texture, self.settings_btn.x, self.settings_btn.y, 0)

        -- self.settings_btn:draw()
    end

    return start_screen
end
