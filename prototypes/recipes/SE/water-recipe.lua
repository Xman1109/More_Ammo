data:extend(
  {
    {
      type = "recipe",
      name = "water-recipe",
      icon = Graphics .. "SE/water-magazine.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = false,
      category = "crafting",
      group = "combat",
      subgroup = "ammo",
      order = "aj",
      ingredients =
      {
        {type="item", name="advanced-magazine", amount=1},
        {type="item", name="se-water-ice", amount=5}
      },
      energy_required = 2,
      results = {{type = "item", name = "water-magazine", amount = 1}},
    }
  })
