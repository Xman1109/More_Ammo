data:extend(
    {
        {
        type = "recipe",
        name = "water-recipe",
        icon = "__More_Ammo__/graphics/icons/items/SE/water-magazine.png",
        icon_size = 63,
        enabled = false,
        category = "crafting",
        group = "combat",
        subgroup = "ammo",
        order = "af",
        ingredients =
      {
         {"empty-magazine", 1},
         {"iron-plate", 5},
         {"steel-plate", 4},
      },
        energy_required = 40,
        result = "water-magazine"
        } 
})