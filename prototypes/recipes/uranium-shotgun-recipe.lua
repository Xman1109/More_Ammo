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
        {type="item", name="piercing-shotgun-shell", amount=1},
        {type="item", name="uranium-238", amount=1}
      },
      energy_required = 10,
      results = {{type = "item", name = "uranium-shotgun-shell", amount = 1}},
    }
  })
