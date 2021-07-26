data:extend(
    {
        {
        type = "recipe",
        name = "vulcanite-shotgun-recipe",
        icon = "__More_Ammo__/graphics/icons/items/SE/vulcanite-shotgun-shell.png",
        icon_size = 63,
        enabled = false,
        category = "crafting",
        group = "combat",
        subgroup = "ammo",
        order = "d-a",
        ingredients =
      {
         {"advanced-shotgun-shell", 1},
         {"vulcanite", 3}
      },
        energy_required = 30,
        result = "vulcanite-shotgun-shell"
        } 
})
