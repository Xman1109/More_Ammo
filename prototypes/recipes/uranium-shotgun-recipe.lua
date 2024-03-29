data:extend(
  {
    {
      type = "recipe",
      name = "uranium-shotgun-recipe",
      icon = Graphics .. "uranium-shotgun-shell.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = false,
      category = "crafting",
      group = "combat",
      subgroup = "ammo",
      order = "c-a",
      ingredients =
      {
        { "piercing-shotgun-shell", 1 },
        { "uranium-238", 1 }
      },
      energy_required = 10,
      result = "uranium-shotgun-shell"
    }
  })
