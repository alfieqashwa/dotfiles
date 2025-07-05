return {
  {
    "saghen/blink.cmp",
    dependencies = { "sourcegraph/sg.nvim" },
    opts = function(_, opts)
      table.insert(opts.sources, 1, { name = "cody" })
    end,
  },
  {
    "sourcegraph/sg.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("sg").setup({
        enable_cody = false, -- Enable Cody integration
        cody = {
          chat = {
            keymaps = {
              toggle = "<leader>ct", -- Keymap to toggle Cody chat
              ask = "<leader>ca", -- Keymap to ask Cody about selection
            },
          },
        },
        telescope = {
          mappings = {
            cody = {
              chat = "<leader>cc", -- Keymap to start Cody chat
            },
          },
        },
      })
    end,
  },
}
