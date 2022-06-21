-- user plugin configs!
require "custom.plugins.hop"
require "custom.plugins.symbols-outline"


-- user plugin init
return {

  -- disable dashboard
  ["goolord/alpha-nvim"] = {
    disable = true,
  },

  -- ["windwp/nvim-ts-autotag"] = {
  --   ft = { "html", "javascriptreact" },
  --   after = "nvim-treesitter",
  --   config = function()
  --     require("nvim-ts-autotag").setup()
  --   end,
  -- },

  -- null ls for lsp, diagnostics, code actions, formatting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("custom.plugins.null-ls").setup()
    end,
  },

  -- extend % key to find opening/closing brackets, tags
  ["andymass/vim-matchup"] = {},

  -- add tagbar and minimap
  ["simrat39/symbols-outline.nvim"] = {},

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
  ["jiaoshijie/undotree"] = {},

  -- Auto linter and fixer
  ["dense-analysis/ale"] = {},

  -- fix vim/nvim cusrorhold issue: -- Needed while issue https://github.com/neovim/neovim/issues/12587 is still open
  ["antoinemadec/FixCursorHold.nvim"] = {},
}
