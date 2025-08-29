local player = require("game.actors.player")
local game = require("game.game")
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

    game:new()

    -- setting up the window
    love.window.setMode(
        game.window_size.x,
        game.window_size.y,
        {
            fullscreen = false,
            resizable = true,
        }
    )

    love.window.setTitle("The Void")

    love.graphics.setNewFont("assets/fonts/silkscreen/slkscr.ttf", 25)

    -- set the current screen to start_screen
    game.current_screen = screen_factory:create("start_screen")

    -- load the current screen
    if game.current_screen and game.current_screen.load then
        game.current_screen:load()
    end
end

function love.update(dt)

end

function love.draw()
    -- calculate and set the gui scale
    local scale = game:calculate_gui_scale()

    love.graphics.scale(scale)

    -- draw the current screen
    if game.current_screen and game.current_screen.draw then
        game.current_screen:draw()
    end

    love.graphics.print("Settings", 50, 100)
end
