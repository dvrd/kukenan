local util = require("kukenan.util")
local theme = require("kukenan.theme")
local config = require("kukenan.config")

local M = {}

---@param opts Config|nil
function M.load(opts)
  if opts then
    require("kukenan.config").extend(opts)
  end
  util.load(theme.setup())
end

M.setup = config.setup

-- keep for backward compatibility
M.colorscheme = M.load

return M
