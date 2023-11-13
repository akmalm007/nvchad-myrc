---@type ChadrcConfig
local M = {}
M.ui = { 
  theme = 'catppuccin',
  nvdash = {
    header = {
    },
  },
}
M.plugins = 'custom.plugins'
M.mappings = require "custom.mappings" 
M.settings = require "custom.settings"
return M
