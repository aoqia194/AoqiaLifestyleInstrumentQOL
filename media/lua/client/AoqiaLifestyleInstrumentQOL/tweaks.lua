-- -------------------------------------------------------------------------- --
--                 Registers tweaks using the ItemTweakerAPI.                 --
-- -------------------------------------------------------------------------- --

local getScriptManager = getScriptManager

local mod_constants = require("AoqiaLifestyleInstrumentQOL/mod_constants")

local logger = mod_constants.LOGGER

-- ------------------------------ Module Start ------------------------------ --

local tweaks = {}

tweaks.attachment_types = {
    "BigWeapon",
    "BigBlade",
    "Racket",
    "Shovel",
    "Guitar",
    "GuitarAcoustic",
    "Pan",
    "Rifle",
    "Saucepan"
}

function tweaks.init()
    logger:debug("Applying tweaks...")

    local sb_opts = SandboxVars[mod_constants.MOD_ID]
    if sb_opts == nil then
        logger:error("Failed to laod sandbox options..")
        return
    end

    local attachment_type = tweaks.attachment_types[sb_opts.AttachmentType]

    local instruments = {
        "Base.Banjo",
        "Base.GuitarAcoustic",
        "Base.GuitarElectricBassBlack",
        "Base.GuitarElectricBassBlue",
        "Base.GuitarElectricBassRed",
        "Base.GuitarElectricBlack",
        "Base.GuitarElectricBlue",
        "Base.GuitarElectricRed",
        "Base.Keytar",
        "Base.Saxaphone",
        "Base.Trumpet",
        "Base.Violin"
    }

    local tweak_table = {}
    for _, item_id in ipairs(instruments) do
        tweak_table[item_id] = {
            ["AttachmentType"] = attachment_type
        }
    end

    local script_manager = getScriptManager()
    for item, data in pairs(tweak_table) do
        for prop, val in pairs(data) do
            local item = script_manager:getItem(item)
            if item ~= nil then
                item:DoParam(prop .. " = " .. val)
            end
        end
    end
end

return tweaks
