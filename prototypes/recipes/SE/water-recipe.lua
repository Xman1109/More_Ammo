data:extend(
    {
        {
        type = "recipe",
        name = "water-recipe",
        icon = "__More_Ammo__/graphics/icons/items/SE/water-magazine.png",
        icon_mipmaps = 4,
        icon_size = 63,
        enabled = false,
        category = "crafting",
        group = "combat",
        subgroup = "ammo",
        order = "aj",
        ingredients =
      {
         {"advanced-magazine", 1},
         {"se-water-ice", 5}
      },
        energy_required = 40,
        result = "water-magazine"
        } 
})