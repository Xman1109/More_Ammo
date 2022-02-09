data:extend( --this is inspired from Krastorio 2 
    {
        {
        type = "recipe",
        name = "he-ammo-recipe",
        icon = "__More_Ammo__/graphics/icons/items/he-rounds-magazine.png",
        icon_size = 63,
        enabled = false,
        category = "advanced-crafting",
        group = "combat",
        subgroup = "ammo",
        order = "ai",
        ingredients =
      {
         {"empty-magazine", 1},
         {"iron-plate", 5},
         {"steel-plate", 4},
         {"explosives", 5},
      },
        energy_required = 100,
        result = "he-rounds-magazine"
        }
})