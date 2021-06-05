data:extend(
{
    {
    type = "ammo",
    name = "fire-rounds-magazine",
    icon = "__More_Ammo__/graphics/icons/items/fire-rounds-magazine.png",
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
                entity_name = "fire-flame"
            },
            {
              type = "damage",
              damage = { amount = 10, type = "fire"}
            }
          }
        }
      }
    },
    magazine_size = 15,
    group = "combat",
    subgroup = "ammo",
    stack_size = 200
  }
})