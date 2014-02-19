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

  view.btnDownload = widget.newButton{
    width = 200,
    height = 50,
    label = "Download",
  }
  view.btnDownload.anchorX = 0.5
  view.btnDownload.anchorY = 0.5
  view.btnDownload.x = display.contentCenterX
  view.btnDownload.y = display.contentCenterY
  view:insert(view.btnDownload)

  return view
end

return View
