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
        if item:find("shell") then
            export.localised_name = { "", { "item-name.extended_shell" }, " ", { "item-name." .. item } }
        elseif item:find("firearm") then
            export.localised_name = { "item-name.high-capacity-firearm-magazine" }
        elseif item:find("piercing") then
            export.localised_name = { "item-name.high-capacity-piercing-rounds-magazine" }
        elseif item:find("uranium") then
            export.localised_name = { "item-name.high-capacity-uranium-rounds-magazine" }
        else
            export.localised_name = { "", { "item-name.extended" }, " ", { "item-name." .. item } }
        end
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
        log(serpent.block(export))
        data:extend({ export })
    end
end
