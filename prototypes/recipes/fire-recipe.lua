data:extend(
    {
        {
        type = "recipe",
        name = "fire-ammo-recipe",
        icon = "__More_Ammo__/graphics/icons/items/fire-rounds-magazine.png",
        icon_size = 63,
        enabled = false,
        category = "advanced-crafting",
        group = "combat",
        subgroup = "ammo",
        order = "ah",
        ingredients =
      {
         {"empty-magazine", 1},
         {"iron-plate", 5},
         {"steel-plate", 4},
         {"sulfur", 5},
      },
        energy_required = 100,
        result = "fire-rounds-magazine"
        } 
})