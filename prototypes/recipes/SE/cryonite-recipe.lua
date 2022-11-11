data:extend(
  {
    {
      type = "recipe",
      name = "cryonite-ammo-recipe",
      icon = Graphics .. "SE/cryonite-rounds-magazine.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = false,
      category = "space-manufacturing",
      group = "combat",
      subgroup = "ammo",
      order = "al",
      ingredients =
      {
        { "advanced-magazine", 1 },
        { "se-cryonite-ion-exchange-beads", 3 }
      },
      energy_required = 6,
      always_show_made_in = true,
      result = "cryonite-rounds-magazine"
    }
  })
