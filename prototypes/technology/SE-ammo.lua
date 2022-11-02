table.insert(data.raw["technology"]["low-density-structure"].effects,
    { type = "unlock-recipe", recipe = "advanced-recipe" })
table.insert(data.raw["technology"]["se-processing-beryllium"].effects,
    { type = "unlock-recipe", recipe = "beryllium-ammo-recipe" })
table.insert(data.raw["technology"]["se-processing-cryonite"].effects,
    { type = "unlock-recipe", recipe = "cryonite-ammo-recipe" })
table.insert(data.raw["technology"]["se-processing-cryonite"].effects,
    { type = "unlock-recipe", recipe = "water-recipe" })
table.insert(data.raw["technology"]["se-processing-iridium"].effects,
    { type = "unlock-recipe", recipe = "iridium-ammo-recipe" })
table.insert(data.raw["technology"]["se-processing-naquium"].effects,
    { type = "unlock-recipe", recipe = "naquium-ammo-recipe" })
table.insert(data.raw["technology"]["se-processing-vulcanite"].effects,
    { type = "unlock-recipe", recipe = "vulcanite-ammo-recipe" })

if settings.startup["high-capacity-magazines"].value == true then
    table.insert(data.raw["technology"]["low-density-structure"].effects,
        { type = "unlock-recipe", recipe = "advanced-high-capacity-recipe" })
    table.insert(data.raw["technology"]["se-processing-beryllium"].effects,
        { type = "unlock-recipe", recipe = "high-capacity-beryllium-ammo-recipe" })
    table.insert(data.raw["technology"]["se-processing-cryonite"].effects,
        { type = "unlock-recipe", recipe = "high-capacity-cryonite-ammo-recipe" })
    table.insert(data.raw["technology"]["se-processing-iridium"].effects,
        { type = "unlock-recipe", recipe = "high-capacity-iridium-ammo-recipe" })
    table.insert(data.raw["technology"]["se-processing-naquium"].effects,
        { type = "unlock-recipe", recipe = "high-capacity-naquium-ammo-recipe" })
    table.insert(data.raw["technology"]["se-processing-vulcanite"].effects,
        { type = "unlock-recipe", recipe = "high-capacity-vulcanite-ammo-recipe" })
end
