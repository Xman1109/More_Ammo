data:extend(
  {
    {
      type = "recipe",
      name = "fire-ammo-recipe",
      icon = Graphics .. "fire-rounds-magazine.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = false,
      category = "advanced-crafting",
      group = "combat",
      subgroup = "ammo",
      order = "ah",
      ingredients =
      {
        { "empty-magazine", 1 },
        { "iron-plate", 5 },
        { "steel-plate", 4 },
        { "sulfur", 2 },
      },
      energy_required = 4,
      result = "fire-rounds-magazine"
    }
  })
