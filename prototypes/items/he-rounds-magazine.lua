data:extend(
  {
    {
      type = "ammo",
      name = "he-rounds-magazine",
      icon = Graphics .. "he-rounds-magazine.png",
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
                entity_name = "explosion"
              },
              {
                type = "damage",
                damage = { amount = 10, type = "explosion" }
              }
            }
          }
        }
      },
      magazine_size = 5,
      group = "combat",
      subgroup = "ammo",
      stack_size = 200
    }
  })
