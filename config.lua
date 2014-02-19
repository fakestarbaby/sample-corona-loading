-- iPad
if string.sub(system.getInfo("model"), 1, 4) == "iPad" then
  application = {
    content = {
      width  = 384,
      height = 512,
      fps    = 60,
      scale  = "letterBox",
      xAlign = "center",
      yAlign = "center",
      imageSuffix = {
        ["@2"] = 1.5,
        ["@4"] = 3.0,
      },
    },
  }

-- iPhone5
elseif string.sub(system.getInfo("model"), 1, 2) == "iP" and 960 < display.pixelHeight then
  application = {
    content = {
      width  = 320,
      height = 568,
      fps    = 60,
      scale  = "letterBox",
      xAlign = "center",
      yAlign = "center",
      imageSuffix = {
        ["@2"] = 1.5,
        ["@4"] = 3.0,
      },
    },
  }

-- iPhone 3,4 and Older iPod Touch
elseif string.sub(system.getInfo("model"), 1, 2) == "iP" then
  application = {
    content = {
      width  = 320,
      height = 480,
      fps    = 60,
      scale  = "letterBox",
      xAlign = "center",
      yAlign = "center",
      imageSuffix = {
        ["@2"] = 1.5,
        ["@4"] = 3.0,
      },
    },
  }

-- Android and Kindle Fire and Nook
elseif display.pixelHeight / display.pixelWidth > 1.72 then
  application = {
    content = {
      width  = 320,
      height = 570,
      fps    = 60,
      scale  = "letterBox",
      xAlign = "center",
      yAlign = "center",
      imageSuffix = {
        ["@2"] = 1.5,
        ["@4"] = 3.0,
      },
    },
  }

-- Other
else
  application = {
    content = {
      width  = 320,
      height = 512,
      fps    = 60,
      scale  = "letterBox",
      xAlign = "center",
      yAlign = "center",
      imageSuffix = {
        ["@2"] = 1.5,
        ["@4"] = 3.0,
      },
    },
  }
end
