data:extend(
    {
        {
            type = "ammo",
            name = "vulcanite-shotgun-shell",
            icon = SE_graphics .. "vulcanite-shotgun-shell.png",
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
                        type = "create-entity",
                        entity_name = "fire-flame-on-tree"
                      },
                      {
                        type = "create-entity",
                        entity_name = "fire-flame-on-tree"
                      },
                      {
                        type = "create-entity",
                        entity_name = "fire-flame-on-tree"
                      },
                      {
                        type = "create-entity",
                        entity_name = "fire-flame-on-tree"
                      },
                      {
                        type = "create-entity",
                        entity_name = "fire-flame-on-tree"
                      },
                      type = "damage",
                      damage = { amount = 18, type = "physical"}
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