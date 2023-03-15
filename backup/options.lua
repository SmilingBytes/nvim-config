local options = {
  swapfile = false,                        -- creates a swapfile
  colorcolumn = '90',
  foldmethod = "expr",
  foldexpr = "nvim_treesitter#foldexpr()",
  foldnestmax = 10,
  foldlevel = 9,
}

local opt = vim.opt

for k, v in pairs(options) do
  opt[k] = v
end

vim.g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
}
