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
        { "empty-magazine", 1 },
        { "iron-plate", 2 }
      },
      result = "firearm-magazine"
    },
    {
      type = "recipe",
      name = "piercing-rounds-magazine",
      enabled = false,
      order = "a[basic-clips]b[piercing-rounds-magazine]",
      energy_required = 3,
      ingredients =
      {
        { "empty-magazine", 1 },
        { "steel-plate", 1 },
        { "copper-plate", 5 }
      },
      result = "piercing-rounds-magazine"
    },
    {
      type = "recipe",
      name = "shotgun-shell",
      enabled = false,
      order = "b[shotgun]a[basic]",
      energy_required = 3,
      ingredients =
      {
        { "empty-shotgun-shell", 1 },
        { "iron-plate", 2 }
      },
      result = "shotgun-shell"
    },
    {
      type = "recipe",
      name = "piercing-shotgun-shell",
      enabled = false,
      order = "b[shotgun]b[piercing]",
      energy_required = 8,
      ingredients =
      {
        { "empty-shotgun-shell", 1 },
        { "copper-plate", 5 },
        { "steel-plate", 2 }
      },
      result = "piercing-shotgun-shell"
    }
  })

data.raw["recipe"]["uranium-rounds-magazine"].order = "a[basic-clips]c[uranium-rounds-magazine]"
