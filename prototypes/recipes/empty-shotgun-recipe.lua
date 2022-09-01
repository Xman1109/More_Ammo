data:extend(
  {
    {
      type = "recipe",
      name = "empty-shotgun-recipe",
      icon = Graphics .. "empty-shotgun-shell.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = true,
      category = "crafting",
      group = "intermediate-products",
      subgroup = "intermediate-product",
      order = "a",
      ingredients =
      {
        { "copper-plate", 2 }
      },
      energy_required = 5,
      result = "empty-shotgun-shell"
    }
  })
