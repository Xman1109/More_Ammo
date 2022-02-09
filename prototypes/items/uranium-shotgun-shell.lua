data:extend(
    {
        {
            type = "ammo",
            name = "uranium-shotgun-shell",
            icon = Graphics .. "uranium-shotgun-shell.png",
            icon_size = 63,
            ammo_type =
            {
              category = "shotgun-shell",
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
                      damage = { amount = 24, type = "physical"}
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