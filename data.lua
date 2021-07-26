-- require("")

--vanilla changes
require("prototypes/vanilla-changes/ammo-recipes")
require("prototypes/vanilla-changes/technology")


--technologys
require("prototypes/technology/advanced-ammo")
require("prototypes/technology/chemical-ammo")


--recipes
require("prototypes/recipes/tungsten-recipe")
require("prototypes/recipes/fmj-recipe")
require("prototypes/recipes/sp-recipe")
require("prototypes/recipes/fire-recipe")
require("prototypes/recipes/acid-recipe")
require("prototypes/recipes/he-recipe")
require("prototypes/recipes/empty-recipe")
require("prototypes/recipes/empty-shotgun-recipe")
require("prototypes/recipes/uranium-shotgun-recipe")


--Items
require("prototypes/items/tungsten-rounds-magazine")
require("prototypes/items/fmj-rounds-magazine")
require("prototypes/items/sp-rounds-magazine")
require("prototypes/items/fire-rounds-magazine")
require("prototypes/items/acid-rounds-magazine")
require("prototypes/items/he-rounds-magazine")
require("prototypes/items/empty-magazine")
require("prototypes/items/empty-shotgun-shell")
require("prototypes/items/uranium-shotgun-shell")



if mods["space-exploration"] then

--Items
require("prototypes/items/SE/advanced-magazine")
require("prototypes/items/SE/water-magazine")
require("prototypes/items/SE/iridium-rounds-magazine")
require("prototypes/items/SE/vulcanite-rounds-magazine")
require("prototypes/items/SE/naquium-rounds-magazine")
require("prototypes/items/SE/beryllium-rounds-magazine")
require("prototypes/items/SE/vulcanite-shotgun-shell")


--recipes
require("prototypes/recipes/SE/advanced-recipe")
require("prototypes/recipes/SE/water-recipe")
require("prototypes/recipes/SE/iridium-recipe")
require("prototypes/recipes/SE/vulcanite-recipe")
require("prototypes/recipes/SE/naquium-recipe")
require("prototypes/recipes/SE/beryllium-recipe")
require("prototypes/recipes/SE/vulcanite-shotgun-recipe")

end