data:extend({

    {
        type = "technology",
        name = "high-capacity-chemical-ammo",
        icon = "__More_Ammo__/graphics/icons/technology/high-capacity-chemical-ammo.png",
        icon_size = 256,
        icon_mipmaps = 4,
        prerequisites = { "chemical-ammo" },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "empty-high-capacity-recipe"
            },
            {
                type = "unlock-recipe",
                recipe = "high-capacity-acid-ammo-recipe"
            },
            {
                type = "unlock-recipe",
                recipe = "high-capacity-fire-ammo-recipe"
            },
            {
                type = "unlock-recipe",
                recipe = "high-capacity-he-ammo-recipe"
            }
        },
        unit =
        {
            count = 500,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "military-science-pack", 1 },
                { "utility-science-pack", 1 }
            },
            time = 60
        }
    }

})
