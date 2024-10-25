data:extend(
  {
    {
      type = "recipe",
      name = "beryllium-ammo-recipe",
      icon = Graphics .. "SE/beryllium-rounds-magazine.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = false,
      category = "space-manufacturing",
      group = "combat",
      subgroup = "ammo",
      order = "ak",
      ingredients =
      {
        {type="item", name="advanced-magazine", amount=1},
        {type="item", name="se-beryllium-ingot", amount=3}
      },
      energy_required = 8,
      always_show_made_in = true,
      results = {{type = "item", name = "beryllium-rounds-magazine", amount = 1}},
    }
  })
