local overrides = require "custom.plugins.overrides"

require "custom.plugins.hop"
require("symbols-outline").setup()

return {

  -- ["goolord/alpha-nvim"] = { disable = false } -- enables dashboard

  -- Override plugin definition options
  ["folke/which-key.nvim"] = {
    disable = false,
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- ['sindrets/diffview.nvim'] = {},
  ['eandrju/cellular-automaton.nvim'] = {},

  -- overrde plugin configs
  ["NvChad/ui"] = {
    override_options = overrides.nvchad_ui,
  },
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  -- Install a plugin
  -- extend % key to find opening/closing brackets, tags
  ["andymass/vim-matchup"] = {},

  -- telescope extensions
  ["nvim-telescope/telescope-fzf-native.nvim"] = {},
  ["nvim-telescope/telescope-project.nvim"] = {},

  -- add lezygit (git ui) into vim
  ["kdheepak/lazygit.nvim"] = {},

  -- find text or line queckly
  ["phaazon/hop.nvim"] = {},

  -- add multi-cusros on C-n (like vscode C-d)
  ["mg979/vim-visual-multi"] = {},

  -- github copilot for AI auto complete
  -- ["github/copilot.vim"] = {},

  -- undotree for git like undo branches
  ["jiaoshijie/undotree"] = {
    config = function()
      require('undotree').setup()
    end,
    requires = {
      "nvim-lua/plenary.nvim",
    },
  },

  ["simrat39/symbols-outline.nvim"] = {
    config = function()
      require("symbols-outline").setup()
    end,

  },

  -- Auto linter and fixer
  ["dense-analysis/ale"] = {},

  -- fix vim/nvim cusrorhold issue: -- Needed while issue https://github.com/neovim/neovim/issues/12587 is still open
  ["antoinemadec/FixCursorHold.nvim"] = {},

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}
