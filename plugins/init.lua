-- user plugin configs!
require "custom.plugins.hop"
require "custom.plugins.symbols-outline"


-- user plugin init
return {
  ["goolord/alpha-nvim"] = {
    disable = true,
  },
  ["windwp/nvim-ts-autotag"] = {
    ft = { "html", "javascriptreact" },
    after = "nvim-treesitter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("custom.plugins.null-ls").setup()
    end,
  },

  ["nvim-lualine/lualine.nvim"] = {},
  ["andymass/vim-matchup"] = {},
  ["simrat39/symbols-outline.nvim"] = {},
  ['nvim-telescope/telescope-fzf-native.nvim'] = {},
  ["nvim-telescope/telescope-project.nvim"] = {},
  ["kdheepak/lazygit.nvim"] = {},
  ['phaazon/hop.nvim'] = {},
  ['mg979/vim-visual-multi'] = {},
}
