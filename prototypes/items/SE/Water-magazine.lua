--advanced-magazine
data:extend(  --its useless...
{
    {
    type = "ammo",
    name = "water-magazine",
    icon = "__More_Ammo__/graphics/icons/items/SE/water-magazine.png",
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
              damage = { amount = 0, type = "physical"}  --you just get Mental damage....
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