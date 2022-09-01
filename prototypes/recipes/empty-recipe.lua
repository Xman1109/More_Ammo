data:extend(
  {
    {
      type = "recipe",
      name = "empty-recipe",
      icon = Graphics .. "empty-magazine.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = true,
      category = "crafting",
      group = "intermediate-products",
      subgroup = "intermediate-product",
      order = "a",
      ingredients =
      {
        { "iron-plate", 2 },
      },
      energy_required = 5,
      result = "empty-magazine"
    }
  }
)
