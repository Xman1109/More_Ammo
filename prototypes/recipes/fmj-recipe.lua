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
      name = "fmj-ammo-recipe",
      icon = Graphics .. "fmj-rounds-magazine.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = false,
      category = "crafting",
      group = "combat",
      subgroup = "ammo",
      order = "af",
      ingredients =
      {
        {type="item", name="empty-magazine", amount=1},
        {type="item", name="iron-plate", amount=3},
        {type="item", name="steel-plate", amount=3},
        {type="item", name="copper-plate", amount=2},
      },
      energy_required = 8,
      results = {{type = "item", name = "fmj-rounds-magazine", amount = 1}},
      hidden = hide_setting,
    }
  })
