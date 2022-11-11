data:extend(
    {
        {
            type = "recipe",
            name = "empty-high-capacity-recipe",
            icons = {
                {
                    icon = Graphics .. "empty-magazine.png",
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
            icon = Graphics .. "empty-magazine.png",
            icon_mipmaps = 4,
            icon_size = 64,
            enabled = true,
            category = "crafting",
            group = "intermediate-products",
            subgroup = "intermediate-product",
            order = "a-b",
            ingredients =
            {
                { "iron-plate", math.ceil(2 + 2 * settings.startup["empty-magazine-high-capacity"].value / 4 * 3) },
            },
            energy_required = data.raw["recipe"]["empty-recipe"].energy_required,
            result = "empty-high-capacity-magazine"
        }
    }
)
