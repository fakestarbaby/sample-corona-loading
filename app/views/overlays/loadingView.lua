local View = {}

-- Requires
local widget = require("widget")

--- Public: new
function View.new()
  local view = display.newGroup()
  local margin = 10

  view.background = display.newRect(view, 0, 0, display.contentWidth, display.contentHeight)
  view.background.anchorX = 0
  view.background.anchorY = 0
  view.background.alpha = 0.8
  view.background:setFillColor(0)

  view.spinner = widget.newSpinner{
    width = 50,
    height = 50,
    sheet = graphics.newImageSheet(
      "app/assets/images/loading.png", {
        width = 50,
        height = 50,
        numFrames = 10,
        sheetContentWidth = 500,
        sheetContentHeight = 50,
      }
    ),
    startFrame = 1,
    count = 10,
    time = 1000,
  }
  view.spinner.anchorX = 0.5
  view.spinner.anchorY = 0.5
  view.spinner.x = display.contentCenterX
  view.spinner.y = display.contentCenterY

  return view
end

return View
