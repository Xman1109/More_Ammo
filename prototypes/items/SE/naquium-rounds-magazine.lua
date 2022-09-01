data:extend(
  {
    {
      type = "ammo",
      name = "naquium-rounds-magazine",
      icon = SE_graphics .. "naquium-rounds-magazine.png",
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
                entity_name = "big-explosion-hit"
              },
              {
                type = "create-entity",
                entity_name = "big-explosion-hit"
              },
              {
                type = "create-entity",
                entity_name = "big-explosion-hit"
              },
              {
                type = "create-entity",
                entity_name = "flying-robot-damaged-explosion"
              },
              {
                type = "create-entity",
                entity_name = "flying-robot-damaged-explosion"
              },
              {
                type = "create-entity",
                entity_name = "flying-robot-damaged-explosion"
              },
              {
                type = "damage",
                damage = { amount = 20, type = "physical" }
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
