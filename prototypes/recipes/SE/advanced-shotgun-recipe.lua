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
        {type="item", name="copper-plate", amount=2},
        {type="item", name="plastic-bar", amount=5},
        {type="item", name="steel-plate", amount=3}
      },
      energy_required = 2,
      results = {{type = "item", name = "advanced-shotgun-shell", amount = 1}},
    }
  })
