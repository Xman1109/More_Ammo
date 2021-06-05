data:extend(    --fmj = Full Metal Jacked
{
    {
    type = "ammo",
    name = "fmj-rounds-magazine",
    icon = "__More_Ammo__/graphics/icons/items/fmj-rounds-magazine.png",
    icon_size = 63,
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
              damage = { amount = 15, type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 5,
    group = "combat",
    subgroup = "ammo",
    stack_size = 100
  }
})