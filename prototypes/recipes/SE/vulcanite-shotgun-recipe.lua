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
        { "advanced-shotgun-shell", 1 },
        { "se-vulcanite-ion-exchange-beads", 5 }
      },
      energy_required = 12,
      result = "vulcanite-shotgun-shell"
    }
  })
