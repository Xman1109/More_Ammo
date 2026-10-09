local ammunition = {
    ["empty-magazine"] = "firearm-magazine",
    ["empty-shotgun-shell"] = "shotgun-shell",
    ["advanced-magazine"] = "piercing-rounds-magazine",
    ["advanced-shotgun-shell"] = "piercing-shotgun-shell"
}

-- Only replace containers in More Ammo's added recipes. Vanilla recipes and
-- recipes supplied by other mods keep their original ammunition chains.
local ammo_recipes = {
    "acid-ammo-recipe", "fire-ammo-recipe", "fmj-ammo-recipe", "sp-ammo-recipe",
    "tungsten-ammo-recipe", "he-ammo-recipe", "uranium-shotgun-recipe",
    "water-recipe", "beryllium-ammo-recipe", "cryonite-ammo-recipe",
    "iridium-ammo-recipe", "naquium-ammo-recipe", "vulcanite-ammo-recipe",
    "vulcanite-shotgun-recipe"
}

for _, recipe_name in ipairs(ammo_recipes) do
    local recipe = data.raw.recipe[recipe_name]
    if recipe then
        for _, ingredient in ipairs(recipe.ingredients) do
            if ingredient.type == "item" and ammunition[ingredient.name] then
                ingredient.name = ammunition[ingredient.name]
            end
        end
    end
end
