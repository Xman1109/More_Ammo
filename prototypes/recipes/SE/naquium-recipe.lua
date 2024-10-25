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
        {type="item", name="advanced-magazine", amount=1},
        {type="item", name="se-naquium-ingot", amount=3}
      },
      energy_required = 12,
      always_show_made_in = true,
      results = {{type = "item", name = "naquium-rounds-magazine", amount = 1}},
    }
  })
