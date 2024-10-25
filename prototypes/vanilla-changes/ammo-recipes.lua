data:extend(
  {

    {
      type = "recipe",
      name = "firearm-magazine",
      enabled = true,
      order = "a[basic-clips]a[firearm-magazine]",
      energy_required = 3,
      ingredients =
      {
        {type="item", name="empty-magazine", amount=1},
        {type="item", name="iron-plate", amount=2}
      },
      results = {{type = "item", name = "firearm-magazine", amount = 1}},
    },
    {
      type = "recipe",
      name = "piercing-rounds-magazine",
      enabled = false,
      order = "a[basic-clips]b[piercing-rounds-magazine]",
      energy_required = 3,
      ingredients =
      {
        {type="item", name="empty-magazine", amount=1},
        {type="item", name="steel-plate", amount=1},
        {type="item", name="copper-plate", amount=5}
      },
      results = {{type = "item", name = "piercing-rounds-magazine", amount = 1}},
    },
    {
      type = "recipe",
      name = "shotgun-shell",
      enabled = false,
      order = "b[shotgun]a[basic]",
      energy_required = 3,
      ingredients =
      {
        {type="item", name="empty-shotgun-shell", amount=1},
        {type="item", name="iron-plate", amount=2}
      },
      results = {{type = "item", name = "shotgun-shell", amount = 1}},
    },
    {
      type = "recipe",
      name = "piercing-shotgun-shell",
      enabled = false,
      order = "b[shotgun]b[piercing]",
      energy_required = 8,
      ingredients =
      {
        {type="item", name="empty-shotgun-shell", amount=1},
        {type="item", name="copper-plate", amount=5},
        {type="item", name="steel-plate", amount=2}
      },
      results = {{type = "item", name = "piercing-shotgun-shell", amount = 1}},
    }
  })

data.raw["recipe"]["uranium-rounds-magazine"].order = "a[basic-clips]c[uranium-rounds-magazine]"
