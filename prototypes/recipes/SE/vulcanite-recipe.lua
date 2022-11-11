data:extend(
  {
    {
      type = "recipe",
      name = "vulcanite-ammo-recipe",
      icon = Graphics .. "SE/vulcanite-rounds-magazine.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = false,
      category = "space-manufacturing",
      group = "combat",
      subgroup = "ammo",
      order = "an",
      ingredients =
      {
        { "advanced-magazine", 1 },
        { "se-vulcanite-ion-exchange-beads", 3 }
      },
      energy_required = 10,
      always_show_made_in = true,
      result = "vulcanite-rounds-magazine"
    }
  })
