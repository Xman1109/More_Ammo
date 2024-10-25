data:extend(
  {
    {
      type = "ammo",
      name = "cryonite-rounds-magazine",
      icon = SE_graphics .. "cryonite-rounds-magazine.png",
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
            target_effects =
            {
              {
                type = "damage",
                damage = { amount = 15, type = "physical" }
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
