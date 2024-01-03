local hide_setting = nil
if settings.startup["advanced-magazines"].value then
    hide_setting = false
else
    hide_setting = true
end


data:extend({

    {
        type = "technology",
        name = "unlock-ammo",
        icon = "__More_Ammo__/graphics/icons/technology/advanced-ammo.png",
        icon_size = "256",
        icon_mipmaps = 4,
        prerequisites = { "military-3" },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "tungsten-ammo-recipe"
            },
            {
                type = "unlock-recipe",
                recipe = "fmj-ammo-recipe"
            },
            {
                type = "unlock-recipe",
                recipe = "sp-ammo-recipe"
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
        },
        hidden = hide_setting,
    }

})
