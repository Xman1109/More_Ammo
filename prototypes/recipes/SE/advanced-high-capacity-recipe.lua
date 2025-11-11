data:extend(
    {
        {
            type = "recipe",
            name = "advanced-high-capacity-recipe",
            icons = {
                {
                    icon = Graphics .. "SE/advanced-magazine.png",
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
            icon = Graphics .. "SE/advanced-magazine.png",
            icon_mipmaps = 4,
            icon_size = 64,
            enabled = false,
            category = "crafting",
            group = "intermediate-products",
            subgroup = "intermediate-product",
            order = "b-b",
            ingredients =
            {
                { type = "item", name = "iron-plate", amount = math.ceil(5 + 5 * settings.startup["advanced-magazine-high-capacity"].value / 4 * 3) },
                { type = "item", name = "steel-plate", amount = math.ceil(3 + 3 * settings.startup["advanced-magazine-high-capacity"].value / 4 * 3) },
                { type = "item", name = "plastic-bar", amount = math.ceil(5 + 5 * settings.startup["advanced-magazine-high-capacity"].value / 4 * 3) },
            },
            energy_required = data.raw["recipe"]["advanced-recipe"].energy_required,
            results = {{type = "item", name = "advanced-high-capacity-magazine", amount = 1}},
        }
    }
)
