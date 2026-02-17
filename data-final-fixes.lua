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

-- Recycling notes:
-- - Only runs when the Space Age recycling category exists.
-- - Builds hidden recycling recipes from the first recipe that produces the item.
-- - Returns 50% of item ingredients, rounded down; fluids/variable amounts are skipped.
-- - High-capacity items are supported when the setting is enabled.
local function recipe_produces_item(recipe, item_name)
    if recipe.result == item_name then
        return true
    end

    local function results_have_item(results)
        if not results then
            return false
        end
        for _, result in pairs(results) do
            local name = result.name or result[1]
            if name == item_name then
                return true
            end
        end
        return false
    end

    if results_have_item(recipe.results) then
        return true
    end
    if recipe.normal and (recipe.normal.result == item_name or results_have_item(recipe.normal.results)) then
        return true
    end
    if recipe.expensive and (recipe.expensive.result == item_name or results_have_item(recipe.expensive.results)) then
        return true
    end

    return false
end

local function find_recipe_for_item(item_name)
    for _, recipe in pairs(data.raw.recipe or {}) do
        if recipe_produces_item(recipe, item_name) then
            return recipe
        end
    end
    return nil
end

local function get_recipe_ingredients(recipe)
    if recipe.ingredients then
        return recipe.ingredients
    end
    if recipe.normal and recipe.normal.ingredients then
        return recipe.normal.ingredients
    end
    if recipe.expensive and recipe.expensive.ingredients then
        return recipe.expensive.ingredients
    end
    return nil
end

local function build_recycling_results(ingredients, ratio)
    local results = {}
    for _, ingredient in pairs(ingredients or {}) do
        local ingredient_type = ingredient.type or "item"
        if ingredient_type == "item" then
            local name = ingredient.name or ingredient[1]
            local amount = ingredient.amount or ingredient[2]
            if amount then
                local result_amount = math.floor((amount * ratio) + 1e-9)
                if result_amount > 0 then
                    table.insert(results, { type = "item", name = name, amount = result_amount })
                end
            else
                log("Recycling skipped ingredient with variable amount: " .. name)
            end
        end
    end
    return results
end

local function get_item_icon_layers(item_name)
    local item = (data.raw.item and data.raw.item[item_name]) or (data.raw.ammo and data.raw.ammo[item_name])
    if not item then
        return nil
    end

    if item.icons then
        return table.deepcopy(item.icons)
    end

    if item.icon then
        return { { icon = item.icon, icon_size = item.icon_size or 64 } }
    end

    return nil
end

local function get_recycling_overlays(base_item_name)
    local recipe = data.raw.recipe and data.raw.recipe[base_item_name .. "-recycling"]
    if not (recipe and recipe.icons) then
        return nil, nil
    end

    local count = #recipe.icons
    if count >= 3 then
        return table.deepcopy(recipe.icons[1]), table.deepcopy(recipe.icons[count])
    end
    if count == 2 then
        return nil, table.deepcopy(recipe.icons[2])
    end

    return nil, nil
end

local function add_recycling_recipe(item_name, recipe)
    if data.raw.recipe[item_name .. "-recycling"] then
        return
    end

    local ingredients = get_recipe_ingredients(recipe)
    if not ingredients then
        log("Recycling skipped, no ingredients for recipe of " .. item_name)
        return
    end

    local results = build_recycling_results(ingredients, 0.5)
    if #results == 0 then
        log("Recycling skipped, no results for " .. item_name)
        return
    end

    local icons = nil
    if item_name:find("^high%-capacity%-") then
        local base_item = item_name:gsub("^high%-capacity%-", "")
        local underlay, overlay = get_recycling_overlays(base_item)
        local item_icons = get_item_icon_layers(item_name)
        if item_icons then
            icons = {}
            if underlay then
                table.insert(icons, underlay)
            end
            for _, icon_layer in pairs(item_icons) do
                table.insert(icons, icon_layer)
            end
            if overlay then
                table.insert(icons, overlay)
            end
        end
    else
        icons = get_item_icon_layers(item_name)
    end
    local recycling_recipe = {
        type = "recipe",
        name = item_name .. "-recycling",
        category = "recycling",
        enabled = true,
        hidden = true,
        energy_required = 1,
        ingredients = { { type = "item", name = item_name, amount = 1 } },
        results = results
    }

    if icons then
        recycling_recipe.icons = icons
    else
        log("Recycling skipped, no icon found for " .. item_name)
        return
    end

    data:extend({ recycling_recipe })
end

if data.raw["recipe-category"] and data.raw["recipe-category"]["recycling"] then
    local recycling_items = {
        "firearm-magazine",
        "piercing-rounds-magazine",
        "uranium-rounds-magazine",
        "acid-rounds-magazine",
        "fire-rounds-magazine",
        "fmj-rounds-magazine",
        "sp-rounds-magazine",
        "tungsten-rounds-magazine",
        "he-rounds-magazine",
        "shotgun-shell",
        "piercing-shotgun-shell",
        "uranium-shotgun-shell",
        "beryllium-rounds-magazine",
        "cryonite-rounds-magazine",
        "iridium-rounds-magazine",
        "naquium-rounds-magazine",
        "vulcanite-rounds-magazine"
    }

    local base_count = #recycling_items
    if settings.startup["high-capacity-magazines"].value then
        for index = 1, base_count do
            table.insert(recycling_items, "high-capacity-" .. recycling_items[index])
        end
    end

    for _, item in pairs(recycling_items) do
        local recipe = find_recipe_for_item(item)
        if recipe then
            add_recycling_recipe(item, recipe)
        else
            log("Recycling skipped, no recipe found for " .. item)
        end
    end
end
