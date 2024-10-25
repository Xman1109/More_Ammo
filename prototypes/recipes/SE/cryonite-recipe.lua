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
        {type="item", name="advanced-magazine", amount=1},
        {type="item", name="se-cryonite-ion-exchange-beads", amount=3}
      },
      energy_required = 6,
      always_show_made_in = true,
      results = {{type = "item", name = "cryonite-rounds-magazine", amount = 1}},
    }
  })
