data:extend(
  {
    {
      type = "ammo",
      name = "acid-rounds-magazine",
      icon = Graphics .. "acid-rounds-magazine.png",
      icon_mipmaps = 4,
      icon_size = 64,
      ammo_type =
      {
        category = "bullet",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "damage",
                damage = { amount = 6, type = "acid" }
              },
              {
                type = "create-fire",
                entity_name = "acid-splash-fire-spitter-medium",
                show_in_tooltip = true
              }
            },
            source_effects =
            {
              type = "create-explosion",
              entity_name = "explosion-gunshot"
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
