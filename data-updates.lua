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

local items_dam = {
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
    "vulcanite-rounds-magazine" }

local function set_ammo_damage(ammo, amount)
    if not (ammo and ammo.ammo_type and ammo.ammo_type.action) then
        return false
    end

    local actions = ammo.ammo_type.action
    if actions.type then
        actions = { actions }
    end

    local changed = false
    for _, action in pairs(actions) do
        local deliveries = action.action_delivery
        if deliveries then
            if deliveries.type then
                deliveries = { deliveries }
            end

            for _, delivery in pairs(deliveries) do
                local effects = delivery.target_effects
                if effects then
                    if effects.type then
                        effects = { effects }
                    end

                    for _, effect in pairs(effects) do
                        if effect.damage then
                            effect.damage.amount = amount
                            changed = true
                        end
                    end
                end
            end
        end
    end

    return changed
end

-- Settings for damage of every magazine
for _, item in pairs(items_dam) do
    local ammo = data.raw.ammo[item]
    if ammo then
        local amount = settings.startup[item .. "-damage"].value
        if not set_ammo_damage(ammo, amount) then
            log("No damage found for " .. item)
        end
    end
end
