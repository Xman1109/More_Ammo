for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipe = force.recipes

    if settings.startup["high-capacity-magazines"].value == true and recipe["advanced-recipe"] ~= nil then
        if technologies["low-density-structure"].researched then
            recipe["advanced-high-capacity-recipe"].enabled = true
            recipe["advanced-recipe"].enabled = true
        end
        if technologies["se-processing-beryllium"].researched then
            recipe["high-capacity-beryllium-ammo-recipe"].enabled = true
            recipe["beryllium-ammo-recipe"].enabled = true
        end
        if technologies["se-processing-cryonite"].researched then
            recipe["high-capacity-cryonite-ammo-recipe"].enabled = true
            recipe["cryonite-ammo-recipe"].enabled = true
            recipe["water-recipe"].enabled = true
        end
        if technologies["se-processing-iridium"].researched then
            recipe["high-capacity-iridium-ammo-recipe"].enabled = true
            recipe["iridium-ammo-recipe"].enabled = true
        end
        if technologies["se-processing-naquium"].researched then
            recipe["high-capacity-naquium-ammo-recipe"].enabled = true
            recipe["naquium-ammo-recipe"].enabled = true
        end
        if technologies["se-processing-vulcanite"].researched then
            recipe["high-capacity-vulcanite-ammo-recipe"].enabled = true
            recipe["vulcanite-ammo-recipe"].enabled = true
        end
    end
end
