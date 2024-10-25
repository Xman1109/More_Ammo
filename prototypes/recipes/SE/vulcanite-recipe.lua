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
        {type="item", name="advanced-magazine", amount=1},
        {type="item", name="se-vulcanite-ion-exchange-beads", amount=3}
      },
      energy_required = 10,
      always_show_made_in = true,
      results = {{type = "item", name = "vulcanite-rounds-magazine", amount = 1}},
    }
  })
