-- source: https://github.com/LazyVim/LazyVim/issues/4740#issuecomment-2466169614

return {
  {
    "folke/snacks.nvim",
    opts = {
      terminal = {
        win = {
          position = "float",
          -- width = 0.9,
          height = 0.7,
          zindex = 50,
          wo = {
            spell = false,
            wrap = false,
            signcolumn = "yes",
            statuscolumn = " ",
            conceallevel = 3,
          },
        },
      },
    },
  },
}
-- return {
--   "akinsho/toggleterm.nvim",
--   config = true,
--   cmd = "ToggleTerm",
--   keys = { { "<C-t>", "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" } },
--   opts = {
--     open_mapping = [[<C-t>]],
--     direction = "float",
--     shade_filetypes = {},
--     hide_numbers = true,
--     insert_mappings = true,
--     terminal_mappings = true,
--     start_in_insert = true,
--     close_on_exit = true,
--   },
-- }
