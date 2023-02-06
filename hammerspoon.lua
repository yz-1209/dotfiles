-- Tips:
-- Print log in the console
-- hs.printf()

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "Left", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "Right", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + max.w / 2
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "Up", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w
    f.h = max.h / 2
    win:setFrame(f)
end)

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "Down", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y + max.h / 2
    f.w = max.w
    f.h = max.h / 2
    win:setFrame(f)
end)

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "F", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w
    f.h = max.h
    win:setFrame(f)
end)

hs.application.enableSpotlightForNameSearches(true)

hs.hotkey.bind({ "cmd", "ctrl" }, "l", function()
    local wechat = hs.appfinder.appFromName("WeChat")
    if wechat and wechat:isRunning() then
        wechat:kill()
    end

    hs.caffeinate.lockScreen()
end)

local inputMethodChinese = "com.apple.inputmethod.SCIM.ITABC"
local inputMethodEnglish = "com.apple.keylayout.ABC"

local inputMethodRules = {
    ["WeChat"] = inputMethodChinese,
    ["SeaTalk"] = inputMethodChinese,
    ["Code"] = inputMethodEnglish,
    ["kitty"] = inputMethodEnglish,
    ["iTerm2"] = inputMethodEnglish,
    ["Google Chrome"] = inputMethodEnglish,
    ["Postman"] = inputMethodEnglish,
    ["Typora"] = inputMethodEnglish,
    ["Spotify"] = inputMethodEnglish,
}

local function switchInputMethod(name, event, app)
    if event ~= hs.application.watcher.activated then
        return
    end

    local inputMethod = inputMethodRules[name]
    if inputMethod == nil then
        return
    end

    hs.keycodes.currentSourceID(inputMethod)
end

InputMethodWather = hs.application.watcher.new(switchInputMethod)
InputMethodWather:start()
