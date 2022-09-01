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
                damage = { amount = 10, type = "fire" }
              }
            }
          }
        }
      },
      magazine_size = 15,
      group = "combat",
      subgroup = "ammo",
      stack_size = 200
    }
  })
