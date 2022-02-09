data:extend(    --sp = soft point
{
    {
    type = "ammo",
    name = "sp-rounds-magazine",
    icon = Graphics .. "sp-rounds-magazine.png",
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
              damage = { amount = 10, type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 30,
    group = "combat",
    subgroup = "ammo",
    stack_size = 200
  }
})