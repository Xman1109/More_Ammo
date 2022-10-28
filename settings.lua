data:extend(
    {
        {
            type = "bool-setting",
            name = "high-capacity-magazines",
            setting_type = "startup",
            default_value = true,
            order = "a"
        }
    }
)


local items = { "empty-magazine", "empty-shotgun-shell", "advanced-magazine", "firearm-magazine",
    "piercing-rounds-magazine", "uranium-rounds-magazine", "shotgun-shell",
    "piercing-shotgun-shell", "acid-rounds-magazine",
    "fire-rounds-magazine", "fmj-rounds-magazine", "sp-rounds-magazine",
    "tungsten-rounds-magazine", "uranium-shotgun-shell", "beryllium-rounds-magazine", "cryonite-rounds-magazine",
    "iridium-rounds-magazine", "naquium-rounds-magazine", "vulcanite-rounds-magazine", "he-rounds-magazine" }

for _, item in pairs(items) do

    local template = {
        type = "int-setting",
        name = "-high-capacity",
        setting_type = "startup",
        default_value = 2,
        minimum_value = 1,
        maximum_value = 100,
        order = "z"
    }
    local export = template
    export.name = item .. export.name
    log(serpent.block(export))
    data:extend({ export })
end
