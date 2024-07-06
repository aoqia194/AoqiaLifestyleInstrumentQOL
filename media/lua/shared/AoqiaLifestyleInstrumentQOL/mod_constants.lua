-- -------------------------------------------------------------------------- --
--                   Stores constants to be used everywhere.                  --
-- -------------------------------------------------------------------------- --

local logger = require("AoqiaZomboidUtils/logger")

-- ------------------------------ Module Start ------------------------------ --

local mod_constants = {}

mod_constants.MOD_ID = "AoqiaLifestyleInstrumentQOL"
mod_constants.MOD_VERSION = "1.0.0"

mod_constants.LOGGER = logger:new(mod_constants.MOD_ID)
print("mod id after creation: " .. mod_constants.LOGGER.MOD_ID)

return mod_constants
