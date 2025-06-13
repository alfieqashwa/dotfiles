return {
  -- {
  --   "saghen/blink.cmp",
  --   dependencies = { "sourcegraph/sg.nvim" },
  --   opts = function(_, opts)
  --     table.insert(opts.sources, 1, { name = "cody" })
  --   end,
  -- },
  {
    "sourcegraph/sg.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    opts = {
      enable_code = true, -- <-- Correct option name
    },
    build = "nvim -l build/init.lua",
    config = function()
      require("sg").setup({})
    end,
  },
}
