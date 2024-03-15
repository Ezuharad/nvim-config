return {
  {
    "williamboman/mason.nvim",

    config = function()
      require("mason").setup({
        ui = {
          border = "single",
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
    end,

    lazy = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",

    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls", -- lua
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",

    keys = {
      { "K",          vim.lsp.buf.hover,         noremap = true, silent = true, desc = "show docs" },
      { "<leader>jd", vim.lsp.buf.definition,    noremap = true, silent = true, desc = "jump to definition" },
      { "<leader>jr", vim.lsp.buf.references,    noremap = true, silent = true, desc = "jump to references" },
      { "<leader>ra", vim.lsp.buf.code_action,   noremap = true, silent = true, desc = "show code actions" },
      { "<leader>rn", vim.lsp.buf.rename,        noremap = true, silent = true, desc = "rename symbol" },
      { "<leader>xe", vim.diagnostic.open_float, noremap = true, silent = true, desc = "show selected errors" },
    },

    config = function()
      local servers = {
        "clangd", -- C and C++
        "cssls", -- CSS
        "lua_ls", -- lua
        "hls", -- Haskell
        "html", -- HTML
        "ltex", -- markdown and LaTeX
        -- "pyright", -- python
        "ruff_lsp",
        "rust_analyzer",
      }

      local handlers = {
        ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "single" }),
        ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "single" }),
      }

      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      -- attach lsps
      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup({
          -- on_attach = my_custom_on_attach,
          handlers = handlers,
          settings = {
            pyright = {
              autoImportCompletion = true,
            },
            python = {
              analysis = {
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
                useLibraryCodeForTypes = true,
                typeCheckingMode = "on",
              },
            },
          },
          capabilities = capabilities,
        })
      end

      -- Add border to the diagnostic popup window
      vim.diagnostic.config({
        virtual_text = {
          prefix = "■ ",
        },
        float = { border = "single" },
      })

      -- Add border to :LspInfo window
      require("lspconfig.ui.windows").default_options.border = "single"
    end,
  },
}
