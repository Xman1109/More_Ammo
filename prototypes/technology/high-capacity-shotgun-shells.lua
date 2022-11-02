data:extend({

    {
        type = "technology",
        name = "high-capacity-shotgun-shells",
        icon = "__More_Ammo__/graphics/icons/technology/high-capacity-shotgun-shells.png",
        icon_size = "256",
        icon_mipmaps = 4,
        prerequisites = { "uranium-ammo" },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "empty-high-capacity-shotgun-recipe"
            },
            {
                type = "unlock-recipe",
                recipe = "high-capacity-shotgun-shell"
            },
            {
                type = "unlock-recipe",
                recipe = "high-capacity-piercing-shotgun-shell"
            },
            {
                type = "unlock-recipe",
                recipe = "high-capacity-uranium-shotgun-recipe"
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
