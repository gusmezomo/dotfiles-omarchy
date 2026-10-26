-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

hl.unbind("SUPER + CTRL + E")
o.bind("SUPER + E", "Emoji picker", "omarchy-shell shell toggle omarchy.emojis")

hl.unbind("SUPER + SHIFT + S")
o.bind("SUPER + SHIFT + S", "Screenshot", "omarchy-capture-screenshot")

hl.unbind("SUPER + F")
hl.unbind("SUPER + ALT + F")
hl.unbind("SUPER + CTRL + F")

o.bind("SUPER + F", "Full width", hl.dsp.window.fullscreen({ mode = "maximized" }))
o.bind("SUPER + ALT + F", "Tiled full screen", "omarchy-hyprland-window-tiled-fullscreen-toggle")
o.bind("SUPER + CTRL + F", "Full screen", hl.dsp.window.fullscreen({ mode = "fullscreen" }))

-- Clipboard manager no SUPER+V. Universal paste desativado.
hl.unbind("SUPER + V")
hl.unbind("SUPER + CTRL + V")

o.bind("SUPER + V", "Clipboard manager", "omarchy-shell shell toggle omarchy.clipboard")

-- desativando toogle workspace layout, muda do normal para scrolling
-- alem de eu nao usar ta com bug que crash se muda sem querer
hl.unbind("SUPER + L")
o.bind("SUPER + L", "Lock screen", "omarchy-system-lock")
-- strata-installer: file-manager start
hl.unbind("SUPER + SHIFT + F")
hl.unbind("SUPER + ALT + SHIFT + F")
o.bind("SUPER + SHIFT + F", "File manager", { launch = "/home/gusmezomo/.local/bin/strata" })
o.bind("SUPER + ALT + SHIFT + F", "File manager (cwd)",
  "uwsm-app -- /home/gusmezomo/.local/bin/strata \"$(omarchy-cmd-terminal-cwd)\"")
-- strata-installer: file-manager end
