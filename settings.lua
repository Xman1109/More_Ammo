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


local items = { "empty-magazine", "empty-shotgun-shell", "advanced-magazine",
    "firearm-magazine",
    "piercing-rounds-magazine", "uranium-rounds-magazine", "acid-rounds-magazine",
    "fire-rounds-magazine", "fmj-rounds-magazine", "sp-rounds-magazine",
    "tungsten-rounds-magazine", "he-rounds-magazine", "shotgun-shell",
    "piercing-shotgun-shell", "uranium-shotgun-shell", "beryllium-rounds-magazine", "cryonite-rounds-magazine",
    "iridium-rounds-magazine", "naquium-rounds-magazine", "vulcanite-rounds-magazine" }

for _, item in pairs(items) do
    if item:find("empty") or item:find("advanced") then
        localised_name = { "", { "mod-setting-name.empty" }, ' "', { "item-name.extended" }, " ",
            { "item-name." .. item }, '"' }
        localised_description = { "mod-setting-description.empty" }
    else
        localised_name = { "", { "mod-setting-name.multiplier" }, ' "', { "item-name.extended" }, " ",
            { "item-name." .. item }, '"' }
        localised_description = { "mod-setting-description.info" }
    end
    local template = {
        type = "int-setting",
        name = "-high-capacity",
        setting_type = "startup",
        default_value = 2,
        minimum_value = 1,
        maximum_value = 100,
        order = "z",
        hidden = false,
        localised_name = localised_name,
        localised_description = localised_description,
    }
    local export = template
    export.name = item .. export.name
    data:extend({ export })
end
