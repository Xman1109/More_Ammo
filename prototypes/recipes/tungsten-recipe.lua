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
      name = "tungsten-ammo-recipe",
      icon = Graphics .. "tungsten-rounds-magazine.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = false,
      category = "crafting",
      group = "combat",
      subgroup = "ammo",
      order = "ad",
      ingredients =
      {
        { "empty-magazine", 1 },
        { "iron-plate", 3 },
        { "steel-plate", 7 },
        { "copper-plate", 3 },
      },
      energy_required = 4,
      result = "tungsten-rounds-magazine",
      hidden = hide_setting,
    }
  })
