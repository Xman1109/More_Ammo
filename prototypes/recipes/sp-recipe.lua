data:extend(
    {
        {
        type = "recipe",
        name = "sp-ammo-recipe",
        icon = "__More_Ammo__/graphics/icons/items/sp-rounds-magazine.png",
        icon_size = 63,
        enabled = false,
        category = "crafting",
        group = "combat",
        subgroup = "ammo",
        order = "ae",
        ingredients =
      {
         {"empty-magazine", 1},
         {"iron-plate", 5},
         {"steel-plate", 4},
      },
        energy_required = 40,
        result = "sp-rounds-magazine"
        } 
})