--advanced-magazine
data:extend(  --its useless...
{
    {
    type = "ammo",
    name = "water-magazine",
    icon = SE_graphics .. "water-magazine.png",
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
              type = "create-entity",
              entity_name = "water-splash"
            },
            {
              type = "damage",
              damage = { amount = 0.01, type = "mental"}  --you just get Mental damage....
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