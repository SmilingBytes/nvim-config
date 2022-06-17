local M = {}

M.setup_lsp = function(attach, capabilities)

  local present, lsp_installer = pcall(require, "nvim-lsp-installer")

  if not present then
    return
  end

  local servers = { "sumneko_lua", "pyright", "clangd", "cssls", "eslint", "html", "jsonls", "lemminx", "sqlls", "zk" }
  require("nvim-lsp-installer").setup {
    -- ensure_installed = servers,
    automatic_installation = true
  }

  lsp_installer.settings {
    ui = {
      icons = {
        server_installed = "﫟" ,
        server_pending = "",
        server_uninstalled = "✗",
      },
    },
  }

  local lspconfig = require "lspconfig"

  for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
      on_attach = function(client, bufnr)
        attach(client, bufnr)
      end,
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          }
        }
      }
    }
  end
end

return M
