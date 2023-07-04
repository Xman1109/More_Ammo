data:extend({

    {
        type = "technology",
        name = "unlock-high-capacity-ammo",
        icon = "__More_Ammo__/graphics/icons/technology/advanced-high-capacity-ammo.png",
        icon_size = "256",
        icon_mipmaps = 4,
        prerequisites = { "unlock-ammo" },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "empty-high-capacity-recipe"
            },
            {
                type = "unlock-recipe",
                recipe = "high-capacity-firearm-magazine"
            },
            {
                type = "unlock-recipe",
                recipe = "high-capacity-piercing-rounds-magazine"
            },
            {
                type = "unlock-recipe",
                recipe = "high-capacity-uranium-rounds-magazine"
            },
            {
                type = "unlock-recipe",
                recipe = "high-capacity-tungsten-ammo-recipe"
            },
            {
                type = "unlock-recipe",
                recipe = "high-capacity-fmj-ammo-recipe"
            },
            {
                type = "unlock-recipe",
                recipe = "high-capacity-sp-ammo-recipe"
            }
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "military-science-pack", 1 }
            },
            time = 45
        }
    }

})
