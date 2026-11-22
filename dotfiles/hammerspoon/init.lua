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
    j = "Librewolf",
    v = "Visual Studio Code",
    n = "Notes",
    p = "1Password",
    l = "Kitty",
    z = "Zoom.us",
    h = "Claude",
    m = "Mail",
    s = "Messages",
    r = "Remember The Milk",
    k = "BBEdit",
    o = "Signal",
    t = "TextEdit",
  }
})


