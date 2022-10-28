if settings.startup["high-capacity-magazines"].value == true then
    local recipes = "prototypes.recipes."
    local items = "prototypes.items."
    require(items .. "high-capacity-mags")
    require(recipes .. "high-capacity-recipe")
end
