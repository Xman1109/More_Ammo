data:extend(
  {
    {
      type = "recipe",
      name = "fmj-ammo-recipe",
      icon = Graphics .. "fmj-rounds-magazine.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = false,
      category = "crafting",
      group = "combat",
      subgroup = "ammo",
      order = "af",
      ingredients =
      {
        { "empty-magazine", 1 },
        { "iron-plate", 3 },
        { "steel-plate", 3 },
        { "copper-plate", 2 },
      },
      energy_required = 40,
      result = "fmj-rounds-magazine"
    }
  })
