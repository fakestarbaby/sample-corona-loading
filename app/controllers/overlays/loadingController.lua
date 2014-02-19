-- Composer and scene
local composer = require("composer")
local scene = composer.newScene()

-- View
local view = require("app.views.overlays.loadingView").new()

-- Monitoring timer
local monitoringTimer = nil

-- Create scene
function scene:create(event)
  local group = self.view

  -- Insert view
  group:insert(view)
end

-- Show scene
function scene:show(event)
  local group = self.view
  local phase = event.phase

  if phase == "will" then
  elseif phase == "did" then
    -- Start spinner
    view.spinner:start()

    -- Monitoring timer
    monitoringTimer = timer.performWithDelay(250, function(event)
      if not composer.getVariable("loading") then
        -- Cancel monitoring timer
        timer.cancel(monitoringTimer)

        -- Hide overlay
        composer.hideOverlay("fade", 250)
      end
    end, -1)
  end
end

-- Hide scene
function scene:hide(event)
  local group = self.view
  local phase = event.phase

  if phase == "will" then
    -- Remove spinner
    view.spinner:stop()
    view.spinner:removeSelf()
  elseif phase == "did" then
  end
end

-- Destroy scene
function scene:destroy(event)
  local group = self.view
end

-- Add event listeners
scene:addEventListener("create",  scene)
scene:addEventListener("show",    scene)
scene:addEventListener("hide" ,   scene)
scene:addEventListener("destroy", scene)

return scene
