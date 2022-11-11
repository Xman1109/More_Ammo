local math3d = require "math3d"

data:extend(
    {
        {
            type = "sticker",
            name = "fire-ammo-sticker",
            flags = { "not-on-map" },

            animation =
            {
                filename = "__base__/graphics/entity/fire-flame/fire-flame-13.png",
                line_length = 8,
                width = 60,
                height = 118,
                frame_count = 25,
                blend_mode = "normal",
                animation_speed = 1,
                scale = 0.2,
                tint = { r = 0.5, g = 0.5, b = 0.5, a = 0.18 }, --{ r = 1, g = 1, b = 1, a = 0.35 },
                shift = math3d.vector2.mul({ -0.078125, -1.8125 }, 0.1),
                draw_as_glow = true
            },

            duration_in_ticks = 5 * 60,
            damage_interval = 10,
            target_movement_modifier = 0.8,
            damage_per_tick = { amount = 10 * 4 / 60, type = "fire" },
            spread_fire_entity = "fire-flame-on-tree",
            fire_spread_cooldown = 30,
            fire_spread_radius = 0.75
        }
    })
