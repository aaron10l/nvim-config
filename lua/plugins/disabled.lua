return {
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()

      -- disable signature help in insert mode
      keys[#keys + 1] = { "<C-k>", false, mode = "i" }
    end,
  },
  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        signature = {
          auto_open = {
            enabled = false,
          },
        },
      },
    },
  }, -- This closing brace was missing
}
