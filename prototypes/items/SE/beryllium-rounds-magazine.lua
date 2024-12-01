data:extend(
  {
    {
      type = "ammo",
      name = "beryllium-rounds-magazine",
      icon = SE_graphics .. "beryllium-rounds-magazine.png",
      icon_mipmaps = 4,
      icon_size = 64,
      ammo_category = "bullet",
      ammo_type =
      {
        category = "bullet",
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
                damage = { amount = 19, type = "physical" }
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
