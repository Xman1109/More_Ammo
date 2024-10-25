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
      name = "fire-ammo-recipe",
      icon = Graphics .. "fire-rounds-magazine.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = false,
      category = "advanced-crafting",
      group = "combat",
      subgroup = "ammo",
      order = "ah",
      ingredients =
      {
        {type="item", name="empty-magazine", amount=1},
        {type="item", name="iron-plate", amount=5},
        {type="item", name="steel-plate", amount=4},
        {type="item", name="sulfur", amount=2},
      },
      energy_required = 4,
      results = {{type = "item", name = "fire-rounds-magazine", amount = 1}},
      hidden = hide_setting,
    }
  })
