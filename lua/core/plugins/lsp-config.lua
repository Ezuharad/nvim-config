return {
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',

    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = {
          'clangd', -- C and C++
          'lua_ls'  -- lua
        }
      })
    end
  },
  {
    'neovim/nvim-lspconfig',

    keys = {
      {'K', vim.lsp.buf.hover, noremap=true, silent=true, desc='show docs'},
      {'<leader>ld', vim.lsp.buf.definition, noremap=true, silent=true, desc='jump to definition'},
      {'<leader>la', vim.lsp.buf.code_action, noremap=true, silent=true, desc='show code actions'}
    },

    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require('lspconfig')

      local servers = {
        'clangd',   -- C and C++
        'lua_ls',   -- lua
        'marksman', -- markdown
        'pyright',  -- python
        'ruff_lsp', -- python
        'hls'       -- Haskell
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
