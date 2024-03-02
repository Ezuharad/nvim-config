-- Haskell specific configuration
local setup_dap = function()
  local dap = require("dap")

  dap.adapters.haskell = {
    type = "executable",
    command = "haskell-debug-adapter",
    args = { "--hackage-version=0.0.33.0" },
  }

  dap.configurations.haskell = {
    {
      type = "haskell",
      request = "launch",
      name = "Debug",
      workspace = "${workspaceFolder}",
      startup = "${file}",
      stopOnEntry = true,
      logFile = vim.fn.stdpath("data") .. "/haskell-dap.log",
      logLevel = "TRACE",
      ghciEnv = vim.empty_dict(),

      -- ghci prompt options
      ghciPrompt = "λ: ",
      ghciInitialPrompt = "λ: ",
      ghciCmd = "stack ghci --test --no-load --no-build --main-is TARGET --ghci-options -fprint-evld-with-show",
    },
  }
end

setup_dap()
