return {
  "neovim/nvim-lspconfig",
  -- dependencies = { "saghen/blink.cmp" },
  priority = 1000,
  opts = {
    -- https://www.lazyvim.org/configuration/recipes#add-eslint-and-use-it-for-formatting
    servers = {
      eslint = {},
    },
    setup = {
      eslint = function()
        require("lazyvim.util").lsp.on_attach(function(client)
          if client.name == "eslint" then
            client.server_capabilities.documentFormattingProvider = true
          elseif client.name == "tsserver" then
            client.server_capabilities.documentFormattingProvider = false
          end
        end)
      end,
    },
    inlay_hints = { enabled = true },
  },
}
