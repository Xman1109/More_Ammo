Graphics = "__More_Ammo__/graphics/icons/items/"
SE_graphics = "__More_Ammo__/graphics/icons/items/SE/"
SA_graphics = "__More_Ammo__/graphics/icons/items/Sniper_Ammo/"

local recipes = "prototypes.recipes."
local SE_recipes = "prototypes.recipes.SE."
local items = "prototypes.items."
local SE_items = "prototypes.items.SE."
local vanilla_changes = "prototypes.vanilla-changes."
local technology = "prototypes.technology."

-- vanilla changes
require(vanilla_changes .. "ammo-recipes")
require(vanilla_changes .. "technology")

-- technologys
require(technology .. "advanced-ammo")
require(technology .. "chemical-ammo")

-- recipes
require(recipes .. "tungsten-recipe")
require(recipes .. "fmj-recipe")
require(recipes .. "sp-recipe")
require(recipes .. "fire-recipe")
require(recipes .. "he-recipe")
require(recipes .. "acid-recipe")
require(recipes .. "empty-recipe")
require(recipes .. "empty-shotgun-recipe")
require(recipes .. "uranium-shotgun-recipe")

-- Items
--require(items .. "SA.sniper-rounds-magazine")
require(items .. "tungsten-rounds-magazine")
require(items .. "fmj-rounds-magazine")
require(items .. "sp-rounds-magazine")
require(items .. "fire-rounds-magazine")
require(items .. "he-rounds-magazine")
require(items .. "acid-rounds-magazine")
require(items .. "empty-magazine")
require(items .. "empty-shotgun-shell")
require(items .. "uranium-shotgun-shell")

if mods["space-exploration"] then

    -- Items
    require(SE_items .. "advanced-magazine")
    -- require(SE_items .. "advanced-shotgun-shell")
    require(SE_items .. "water-magazine")
    require(SE_items .. "iridium-rounds-magazine")
    require(SE_items .. "vulcanite-rounds-magazine")
    require(SE_items .. "naquium-rounds-magazine")
    require(SE_items .. "beryllium-rounds-magazine")
    require(SE_items .. "cryonite-rounds-magazine")
    -- require(SE_items .. "vulcanite-shotgun-shell")    not ready yet

    -- recipes
    require(SE_recipes .. "advanced-recipe")
    -- require(SE_recipes .. "advanced-shotgun-recipe")
    require(SE_recipes .. "water-recipe")
    require(SE_recipes .. "iridium-recipe")
    require(SE_recipes .. "vulcanite-recipe")
    require(SE_recipes .. "naquium-recipe")
    require(SE_recipes .. "beryllium-recipe")
    require(SE_recipes .. "cryonite-recipe")
    -- require(SE_recipes .. "vulcanite-shotgun-recipe")

    -- technology
    require("prototypes/technology/SE-ammo")
end
