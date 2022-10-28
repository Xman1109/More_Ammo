local items = { "firearm-magazine", "piercing-rounds-magazine", "uranium-rounds-magazine", "shotgun-shell",
    "piercing-shotgun-shell", "he-rounds-magazine", "acid-rounds-magazine",
    "fire-rounds-magazine",
    "fmj-rounds-magazine",
    "sp-rounds-magazine",
    "tungsten-rounds-magazine", "uranium-shotgun-shell", "beryllium-rounds-magazine", "cryonite-rounds-magazine",
    "iridium-rounds-magazine", "naquium-rounds-magazine", "vulcanite-rounds-magazine" }

for _, item in pairs(items) do
    if data.raw["ammo"][item] ~= nil then
        local export = table.deepcopy(data.raw["ammo"][item])
        export.name = "high-capacity-" .. item
        export.magazine_size = export.magazine_size * settings.startup[item .. "-high-capacity"].value
        export.stack_size = 100
        export.icons = {
            {
                icon = export.icon,
                icon_size = export.icon_size,
                icon_mipmaps = export.icon_mipmaps,
            },
            {
                icon = Graphics .. "high-cap.png",
                icon_size = 64,
                icon_mipmaps = 4,
                shift = { -3, -3 },
            },
        }
        data:extend({ export })
    end
end
