local items = { "firearm-magazine",
    "piercing-rounds-magazine", "uranium-rounds-magazine", "acid-rounds-magazine",
    "fire-rounds-magazine", "fmj-rounds-magazine", "sp-rounds-magazine",
    "tungsten-rounds-magazine", "he-rounds-magazine", "shotgun-shell",
    "piercing-shotgun-shell", "uranium-shotgun-shell", "beryllium-rounds-magazine", "cryonite-rounds-magazine",
    "iridium-rounds-magazine", "naquium-rounds-magazine", "vulcanite-rounds-magazine" }

-- Settings for bullets per mag of every magazine
for _, item in pairs(items) do
    if data.raw.ammo[item] then
        log("Changing " ..
        item .. " to " .. settings.startup[item .. "-bullets-per-mag"].value .. " bullets per magazine")
        data.raw.ammo[item].magazine_size = settings.startup[item .. "-bullets-per-mag"].value
    end
end

local items_dam = { "acid-rounds-magazine",
    "fire-rounds-magazine", "fmj-rounds-magazine", "sp-rounds-magazine",
    "tungsten-rounds-magazine", "he-rounds-magazine", "uranium-shotgun-shell", "beryllium-rounds-magazine",
    "cryonite-rounds-magazine",
    "iridium-rounds-magazine", "naquium-rounds-magazine", "vulcanite-rounds-magazine" }

-- Settings for damage of every magazine
for _, item in pairs(items_dam) do
    log(item)
    log(settings.startup[item .. "-damage"].value)
    log(serpent.block(data.raw.ammo[item]))
    -- log(serpent.block(data.raw.ammo[item].ammo_type))
    if data.raw.ammo[item] then
        if data.raw.ammo[item].ammo_type.action.action_delivery.target_effects[1].damage then
            data.raw.ammo[item].ammo_type.action.action_delivery.target_effects[1].damage.amount = settings.startup
            [item .. "-damage"].value
        elseif data.raw.ammo[item].ammo_type.action.action_delivery.target_effects[2].damage then
            data.raw.ammo[item].ammo_type.action.action_delivery.target_effects[2].damage.amount = settings.startup
            [item .. "-damage"].value
        else
            log("No damage found for " .. item)
        end
    end
end
