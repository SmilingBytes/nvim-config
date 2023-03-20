local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- overrde plugin configs
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = overrides.gitsigns,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- extend % key to find opening/closing brackets, tags
  {
    "andymass/vim-matchup",
    event = { "InsertEnter" },
  },

  -- add lezygit (git ui) into vim
  {
    "kdheepak/lazygit.nvim",
    cmd = { "LazyGit" },
  },

  -- find text or line queckly
  {
    "phaazon/hop.nvim",
    cmd = { "HopWord", "HopAnywhere", "HopLineStart" },
  },

  -- add multi-cusros on C-n (like vscode C-d)
  {
    "mg979/vim-visual-multi",
    event = { "InsertEnter" },
  },

  -- undotree for git like undo branches
  {
    "jiaoshijie/undotree",
    keys = {
      { "<leader>ut", "<cmd>lua require('undotree').toggle()<cr>", desc = "歷  UndoTree Toggle" },
    },
    config = function()
      require('undotree').setup()
    end,
    requires = {
      "nvim-lua/plenary.nvim",
    },
  },

  -- symbols outline like minimap+
  {
    "simrat39/symbols-outline.nvim",
    cmd = { "SymbolsOutline" },
    config = function()
      require("custom.configs.symbols-outline")
    end,
  },

  -- Auto linter and fixer
  {
    "dense-analysis/ale",
    cmd = { "ALEEnable", "ALEDetail", "ALEInfo", "ALEToggle", "ALELint", "ALEFix", "ALENext", "ALEPrevious", "ALEFixSuggest", "ALEDisable" },
  },

  -- telescope extensions
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    keys = {
      { "<leader>s", "<cmd>Telescope live_grep<cr>", desc = "   Live Search" },
    },
  },

  -- text animation game 
  {
    "eandrju/cellular-automaton.nvim",
    cmd = { "CellularAutomaton" },
  },

  -- disable snippet
  {
    "rafamadriz/friendly-snippets",
    enabled = false,
  },
  {
    "L3MON4D3/LuaSnip",
    enabled = false,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- Uncomment if you want to re-enable which-key
  -- {
  --   "folke/which-key.nvim",
  --   enabled = true,
  -- },
}

return plugins
