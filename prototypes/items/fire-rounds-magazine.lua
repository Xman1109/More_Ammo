data:extend(
  {
    {
      type = "ammo",
      name = "fire-rounds-magazine",
      icon = Graphics .. "fire-rounds-magazine.png",
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
                type = "create-entity",
                entity_name = "fire-flame"
              },
              {
                type = "damage",
                damage = { amount = 6, type = "fire" }
              },
              {
                type = "create-sticker",
                sticker = "fire-ammo-sticker",
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
