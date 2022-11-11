data:extend(
  {
    {
      type = "recipe",
      name = "advanced-shotgun-recipe",
      icon = Graphics .. "SE/advanced-shotgun-shell.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = true,
      category = "crafting",
      group = "intermediate-products",
      subgroup = "intermediate-product",
      order = "a",
      ingredients =
      {
        { "copper-plate", 2 },
        { "plastic-bar", 5 },
        { "steel-plate", 3 }
      },
      energy_required = 2,
      result = "advanced-shotgun-shell"
    }
  })
