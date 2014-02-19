local View = {}

--- Public: new
function View.new()
  local view = display.newGroup()
  local margin = 10

  view.background = display.newRect(view, 0, 0, display.contentWidth, display.contentHeight)
  view.background.anchorX = 0
  view.background.anchorY = 0

  return view
end

return View
