return {
  {
    'williamboman/mason.nvim',

    config = function()
      require('mason').setup({
        ui = {
          border = 'single',
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
    'williamboman/mason-lspconfig.nvim',

    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = {
          'lua_ls' -- lua
        }
      })
    end
  },
  {
    'neovim/nvim-lspconfig',

    keys = {
      { 'K',          vim.lsp.buf.hover,       noremap = true, silent = true, desc = 'show docs' },
      { '<leader>jd', vim.lsp.buf.definition,  noremap = true, silent = true, desc = 'jump to definition' },
      { '<leader>jr', vim.lsp.buf.references,  noremap = true, silent = true, desc = 'jump to references' },
      { '<leader>ra', vim.lsp.buf.code_action, noremap = true, silent = true, desc = 'show code actions' },
      { '<leader>rn', vim.lsp.buf.rename,      noremap = true, silent = true, desc = 'rename symbol' }
    },

    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require('lspconfig')

      local servers = {
        'clangd',  -- C and C++
        'cssls',   -- CSS
        'lua_ls',  -- lua
        'ltex',    -- markdown and LaTeX
        'pyright', -- python
        'ruff_lsp',
        'hls',     -- Haskell
        'html',    -- HTML
      }

      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
          -- on_attach = my_custom_on_attach,
          settings = {
            pyright = {
              autoImportCompletion = true
            },
            python = {
              analysis = {
                autoSearchPaths = true,
                diagnosticMode = 'openFilesOnly',
                useLibraryCodeForTypes = true,
                typeCheckingMode = 'on'
              }
            }
          },
          capabilities = capabilities,
        }
      end
    end
  }
}
