-- -------------------------------------------------------------------------- --
--            Handles event stuff like registering listeners/hooks.           --
-- -------------------------------------------------------------------------- --

-- Vanilla Global Tables/Variables
local Events        = Events

-- My Mod Modules
local mod_constants = require("AoqiaLifestyleInstrumentQOL/mod_constants")
local tweaks        = require("AoqiaLifestyleInstrumentQOL/tweaks")

local logger        = mod_constants.LOGGER

-- ------------------------------ Module Start ------------------------------ --

local events        = {}

--- @param newGame boolean
function events.init_global_moddata(newGame)
    tweaks.init()
end

function events.register()
    logger:debug("Registering events...")

    Events.OnInitGlobalModData.Add(events.init_global_moddata)
end

return events
