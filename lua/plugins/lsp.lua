return {
-- mason
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
      ui = {
          icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗"
          }
      }
    })
    end
  },

  {
   "williamboman/mason-lspconfig.nvim",
   config = function()
     require("mason-lspconfig").setup({
     -- 确保安装，根据需要填写
     ensure_installed = {
       "lua_ls",
     },
   })
   end
  },
-- lsp索引
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      require("lspconfig").lua_ls.setup {
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              -- Get the language server to recognize the `vim` global
              globals = {'vim'},
            },
          },
        },
      }
      require'lspconfig'.pyright.setup{
        capabilities = capabilities,
      }
    end
  }
}
