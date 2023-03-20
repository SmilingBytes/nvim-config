---@type MappingsTable
local M = {}

M.disabled = {
  n = {
    ["<leader>e"] = "",
    ["<leader>D"] = "",
    ["<leader>wa"] = "",
    ["<leader>wk"] = "",
    ["<leader>wK"] = "",
    ["<leader>wl"] = "",
    ["<leader>wr"] = "",
    ["<leader>f"] = "",
    ["<leader>fa"] = "",
    ["<leader>q"] = "",
    ["<leader>gt"] = "",
    ["<leader>h"] = "",
    ["<leader>pt"] = "",
    ["<leader>ph"] = "",
  }
}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<leader>w"] = { "<cmd>w!<CR>", "   Save" },
    -- ["<leader>q"] = { "<cmd>q!<CR>", "  Quit" },
    ["<C-q>"] = { "<cmd> q! <CR>", "   Close without Saving" },
    -- Resize with arrows
    ["<C-Up>"] = { "<cmd> resize -2 <CR>", "ﭕ   ^^" },
    ["<C-Down>"] = { "<cmd> resize +2 <CR>", "ﭕ   ~^" },
    ["<C-Left>"] = { "<cmd> vertical resize -2 <CR>", "ﭕ   <<" },
    ["<C-Right>"] = { "<cmd> vertical resize +2 <CR>", "ﭕ   >>" },
    ["<leader>j"] = { "<cmd>CellularAutomaton make_it_rain<CR>", "   make it rain" },
    ["<leader>k"] = { "<cmd>CellularAutomaton game_of_life<CR>", "   game of life" },
  },
}

-- more keybinds!

-- Plugin Based Mappings
M.nvimtree = {
  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "   Explorer" },
  },
}

M.git = {
  n = {
    ["<leader>g"] = { "<cmd> Gitsigns show <CR>", "   Git"},
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "   LazyGit"},
    ["<leader>gl"] = { "<cmd> Gitsigns toggle_current_line_blame <CR>", "   Git Line Blame"},
    ["<leader>gL"] = { "<cmd> Gitsigns blame_line <CR>", "   Git Line Blame (Full)"},
    ["<leader>gd"] = { "<cmd> Gitsigns diffthis <CR>", "   Git Diff"},
    ["<leader>gx"] = { "<cmd> Gitsigns toggle_deleted <CR>", "   Git Toggle Deleted"},
    ["<leader>gj"] = { "<cmd>Gitsigns next_hunk<cr>", "怜  Next Hunk" },
    ["<leader>gk"] = { "<cmd>Gitsigns prev_hunk<cr>", "玲  Prev Hunk" },
    ["<leader>gp"] = { "<cmd>Gitsigns preview_hunk<cr>", "響  Preview Hunk" },
    ["<leader>gr"] = { "<cmd>Gitsigns reset_hunk<cr>", "   Reset Hunk" },
    ["<leader>gR"] = { "<cmd>Gitsigns reset_buffer<cr>", "社  Reset Buffer" },
    ["<leader>gs"] = { "<cmd>Gitsigns stage_hunk<cr>", "   Stage Hunk" },
    ["<leader>gu"] = { "<cmd>Gitsigns undo_stage_hunk<cr>", "碑  Undo Stage Hunk" },
    ["<leader>go"] = { "<cmd>Telescope git_status<cr>", "   Open changed file" },
    ["<leader>gb"] = { "<cmd>Telescope git_branches<cr>", "   Checkout branch" },
    ["<leader>gc"] = { "<cmd>Telescope git_commits<cr>", "   Checkout commit" },
    ["<leader>gC"] = { "<cmd>Telescope git_bcommits<cr>", "ﰙ   Checkout commit(for current file)" },
  }
}

