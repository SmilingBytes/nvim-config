-- require("my autocmds file") or just declare them here
-- require "custom.autocmds"
require "custom.options"

-- vim.cmd "silent! command! LazyGit lua require('lazygit.utils').project_root_dir()"

-- global config
vim.g.autosave = true
vim.g.python_host_prog = '/usr/bin/python3'
vim.g.python3_host_prog = '/usr/bin/python3'
vim.g.cursorhold_updatetime = 100
-- vim init
-- vim.cmd('source ~/.config/nvim/lua/custom/init.vim')
