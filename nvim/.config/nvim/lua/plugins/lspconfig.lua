return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      eslint = {},
      vtsls = {},
    },
    -- We remove the setup block entirely to avoid
    -- calling on_attach functions that might be nil
    setup = {},
  },
}
