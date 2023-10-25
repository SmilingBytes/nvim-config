local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

require "custom.options"

-- global config
local g = vim.g

g.nvim_system_wide = 1 -- install the plugins system-wide.
g.autosave = true
g.python_host_prog = '/usr/bin/python3'
g.python3_host_prog = '/usr/bin/python3'
g.cursorhold_updatetime = 100

-- ALE configurations
g.ale_linters = {
  python = { 'flake8', 'bandit', 'mypy', 'pylint', 'pycln' }
}

g.ale_fixers = {
  ['*'] = { 'remove_trailing_lines', 'trim_whitespace' },
  javascript = { 'prettier', 'eslint' },
  python = { 'black', 'isort', 'autoimport', 'pycln', 'autoflake', 'add_blank_lines_for_python_control_statements' }
}

-- g.ale_fix_on_save = 1
g.ale_sign_column_always = 1
g.ale_completion_autoimport = 1

g.ale_echo_msg_error_str = 'E'
g.ale_echo_msg_warning_str = 'W'
g.ale_echo_msg_format = '[%linter%] %s [%severity%]'

g.ale_lint_on_text_changed = 'never'
g.ale_lint_on_insert_leave = 1
g.ale_lint_on_enter = 0


local api = vim.api

api.nvim_set_keymap('v', '<', '<gv', { noremap = true })
api.nvim_set_keymap('v', '>', '>gv', { noremap = true })

local fn = vim.fn
local o = vim.o

if fn.has('persistent_undo') == 1 then
  local target_path = fn.expand('~/.undodir')

  -- create the directory and any parent directories if the location does not exist
  if fn.isdirectory(target_path) == 0 then
    fn.mkdir(target_path, 'p', 0700)
  end

  o.undodir = target_path
  o.undofile = true
end

-- Enable persistent undo so that undo history persists across vim sessions
o.undofile = true
o.undodir = fn.expand('~/.undodir')
