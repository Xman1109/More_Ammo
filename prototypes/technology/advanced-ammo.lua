data:extend({
    
    {
            type = "technology",
            name = "unlock-ammo",
            icon = "__More_Ammo__/graphics/icons/technology/advanced-ammo.png",
            icon_size = "128",
            prerequisites = {"military-3"},
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
              {"automation-science-pack", 1},
              {"logistic-science-pack", 1},
              {"chemical-science-pack", 1},
              {"military-science-pack", 1}
            },
        time = 45
        }
    }
    
})