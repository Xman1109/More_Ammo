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
        {type="item", name="empty-magazine", amount=1},
        {type="item", name="iron-plate", amount=3},
        {type="item", name="steel-plate", amount=7},
        {type="item", name="copper-plate", amount=3},
      },
      energy_required = 4,
      results = {{type = "item", name = "tungsten-rounds-magazine", amount = 1}},
      hidden = hide_setting,
    }
  })
