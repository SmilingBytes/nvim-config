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
  view = {
    width = 30,
  },
  git = {
    enable = true,
  },
  renderer = {
    highlight_git = false,
    indent_markers = {
      enable = true,
    },
    icons = {
      show = {
        git = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "ﱮ",
          symlink = "",
          symlink_open = "",
          arrow_open = "",
          arrow_closed = "",
        },
        git = {
          -- icon to use:            ,
          unstaged = "",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
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
    provider = "",
  },

  current_line = {
    provider = "position",
  },
}

M.telescope = {

  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    },
    project = {
      base_dirs = {
        "~/odoo/custom_addons",
        { "~/odoo/custom_addons/mir_erp_11" },
        { "~/odoo/custom_addons/mis", max_depth = 4 },
        { path = "~/odoo/custom_addons/mir" },
        { path = "~/odoo/odoo15/addons", max_depth = 2 },
      },
      hidden_files = true, -- default: false
      theme = "dropdown",
    },
  },
  extensions_list = { "themes", "terms", "fzf", "project", "lazygit" },
}

M.whichkey = {
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = false, -- adds help for operators like d, y, ...
      motions = false, -- adds help for motions
      text_objects = false, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
    spelling = { enabled = true, suggestions = 20 }, -- use which-key for spelling hints
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "", -- symbol prepended to a group
  },

  -- window = {
  --   border = "single", -- none, single, double, shadow
  --   position = "bottom", -- bottom, top
  --   margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
  --   padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
  -- },
  -- layout = {
  --   height = { min = 4, max = 25 }, -- min and max height of the columns
  --   width = { min = 20, max = 50 }, -- min and max width of the columns
  --   spacing = 3, -- spacing between columns
  -- },
  layout = {
    spacing = 10, -- spacing between columns
  },
  ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
  show_help = true, -- show help message on the command line when the popup is visible
  triggers = "auto", -- automatically setup triggers
}

return M
