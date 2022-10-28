data:extend(
    {
        {
            type = "recipe",
            name = "empty-high-capacity-shotgun-recipe",
            icons = {
                {
                    icon = Graphics .. "empty-shotgun-shell.png",
                    icon_size = 64,
                    icon_mipmaps = 4,
                },
                {
                    icon = Graphics .. "high-cap.png",
                    icon_size = 64,
                    icon_mipmaps = 4,
                    shift = { -3, -3 },
                },
            },
            icon = Graphics .. "empty-shotgun-shell.png",
            icon_mipmaps = 4,
            icon_size = 64,
            enabled = true,
            category = "crafting",
            group = "intermediate-products",
            subgroup = "intermediate-product",
            order = "a-b",
            ingredients =
            {
                { "copper-plate", math.ceil(2 + 2 * settings.startup["empty-shotgun-shell-high-capacity"].value / 4 * 3) },
            },
            energy_required = 5,
            result = "empty-high-capacity-shotgun-shell"
        }
    })