M.telescope = {
  n = {
    ["<leader>s"] = { "<cmd> Telescope live_grep <CR>", "   Live Search" },
    ["<leader>f"] = { "<cmd> Telescope live_grep <CR>", "   Find" },
    -- ["<leader>s"] = { "<cmd> lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", "   Live Search" },
    ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "   Find Files" },
    ["<leader>fb"] = { "<cmd>Telescope git_branches<cr>", "   Checkout branch" },
    ["<leader>fc"] = { "<cmd>Telescope colorscheme<cr>", "   Colorscheme" },
    ["<leader>fh"] = { "<cmd>Telescope help_tags<cr>", "   Find Help" },
    ["<leader>fM"] = { "<cmd>Telescope man_pages<cr>", "ﲉ   Man Pages" },
    ["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "   Open Recent File" },
    ["<leader>fR"] = { "<cmd>Telescope registers<cr>", "   Registers" },
    ["<leader>ft"] = { "<cmd>Telescope live_grep<cr>", "   Text" },
    ["<leader>fk"] = { "<cmd>Telescope keymaps<cr>", "   Keymaps" },
    ["<leader>fC"] = { "<cmd>Telescope commands<cr>", "גּ   Commands" },
    ["<leader>fz"] = {
      "<cmd>lua require('telescope.builtin.internal').colorscheme({enable_preview = true})<cr>",
      "   Colorscheme with Preview",
    },

    ["<leader>fp"] = { "<cmd> lua require'telescope'.extensions.project.project{} <CR>", "   Find Project" },
    ["<C-f>"] = { "<cmd> lua require'telescope.builtin'.grep_string(require('telescope.themes').get_ivy({ winblend = 10 })) <CR>", "    Find String" },
  },

  v = {
    ["<C-f>"] = { "<cmd> lua require'telescope.builtin'.grep_string(require('telescope.themes').get_dropdown({ winblend = 10 })) <CR>", "   Find String" },
  },

  i = {
    ["<C-f>"] = { "<cmd> lua require'telescope.builtin'.grep_string(require('telescope.themes').get_cursor({ winblend = 10 })) <CR>", "   Find String" },
  },
}

M.lsp = {
  n = {

    ["<leader>l"] = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "   LSP" },
    ["<leader>ld"] = { "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "   Buffer Diagnostics" },
    ["<leader>lw"] = { "<cmd>Telescope diagnostics<cr>", "   Diagnostics" },
    ["<leader>lf"] = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "   Format" },
    ["<leader>li"] = { "<cmd>LspInfo<cr>", "   Info" },
    ["<leader>lI"] = { "<cmd>LspInstallInfo<cr>", "   Installer Info" },
    ["<leader>lj"] = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "   Next Diagnostic" },
    ["<leader>lk"] = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", "   Prev Diagnostic" },
    ["<leader>ll"] = { "<cmd>lua vim.lsp.codelens.run()<cr>", "   CodeLens Action" },
    ["<leader>lq"] = { "<cmd>lua vim.diagnostic.setloclist()<cr>", "   Quickfix" },
    ["<leader>lr"] = { "<cmd>lua vim.lsp.buf.rename()<cr>", "凜  Rename" },
    ["<leader>ls"] = { "<cmd>Telescope lsp_document_symbols<cr>", "   Document Symbols" },
    ["<leader>lS"] = { "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "歷  Workspace Symbols" },
    ["<leader>le"] = { "<cmd>Telescope quickfix<cr>", "   Telescope Quickfix" },
  }
}

M.ale = {
  n = {

    ["<leader>a"] = { "<cmd> ALEEnable <cr>", "   ALE" },
    ["<leader>at"] = { "<cmd> ALEToggle <cr>", "   ALE Toggle" },
    ["<leader>ai"] = { "<cmd> ALEInfo <cr>", "   ALE Info" },
    ["<leader>al"] = { "<cmd> ALELint <cr>", "   ALE Lint" },
    ["<leader>af"] = { "<cmd> ALEFix <cr>", "   ALE Fix" },
    ["<leader>aj"] = { "<cmd> ALENext <cr>", "   ALE Next" },
    ["<leader>ak"] = { "<cmd> ALEPrevious <cr>", "   ALE Prev" },
    ["<leader>ax"] = { "<cmd> ALEDisable <cr>", "   ALE Disable" },
    ["<leader>as"] = { "<cmd> ALEFixSuggest <cr>", "凜  ALE Fix Suggest" },
    ["<leader>ad"] = { "<cmd> ALEDetail <cr>", "   Details" },
  }
}

M.symbolsoutline = {
  n = {
    ["<leader>o"] = { "<cmd> SymbolsOutline <CR>", "識  Symbols Outline" },
  },
}

M.undotree = {
  n = {
    ["<leader>ut"] = { "<cmd>lua require('undotree').toggle()<cr>", "歷  UndoTree Toggle" },
  },
}

M.hop = {
  n = {
    ["s"] = { "<cmd>HopWord<CR>", "   Go There" },
    [","] = { "<cmd>HopLineStart<CR>", "   Go To Line" },
    ["<leader>h"] = { "<cmd>HopWord<CR>", "   Hop" },
    ["<leader>ha"] = { "<cmd>HopAnywhere<CR>", "   Anywhere" },
    ["<leader>hl"] = { "<cmd>HopLineStart<CR>", "   Line Start" },
    ["<leader>hw"] = { "<cmd>HopWord<CR>", "   Word" },
  },

  v = {
    ["s"] = { "<cmd> lua require'hop'.hint_words() <CR>", "   Go There" },
    [","] = { "<cmd> lua require'hop'.hint_lines() <CR>", "   Go To Line" },
  },

  i = {
    ["<A-s>"] = { "<ESC>:lua require'hop'.hint_words()<CR>", "   Go There" }
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
