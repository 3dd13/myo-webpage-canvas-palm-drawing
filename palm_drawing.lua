scriptId = 'bs.42la.myo.PalmDrawing'
scriptTitle = "Palm Drawing"
scriptDetailsUrl = ""

isDrawing = false

function onForegroundWindowChange(app, title)
  if (title == "Palm Drawing") then
    myo.setLockingPolicy("none")
    myo.controlMouse(true)

    return true
  else
    return false
  end
end

function onPoseEdge(pose, edge)
  myo.debug('pose ' .. pose .. ' edge ' .. edge)

  if (edge == "on" and pose == "fist") then
    myo.keyboard("t", "press")
    myo.mouse("left", "click")
  elseif (edge == "off" and pose == "fist") then
    myo.keyboard("f", "press")
  elseif (edge == "on" and pose == "doubleTap") then
    myo.centerMousePosition()
  end
end
