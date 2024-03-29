local hide_setting = nil
if settings.startup["advanced-magazines"].value then
  hide_setting = false
else
  hide_setting = true
end


data:extend(
  {
    {
      type = "recipe",
      name = "sp-ammo-recipe",
      icon = Graphics .. "sp-rounds-magazine.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = false,
      category = "crafting",
      group = "combat",
      subgroup = "ammo",
      order = "ae",
      ingredients =
      {
        { "empty-magazine", 1 },
        { "iron-plate", 7 },
        { "steel-plate", 5 },
      },
      energy_required = 8,
      result = "sp-rounds-magazine",
      hidden = hide_setting,
    }
  })
