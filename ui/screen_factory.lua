local game = require("game.game")

local screen_factory = {}

function screen_factory:create(name)
    if name == "start_screen" then
        return require("ui.screens.start_screen")(game)
    elseif name == "settings_screen" then
        return require("ui.screens.settings_screen")(game)
    elseif name == "hud_screen" then
        return require("ui.screens.hud_screen")(game)
    end
end

return screen_factory
