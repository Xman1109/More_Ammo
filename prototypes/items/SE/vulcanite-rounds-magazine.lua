data:extend(
{
    {
    type = "ammo",
    name = "vulcanite-rounds-magazine",
    icon = "__More_Ammo__/graphics/icons/items/SE/vulcanite-rounds-magazine.png",
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
              type = "create-fire",
              entity_name = "fire-flame-on-tree"
            },
            {
              type = "damage",
              damage = { amount = 19, type = "physical"}
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