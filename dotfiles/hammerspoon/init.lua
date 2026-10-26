hs.loadSpoon("SpoonInstall")
	
spoon.SpoonInstall:andUse("AppLauncher", {
  config = {
  	modifiers = {"ctrl", "cmd"}
  },
  hotkeys = {
    f = "Finder",
    c = "Fantastical",
    d = "Discord",
    i = "DEVONthink",
    j = "Brave Browser",
    k = "Visual Studio Code",
    n = "Obsidian",
    p = "1Password",
    l = "Kitty",
    z = "Zoom.us",
    h = "Google Chat",
    m = "Mail",
    s = "Messages",
    r = "Remember The Milk",
    b = "BBEdit",
    o = "Signal",
  }
})


