-- Composer
local composer = require("composer")
composer.recycleOnSceneChange = true

-- Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- Go to scene: Menu
composer.gotoScene("app.controllers.menuController", { effect = "fade", time = 500 })
