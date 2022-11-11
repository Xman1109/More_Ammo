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
        { "advanced-magazine", 1 },
        { "se-water-ice", 5 }
      },
      energy_required = 2,
      result = "water-magazine"
    }
  })
