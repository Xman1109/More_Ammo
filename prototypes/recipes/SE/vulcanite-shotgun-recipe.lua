data:extend(
  {
    {
      type = "recipe",
      name = "vulcanite-shotgun-recipe",
      icon = Graphics .. "SE/vulcanite-shotgun-shell.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = false,
      category = "crafting",
      group = "combat",
      subgroup = "ammo",
      order = "c-b",
      ingredients =
      {
        {type="item", name="advanced-shotgun-shell", amount=1},
        {type="item", name="se-vulcanite-ion-exchange-beads", amount=5}
      },
      energy_required = 12,
      results = {{type = "item", name = "vulcanite-shotgun-shell", amount = 1}},
    }
  })
