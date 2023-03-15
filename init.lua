-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

require "custom.options"

-- global config
local g = vim.g
g.autosave = true
g.python_host_prog = '/usr/bin/python3'
g.python3_host_prog = '/usr/bin/python3'
g.cursorhold_updatetime = 100

