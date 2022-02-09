data:extend(
    {
        {
        type = "recipe",
        name = "cryonite-ammo-recipe",
        icon = "__More_Ammo__/graphics/icons/items/SE/cryonite-rounds-magazine.png",
        icon_mipmaps = 4,
        icon_size = 63,
        enabled = false,
        category = "space-manufacturing",
        group = "combat",
        subgroup = "ammo",
        order = "al",
        ingredients =
      {
         {"advanced-magazine", 1},
         {"se-cryonite-ion-exchange-beads", 3}
      },
        energy_required = 30,
        always_show_made_in = true,
        result = "cryonite-rounds-magazine"
        } 
})