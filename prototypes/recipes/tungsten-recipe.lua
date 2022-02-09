data:extend(
    {
        {
        type = "recipe",
        name = "tungsten-ammo-recipe",
        icon = "__More_Ammo__/graphics/icons/items/tungsten-rounds-magazine.png",
        icon_size = 63,
        enabled = false,
        category = "crafting",
        group = "combat",
        subgroup = "ammo",
        order = "ad",
        ingredients =
      {
         {"empty-magazine", 1},
         {"iron-plate", 3},
         {"steel-plate", 7},
         {"copper-plate", 3},
      },
        energy_required = 30,
        result = "tungsten-rounds-magazine"
        } 
})