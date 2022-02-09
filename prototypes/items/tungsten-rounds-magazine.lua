data:extend(  --scrapped the Idea of Tungsten Rounds (Tungsten = Hollowpoint)
{
    {
    type = "ammo",
    name = "tungsten-rounds-magazine",
    icon = Graphics .. "tungsten-rounds-magazine.png",
    icon_mipmaps = 4,
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
              damage = { amount = 11, type = "physical"}
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
