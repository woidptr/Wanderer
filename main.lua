require("player")
local game = require("game")
local screen_factory = require("ui.screen_factory")

function love.keypressed(key)
    -- fullscreen controller
    if key == "f11" then
        fullscreen = love.window.getFullscreen()
        if fullscreen then
            love.window.setFullscreen(false)
        else
            love.window.setFullscreen(true)
        end
    end
end

function love.load()
    -- set the graphics settings
    love.graphics.setDefaultFilter("nearest", "nearest")

    -- setting up the window
    love.window.setMode(
        game.window_width,
        game.window_height,
        {
            fullscreen = false
        }
    )

    love.window.setTitle("The Void")

    base_width  = game.window_width / game.gui_scale
    base_height = game.window_height / game.gui_scale

    -- set the current screen to start_screen
    game.current_screen = screen_factory:create("start_screen")

    -- load the current screen
    if game.current_screen and game.current_screen.load then
        game.current_screen:load()
    end
end

function love.draw()
    -- calculate the gui scale
    local win_width, win_height = love.graphics.getDimensions()

    -- Calculate scale factors
    local scale_x = win_width / base_width
    local scale_y = win_height / base_height

    local scale = math.min(scale_x, scale_y)

    love.graphics.scale(scale)

    -- draw the current screen
    if game.current_screen and game.current_screen.draw then
        game.current_screen:draw()
    end

    love.graphics.print("Hello World!", 400, 300)
end
