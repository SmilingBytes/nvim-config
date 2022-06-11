-- MAPPINGS
local M = {}

M.disabled = {
  n = {
    ["<leader>e"] = "",
    ["<leader>D"] = "",
    ["<leader>w"] = "",
    ["<leader>f"] = "",
  }
}

M.global = {
  n = {
    ["<leader>w"] = { "<cmd> w! <CR>", "   Save Buffer" },
    ["<C-q>"] = { "<cmd> q! <CR>", "   Close Buffer without Saving" },
    -- Resize with arrows
    ["<C-Up>"] = { "<cmd> resize -2 <CR>", "ﭕ   ^^" },
    ["<C-Down>"] = { "<cmd> resize +2 <CR>", "ﭕ   ~^" },
    ["<C-Left>"] = { "<cmd> vertical resize -2 <CR>", "ﭕ   <<" },
    ["<C-Right>"] = { "<cmd> vertical resize +2 <CR>", "ﭕ   >>" },
  },

  v = {
  },

}

-- Plugin Based Mappings

M.nvimtree = {
  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "   Explorer" },
  },
}

M.git = {
  n = {
    ["<leader>g"] = { "<cmd> Gitsigns show <CR>", "   Git"},
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "  LazyGit"},
    ["<leader>gb"] = { "<cmd> Gitsigns toggle_current_line_blame <CR>", "  Git Toggle Line Blame"},
    ["<leader>gB"] = { "<cmd> Gitsigns blame_line <CR>", "  Git Blame (Full)"},
    ["<leader>gd"] = { "<cmd> Gitsigns diffthis <CR>", "  Git Diff"},
    ["<leader>gx"] = { "<cmd> Gitsigns toggle_deleted <CR>", "  Git Toggle Deleted"},
  }
}

M.telescope = {
  n = {
    ["<leader>f"] = { "<cmd> Telescope live_grep <CR>", "   Find" },
    ["<leader>s"] = { "<cmd> Telescope live_grep <CR>", "   Live Search" },
    ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "  Find Files" },
    ["<leader>fp"] = { "<cmd> lua require'telescope'.extensions.project.project{} <CR>", "  Find Project" },
    ["<C-f>"] = { "<cmd> lua require'telescope.builtin'.grep_string(require('telescope.themes').get_ivy({ winblend = 10 })) <CR>", "   Find String" },
  },

  v = {
    ["<C-f>"] = { "<cmd> lua require'telescope.builtin'.grep_string(require('telescope.themes').get_dropdown({ winblend = 10 })) <CR>", "   Find String" },
  },

  i = {
    ["<C-f>"] = { "<cmd> lua require'telescope.builtin'.grep_string(require('telescope.themes').get_cursor({ winblend = 10 })) <CR>", "   Find String" },
  },
}

M.symbolsoutline = {
  n = {
    ["<leader>o"] = { "<cmd> SymbolsOutline <CR>", "   Symbols Outline" },
  },
}

M.hop = {
  n = {
    ["s"] = { "<cmd> lua require'hop'.hint_words() <CR>", "   Go There" },
    [","] = { "<cmd> lua require'hop'.hint_lines() <CR>", "   Go To Line" },
  },

  v = {
    ["s"] = { "<cmd> lua require'hop'.hint_words() <CR>", "   Go There" },
    [","] = { "<cmd> lua require'hop'.hint_lines() <CR>", "   Go To Line" },
  },

  i = {
    ["<A-s>"] = { "<ESC>:lua require'hop'.hint_words()<CR>", "   Go There" }
  }

}

M.packer = {
  n = {
    ["<leader>p"] = { "<cmd> PackerSync <CR>", "   Packer" },
    ["<leader>ps"] = { "<cmd> PackerSync <CR>", "痢  Sync" },
    ["<leader>pc"] = { "<cmd> PackerCompile <CR>", "ﰩ   Compile" },
    ["<leader>pi"] = { "<cmd> PackerInstall <CR>", "   Install" },
    ["<leader>pu"] = { "<cmd> PackerUpdate <CR>", "   Update" },
    ["<leader>pS"] = { "<cmd> PackerUpdate <CR>", "   Status" },
  }
}



-- -- Move text up and down
-- map("n", "<A-j>", "<Esc>:m .+1<CR>==gi")
-- map("n", "<A-k>", "<Esc>:m .-2<CR>==gi")
-- map("v", "<A-j>", ":m .+1<CR>==")
-- map("v", "<A-k>", ":m .-2<CR>==")
-- map("x", "<A-j>", ":move '>+1<CR>gv-gv")
-- map("x", "<A-k>", ":move '<-2<CR>gv-gv")
--
return M
