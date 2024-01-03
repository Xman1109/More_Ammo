local hide_setting = nil
if settings.startup["chemical-magazines"].value then
    hide_setting = false
else
    hide_setting = true
end

data:extend({

        {
            type = "technology",
            name = "chemical-ammo",
            icon = "__More_Ammo__/graphics/icons/technology/chemical-ammo.png",
            icon_size = "256",
            icon_mipmaps = 4,
            prerequisites = { "unlock-ammo", "rocketry", "military-4" },
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "acid-ammo-recipe"
                },
                {
                    type = "unlock-recipe",
                    recipe = "fire-ammo-recipe"
                },
                {
                    type = "unlock-recipe",
                    recipe = "he-ammo-recipe"
                }
            },
            unit =
            {
                count = 500,
                ingredients =
                {
                    { "automation-science-pack", 1 },
                    { "logistic-science-pack",   1 },
                    { "chemical-science-pack",   1 },
                    { "military-science-pack",   1 },
                    { "utility-science-pack",    1 }
                },
                time = 60,
            },
            hidden = hide_setting,
        }

    })
