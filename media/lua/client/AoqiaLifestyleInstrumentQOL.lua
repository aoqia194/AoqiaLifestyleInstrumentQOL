-- -------------------------------------------------------------------------- --
--                      The main entry point for the mod.                     --
-- -------------------------------------------------------------------------- --

local events        = require("AoqiaLifestyleInstrumentQOL/events")
local mod_constants = require("AoqiaLifestyleInstrumentQOL/mod_constants")

local logger        = mod_constants.LOGGER

-- ------------------------------- Entrypoint ------------------------------- --

events.register()

logger:debug("Lua init done!")
