local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

hl.config({
	general = {
		allow_tearing = true
	},
	render = {
		cm_auto_hdr = 0
	}
})

-- rules to add game content type to apps that dont have it themselves
hl.window_rule({ match = { initial_title = "osu!" }, content = "game" })
--hl.window_rule({ match = { class = "my-window" }, border_size = 10 })

hl.window_rule({
	name = "game-no-vsync",
	match = {
		content = "game"
	},
	immediate = true,
})

hl.window_rule({
	name = "discord-censor",
	match = {
		class = "webcord"
	},
	no_screen_share = true,
})
