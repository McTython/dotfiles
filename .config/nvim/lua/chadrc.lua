-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "ayu_dark",
  transparency = true,
  nvdash = {
    load_on_startup = true,
    header = {
      "███╗   ███╗ █████╗ ██╗  ██╗██╗███╗   ███╗",
      "████╗ ████║██╔══██╗╚██╗██╔╝██║████╗ ████║",
      "██╔████╔██║███████║ ╚███╔╝ ██║██╔████╔██║",
      "██║╚██╔╝██║██╔══██║ ██╔██╗ ██║██║╚██╔╝██║",
      "██║ ╚═╝ ██║██║  ██║██╔╝ ██╗██║██║ ╚═╝ ██║",
      "╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝",
    },
  },

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}
M.mappings = {
  misc = function()
    vim.cmd "unmap s"
  end,
}
return M
