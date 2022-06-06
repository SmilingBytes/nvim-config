local autocmd = vim.api.nvim_create_autocmd
-- local opt = vim.opt

autocmd("BufEnter", {
  callback = function()
    require('lazygit.utils').project_root_dir()
  end,
})

