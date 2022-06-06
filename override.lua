-- overriding default plugin configs!
local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "python",
    "html",
    "css",
    "javascript",
    "json",
    "toml",
    "markdown",
    "c",
    "bash",
    "lua",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },
  view = {
    width = 30,
  },
}

M.gitsigns = {
  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
}

M.colorizer = {
  user_default_options = {
    names = true, -- "Name" codes like Blue
    RRGGBBAA = true, -- #RRGGBBAA hex codes
    css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
  },
}

M.statusline = {
  lsp_status = {
    provider = ""
  },

  current_line = {
    provider = "position"
  }

}

M.telescope = {
  extensions = {
    -- fd is needed
    media_files = {
      filetypes = { "png", "webp", "jpg", "jpeg" },
    },
  },
}

M.whichkey = {
  window = {
    border = "none", -- none, rounded, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 0, 0, 0, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 3, 4, 3, 4 }, -- extra window padding [top, right, bottom, left]
    winblend = 0,
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 30, max = 50 }, -- min and max width of the columns
    spacing = 10, -- spacing between columns
    align = "left", -- align columns left, center or right
  },
  ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
  show_help = true, -- show help message on the command line when the popup is visible
  triggers = "auto", -- automatically setup triggers
}

return M
