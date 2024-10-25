data:extend(
  {
    {
      type = "recipe",
      name = "iridium-ammo-recipe",
      icon = Graphics .. "SE/iridium-rounds-magazine.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = false,
      category = "space-manufacturing",
      group = "combat",
      subgroup = "ammo",
      order = "ao",
      ingredients =
      {
        {type="item", name="advanced-magazine", amount=1},
        {type="item", name="se-iridium-ingot", amount=3}
      },
      energy_required = 14,
      always_show_made_in = true,
      results = {{type = "item", name = "iridium-rounds-magazine", amount = 1}},
    }
  })
