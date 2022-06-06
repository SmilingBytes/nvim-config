local options = {
  swapfile = false,                        -- creates a swapfile
  colorcolumn = '90',
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
