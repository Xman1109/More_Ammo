if settings.startup["high-capacity-magazines"].value == true then
    local recipes = "prototypes.recipes."
    local items = "prototypes.items."
    local techs = "prototypes.technology."
    require(items .. "high-capacity-mags")
    require(recipes .. "high-capacity-recipe")
    require(techs .. "advanced-high-capacity-ammo")
    require(techs .. "high-capacity-chemical-ammo")
    require(techs .. "high-capacity-shotgun-shells")
end
