data:extend(
    {
        {
        type = "recipe",
        name = "vulcanite-ammo-recipe",
        icon = "__More_Ammo__/graphics/icons/items/SE/vulcanite-rounds-magazine.png",
        icon_size = 63,
        enabled = false,
        category = "crafting",
        group = "combat",
        subgroup = "ammo",
        order = "an",
        ingredients =
      {
         {"advanced-magazine", 1},
         {"iron-plate", 3},
         {"steel-plate", 3},
         {"copper-plate", 2},
      },
        energy_required = 40,
        result = "vulcanite-rounds-magazine"
        } 
})