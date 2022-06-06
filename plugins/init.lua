-- user plugin configs!
require "custom.plugins.hop"


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
  ['nvim-telescope/telescope-fzf-native.nvim'] = {},
  ['phaazon/hop.nvim'] = {},
  ['mg979/vim-visual-multi'] = {},
  ["nvim-telescope/telescope.nvim"] = {
    requires = { { "nvim-lua/plenary.nvim" }, { "kdheepak/lazygit.nvim" } },
    config = function()
      require("telescope").load_extension("lazygit")
    end,
  }
}
