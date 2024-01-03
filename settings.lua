data:extend(
    {
        {
            type = "bool-setting",
            name = "high-capacity-magazines",
            setting_type = "startup",
            default_value = true,
            order = "a"
        }
    },
    {
        {
        type = "bool-setting",
        name = "advanced-magazines",
        setting_type = "startup",
        default_value = true,
        order = "b"
        }
    },
    {
        {
            type = "bool-setting",
            name = "chemical-magazines",
            setting_type = "startup",
            default_value = true,
            order = "c"
        }
    },
    {
        {
            type = "bool-setting",
            name = "u238-slug-shell",
            setting_type = "startup",
            default_value = true,
            order = "d"
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

-- Settings for cost multiplier of high capacity magazines
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

-- Settings for bullets per mag of every magazine
local items_Sizes = {
    { "firearm-magazine",          10 },
    { "piercing-rounds-magazine",  10 },
    { "uranium-rounds-magazine",   10 },
    { "acid-rounds-magazine",      10 },
    { "fire-rounds-magazine",      10 },
    { "fmj-rounds-magazine",       5 },
    { "he-rounds-magazine",        5 },
    { "sp-rounds-magazine",        30 },
    { "tungsten-rounds-magazine",  10 },
    { "shotgun-shell",             10 },
    { "piercing-shotgun-shell",    10 },
    { "uranium-shotgun-shell",     10 },
    { "beryllium-rounds-magazine", 5 },
    { "cryonite-rounds-magazine",  5 },
    { "iridium-rounds-magazine",   5 },
    { "naquium-rounds-magazine",   5 },
    { "vulcanite-rounds-magazine", 5 } }

for _, item in ipairs(items_Sizes) do
    local localized_name = { "", { "mod-setting-name.BPM" }, "", { "item-name." .. item[1] } }
    local template = {
        type = "int-setting",
        name = "-bullets-per-mag",
        setting_type = "startup",
        default_value = item[2],
        minimum_value = 1,
        maximum_value = 100,
        order = "zz",
        hidden = false,
        localised_name = localized_name,
        -- localised_description = {},
    }
    local export = template
    export.name = item[1] .. export.name
    data:extend({ export })
end

--setting to change the damage of every magazine
local items_Damage = {
    { "firearm-magazine",          5 },
    { "piercing-rounds-magazine",  8 },
    { "uranium-rounds-magazine",   24 },
    { "acid-rounds-magazine",      6 },
    { "fire-rounds-magazine",      6 },
    { "fmj-rounds-magazine",       15 },
    { "he-rounds-magazine",        10 },
    { "sp-rounds-magazine",        10 },
    { "tungsten-rounds-magazine",  11 },
    { "shotgun-shell",             4 },
    { "piercing-shotgun-shell",    6 },
    { "uranium-shotgun-shell",     24 },
    { "beryllium-rounds-magazine", 19 },
    { "cryonite-rounds-magazine",  15 },
    { "iridium-rounds-magazine",   35 },
    { "naquium-rounds-magazine",   20 },
    { "vulcanite-rounds-magazine", 19 } }

for _, item in ipairs(items_Damage) do
    local localised_name = { "", { "mod-setting-name.damage" }, "", { "item-name." .. item[1] } }
    local template = {
        type = "int-setting",
        name = "-damage",
        setting_type = "startup",
        default_value = item[2],
        minimum_value = 1,
        maximum_value = 100,
        order = "zzz",
        hidden = false,
        localised_name = localised_name,
        -- localised_description = {},
    }
    local export = template
    export.name = item[1] .. export.name
    data:extend({ export })
end
