data:extend(
    {
        {
        type = "recipe",
        name = "vulcanite-ammo-recipe",
        icon = "__More_Ammo__/graphics/icons/items/SE/vulcanite-rounds-magazine.png",
        icon_mipmaps = 4,
        icon_size = 63,
        enabled = false,
        category = "space-manufacturing",
        group = "combat",
        subgroup = "ammo",
        order = "an",
        ingredients =
      {
         {"advanced-magazine", 1},
         {"se-vulcanite-ion-exchange-beads", 3}
      },
        energy_required = 45,
        always_show_made_in = true,
        result = "vulcanite-rounds-magazine"
        } 
})