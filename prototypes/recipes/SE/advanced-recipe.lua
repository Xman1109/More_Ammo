data:extend(
  {
    {
      type = "recipe",
      name = "advanced-recipe",
      icon = Graphics .. "SE/advanced-magazine.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = false,
      category = "crafting",
      group = "intermediate-products",
      subgroup = "intermediate-product",
      order = "b",
      ingredients =
      {
        {type="item", name="iron-plate", amount=5},
        {type="item", name="steel-plate", amount=3},
        {type="item", name="plastic-bar", amount=5},
      },
      energy_required = 2,
      results = {{type = "item", name = "advanced-magazine", amount = 1}},
    }
  }
)
