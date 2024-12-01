data:extend(
  {
    {
      type = "ammo",
      name = "vulcanite-rounds-magazine",
      icon = SE_graphics .. "vulcanite-rounds-magazine.png",
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
                type = "create-fire",
                entity_name = "fire-flame-on-tree"
              },
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
