-- #######################################################################################
-- Valentin Hyprland Config#
-- #######################################################################################

--Modkey Setup
local var_mainMod = "SUPER"

-- Monitor Configuration
hl.monitor({
    output = "DP-1",
    disabled = false,
    mode = "1920x1080@240",
    position = "0x0",
    scale = 1,
})

-- monitor=HDMI-A-1,1920x1080@60,-1920x135,1

-- Environment variables
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("NVD_BACKEND", "direct")
require("hyprland-gui")

-- General Configuration
hl.config({
    input = {
        kb_layout = "us, ro",
        kb_variant = "",
        kb_model = "",
        kb_options = "grp:win_space_toggle",
        kb_rules = "",
        accel_profile = "flat",
        follow_mouse = 0,
        touchpad = {
            natural_scroll = false,
        },
        sensitivity = 0,
    },
    decoration = {
        rounding = 6,
        rounding_power = 2,
        active_opacity = 1.0,
        inactive_opacity = 1.0,
    },
    general = {
        gaps_in = 5,
        gaps_out = 5,
        border_size = 2,
        col = {
            active_border = {
                colors = {"rgba(c0bfbcff)", "rgba(ffffffff)"},
                angle = 45,
            },
            inactive_border = "rgba(595959aa)",
        },
        layout = "dwindle",
    },
    animations = {
        enabled = true,
    },
})

hl.curve("myBezier", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.05} } })
hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 7,
    bezier = "myBezier",
})
hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 7,
    bezier = "default",
    style = "popin 80%",
})
hl.animation({
    leaf = "border",
    enabled = true,
    speed = 10,
    bezier = "default",
})
hl.animation({
    leaf = "borderangle",
    enabled = true,
    speed = 8,
    bezier = "default",
})
hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 7,
    bezier = "default",
})
hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 6,
    bezier = "default",
})

-- Tiling Configuration
hl.config({
    dwindle = {
        preserve_split = true,
    },
})

-- App Shortcuts
hl.bind(var_mainMod .. " + RETURN", hl.dsp.exec_cmd("alacritty"))
hl.bind(var_mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(var_mainMod .. " + SHIFT + L", hl.dsp.exec_cmd("wlogout"))
hl.bind(var_mainMod .. " + B", hl.dsp.exec_cmd("librewolf"))
hl.bind(var_mainMod .. " + E", hl.dsp.exec_cmd("nautilus"))
hl.bind(var_mainMod .. " + S", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind(var_mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("spotify-launcher"))
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m region --freeze"))

-- WM Shortcuts
hl.bind(var_mainMod .. " + Q", hl.dsp.window.close())
hl.bind(var_mainMod .. " + SHIFT + Q", hl.dsp.exit())
hl.bind(var_mainMod .. " + F", hl.dsp.window.fullscreen())
hl.bind(var_mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(var_mainMod .. " + P", hl.dsp.window.pseudo())

-- Move focus with mainMod + arrow keys
hl.bind(var_mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(var_mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(var_mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(var_mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
hl.bind(var_mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(var_mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(var_mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(var_mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(var_mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(var_mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(var_mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(var_mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(var_mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind(var_mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]
hl.bind(var_mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind(var_mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind(var_mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind(var_mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind(var_mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind(var_mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind(var_mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind(var_mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind(var_mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind(var_mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(var_mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(var_mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(var_mainMod .. " + mouse:272", hl.dsp.window.drag(), {
    mouse = true,
})
hl.bind(var_mainMod .. " + mouse:273", hl.dsp.window.resize(), {
    mouse = true,
})

-- Autostart Apps
hl.on("hyprland.start", function()
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("/usr/bin/hyprland-per-window-layout")
    hl.exec_cmd("waypaper --restore")
    hl.exec_cmd("waybar")
    hl.exec_cmd("dunst")
    hl.exec_cmd("wl-clip-persist --clipboard regular")
    hl.exec_cmd("flatpak run --command=jellyfin org.jellyfin.JellyfinServer")
    hl.exec_cmd("localsend --hidden")
end)
