data:extend(
  {
    {
      type = "ammo",
      name = "uranium-shotgun-shell",
      icon = Graphics .. "uranium-shotgun-shell.png",
      icon_mipmaps = 4,
      icon_size = 64,
      ammo_category = "shotgun-shell",
      ammo_type =
      {
        category = "shotgun-shell",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            source_effects = data.raw.ammo["piercing-rounds-magazine"].ammo_type.action.action_delivery.source_effects,
            target_effects =
            {
              {
                type = "damage",
                damage = { amount = 24, type = "physical" }
              }
            }
          }
        }
      },
      magazine_size = 10,
      group = "combat",
      subgroup = "ammo",
      stack_size = 200
    }


  })
