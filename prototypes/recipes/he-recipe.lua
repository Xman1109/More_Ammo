data:extend(--this is inspired from Krastorio 2
  {
    {
      type = "recipe",
      name = "he-ammo-recipe",
      icon = Graphics .. "he-rounds-magazine.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = false,
      category = "advanced-crafting",
      group = "combat",
      subgroup = "ammo",
      order = "ai",
      ingredients =
      {
        { "empty-magazine", 1 },
        { "iron-plate", 5 },
        { "steel-plate", 4 },
        { "explosives", 1 },
      },
      energy_required = 6,
      result = "he-rounds-magazine"
    }
  })
