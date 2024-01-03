local hide_setting = nil
if settings.startup["chemical-magazines"].value then
  hide_setting = false
else
  hide_setting = true
end


data:extend(
  {
    {
      type = "recipe",
      name = "acid-ammo-recipe",
      icon = Graphics .. "acid-rounds-magazine.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = false,
      category = "crafting-with-fluid",
      group = "combat",
      subgroup = "ammo",
      order = "ag",
      ingredients =
      {
        { "empty-magazine", 1 },
        { "iron-plate", 5 },
        { "steel-plate", 4 },
        { type = "fluid", name = "sulfuric-acid", amount = 10 },
      },
      energy_required = 4,
      result = "acid-rounds-magazine",
      hidden = hide_setting,
    }
  })
