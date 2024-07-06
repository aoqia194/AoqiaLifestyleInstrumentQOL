-- -------------------------------------------------------------------------- --
--                 Registers tweaks using the ItemTweakerAPI.                 --
-- -------------------------------------------------------------------------- --

local getScriptManager = getScriptManager

local mod_constants = require("AoqiaLifestyleInstrumentQOL/mod_constants")

local logger = mod_constants.LOGGER

-- ------------------------------ Module Start ------------------------------ --

local tweaks = {}

function tweaks.init()
    logger:debug("Applying tweaks...")

    local tweak_table = {
        ["Base.Banjo"] = {
            ["AttachmentType"] = SandboxVars.AttachmentType,
        },
    }

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
