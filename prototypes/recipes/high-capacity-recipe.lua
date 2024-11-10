local items = { "firearm-magazine", "piercing-rounds-magazine", "uranium-rounds-magazine", "shotgun-shell",
    "piercing-shotgun-shell", "acid-ammo-recipe",
    "fire-ammo-recipe", "fmj-ammo-recipe", "sp-ammo-recipe",
    "tungsten-ammo-recipe", "uranium-shotgun-recipe", "beryllium-ammo-recipe", "cryonite-ammo-recipe",
    "iridium-ammo-recipe", "naquium-ammo-recipe", "vulcanite-ammo-recipe", "he-ammo-recipe" }

local icons = { "firearm-magazine", "piercing-rounds-magazine", "uranium-rounds-magazine", "shotgun-shell",
    "piercing-shotgun-shell", "acid-rounds-magazine",
    "fire-rounds-magazine", "fmj-rounds-magazine", "sp-rounds-magazine",
    "tungsten-rounds-magazine", "uranium-shotgun-shell", "beryllium-rounds-magazine", "cryonite-rounds-magazine",
    "iridium-rounds-magazine", "naquium-rounds-magazine", "vulcanite-rounds-magazine", "he-rounds-magazine" }


for _, item in pairs(items) do
    if data.raw["ammo"]["high-capacity-" .. icons[_]] ~= nil then
        local export = table.deepcopy(data.raw["recipe"][item])
        local translated_String = "item-name." .. icons[_]
        export.name = "high-capacity-" .. item
        export.enabled = false
        -- export.localised_name = { "", { "item-name.extended" }, " ", { translated_String } }
        if translated_String:find("shell") then
            export.localised_name = { "", { "item-name.extended_shell" }, " ", { translated_String } }
        elseif translated_String:find("firearm") then
            export.localised_name = { "item-name.high-capacity-firearm-magazine" }
        elseif translated_String:find("piercing") then
            export.localised_name = { "item-name.high-capacity-piercing-rounds-magazine" }
        elseif translated_String:find("uranium") then
            export.localised_name = { "item-name.high-capacity-uranium-rounds-magazine" }
        else
            export.localised_name = { "", { "item-name.extended" }, " ", { translated_String } }
        end
        export.icons = data.raw["ammo"]["high-capacity-" .. icons[_]].icons
        if data.raw["recipe"][item].order ~= nil then
            export.order = export.order .. "-b"
        else
            log(serpent.block(data.raw["recipe"][item]))
        end
        for b, ingredient in pairs(export.ingredients) do
            if ingredient.name == "empty-magazine" then
                ingredient.name = "empty-high-capacity-magazine"
            elseif ingredient.name == "advanced-magazine" then
                ingredient.name = "advanced-high-capacity-magazine"
            elseif ingredient.name == "empty-shotgun-shell" then
                ingredient.name = "empty-high-capacity-shotgun-shell"
            else
                if type(ingredient[2]) == "number" then
                    export.ingredients[b] = { ingredient.name,
                        math.ceil(ingredient[2] * settings.startup[icons[_] .. "-high-capacity"].value / 4 * 3) }
                else
                    export.ingredients[b] = { type = ingredient.type, name = ingredient.name,
                        amount = math.ceil(ingredient.amount * settings.startup[icons[_] .. "-high-capacity"].value / 4 *
                            3) }
                end
            end
        end
        export.results = {{type = "item", name = "high-capacity-" .. icons[_], amount = 1}},
        log(serpent.block(export))
        data:extend({ export })
    else
        log("high-capacity-" .. icons[_] .. " does not exist")
    end
end
