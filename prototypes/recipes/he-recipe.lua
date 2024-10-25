local hide_setting = nil
if settings.startup["chemical-magazines"].value then
  hide_setting = false
else
  hide_setting = true
end


data:extend(--this is inspired from Krastorio 2
  {
    {
      type = "recipe",
      name = "he-ammo-recipe",
      icon = Graphics .. "he-rounds-magazine.png",
      icon_mipmaps = 4,
      icon_size = 64,
      enabled = false,
      category = "advanced-crafting",
      group = "combat",
      subgroup = "ammo",
      order = "ai",
      ingredients =
      {
        {type="item", name="empty-magazine", amount=1},
        {type="item", name="iron-plate", amount=5},
        {type="item", name="steel-plate", amount=4},
        {type="item", name="explosives", amount=1},
      },
      energy_required = 6,
      results = {{type = "item", name = "he-rounds-magazine", amount = 1}},
      hidden = hide_setting,
    }
  })
