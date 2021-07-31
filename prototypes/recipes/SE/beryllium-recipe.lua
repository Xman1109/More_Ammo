data:extend(
    {
        {
        type = "recipe",
        name = "beryllium-ammo-recipe",
        icon = "__More_Ammo__/graphics/icons/items/SE/beryllium-rounds-magazine.png",
        icon_size = 63,
        enabled = false,
        category = "space-manufacturing",
        group = "combat",
        subgroup = "ammo",
        order = "ak",
        ingredients =
      {
         {"advanced-magazine", 1},
         {"se-beryllium-ingot", 3}
      },
        energy_required = 40,
        always_show_made_in = true,
        result = "beryllium-rounds-magazine"
        } 
})