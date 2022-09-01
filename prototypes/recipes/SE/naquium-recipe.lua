data:extend(
  {
    {
      type = "recipe",
      name = "naquium-ammo-recipe",
      icon = Graphics .. "SE/naquium-rounds-magazine.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = false,
      category = "space-manufacturing",
      group = "combat",
      subgroup = "ammo",
      order = "am",
      ingredients =
      {
        { "advanced-magazine", 1 },
        { "se-naquium-ingot", 3 }
      },
      energy_required = 30,
      always_show_made_in = true,
      result = "naquium-rounds-magazine"
    }
  })
