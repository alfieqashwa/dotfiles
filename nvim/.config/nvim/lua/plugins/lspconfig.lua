return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      eslint = {},
      vtsls = {},
      -- rust_analyzer = { enabled = false },
    },
    -- We remove the setup block entirely to avoid
    -- calling on_attach functions that might be nil
    setup = {},
  },
}
