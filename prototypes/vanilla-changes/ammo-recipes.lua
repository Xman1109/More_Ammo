data:extend(
    {

        {
            type = "recipe",
            name = "firearm-magazine",
            enabled = true,
            energy_required = 3,
            ingredients =
            {
              {"empty-magazine", 1},
              {"iron-plate", 2}
            },
            result = "firearm-magazine"
        },
        {
            type = "recipe",
            name = "piercing-rounds-magazine",
            enabled = false,
            energy_required = 3,
            ingredients =
            {
              {"empty-magazine", 1},
              {"steel-plate", 1},
              {"copper-plate", 5}
            },
            result = "piercing-rounds-magazine"
          },
          {
            type = "recipe",
            name = "shotgun-shell",
            enabled = false,
            energy_required = 3,
            ingredients =
            {
              {"empty-shotgun-shell", 1},
              {"iron-plate", 2}
            },
            result = "shotgun-shell"
          },
          {
            type = "recipe",
            name = "piercing-shotgun-shell",
            enabled = false,
            energy_required = 8,
            ingredients =
            {
              {"empty-shotgun-shell", 1},
              {"copper-plate", 5},
              {"steel-plate", 2}
            },
            result = "piercing-shotgun-shell"
          }
    })