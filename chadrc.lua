-- make sure you maintain the structure of `core/default_config.lua` here,
local M = {}

local override = require "custom.override"
local userPlugins = require "custom.plugins"

M.options = {
  user = function()
    require("custom.options")
  end,
}

M.plugins = {

  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
    statusline = {
      separator_style = "default", -- default/round/slant/block/arrow
    },
  },

  remove = {},

  override = {
    ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
    ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
    ["NvChad/nvim-colorizer.lua"] = override.colorizer,
    ["nvim-telescope/telescope.nvim"] = override.telescope,
    ["feline-nvim/feline.nvim"] = override.statusline,
    ["folke/which-key.nvim"] = override.whichkey,
    -- ["wbthomason/packer.nvim"] = { snapshot = "stable_chad" },
  },

  user = userPlugins,
}

M.mappings = require "custom.mappings"

M.ui = {
  theme = "onedark",
  transparency = false,
}

return M
