-- user plugin configs!
require "custom.plugins.hop"

-- user plugin init
return {

  -- disable dashboard
  ["goolord/alpha-nvim"] = {
    disable = true,
  },
  ["folke/which-key.nvim"] = {
    disable = false,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- null ls for lsp, diagnostics, code actions, formatting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

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

  -- Auto linter and fixer
  ["dense-analysis/ale"] = {},

  -- fix vim/nvim cusrorhold issue: -- Needed while issue https://github.com/neovim/neovim/issues/12587 is still open
  ["antoinemadec/FixCursorHold.nvim"] = {},
}
