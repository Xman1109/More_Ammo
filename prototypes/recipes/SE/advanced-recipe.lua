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
        { "iron-plate", 5 },
        { "steel-plate", 3 },
        { "plastic-bar", 5 },
      },
      energy_required = 2,
      result = "advanced-magazine"
    }
  }
)
