for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipe = force.recipes

    if settings.startup["high-capacity-magazines"].value == true then
        if technologies["unlock-high-capacity-ammo"].researched then
            recipe["high-capacity-firearm-magazine"].enabled = true
            recipe["high-capacity-piercing-rounds-magazine"].enabled = true
            recipe["high-capacity-uranium-rounds-magazine"].enabled = true
        end
    end
end
