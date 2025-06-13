-- in plugins/sg-keys.lua
return {
  {
    "sourcegraph/sg.nvim",
    keys = {
      { "<leader>cc", vim.cmd.CodyChat, desc = "Start Cody Chat" },
      { "<leader>ca", vim.cmd.CodyAsk, desc = "Ask Cody about selection" },
      { "<leader>ct", vim.cmd.CodyToggle, desc = "Toggle Cody" },
    },
  },
}
