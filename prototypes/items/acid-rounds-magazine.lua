data:extend(
{
    {
    type = "ammo",
    name = "acid-rounds-magazine",
    icon = "__More_Ammo__/graphics/icons/items/acid-rounds-magazine.png",
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
                entity_name = "acid-splash-fire-spitter-small"
            },
            {
              type = "damage",
              damage = { amount = 20, type = "acid"}
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