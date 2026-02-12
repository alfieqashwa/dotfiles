-- 1. Set leader keys FIRST
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 2. Load LazyVim / Plugins
require("config.lazy")

-- 3. Configuration for BOTH (VS Code & Terminal)
vim.keymap.set("i", "jk", "<Esc>:w<CR>", { desc = "Escape and Save" })

-- 4. VS Code SPECIFIC Configuration
if vim.g.vscode then
  -- File Explorer Toggle (One mapping is enough)
  vim.keymap.set(
    "n",
    "<leader>e",
    [[<cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>]]
  )

  -- Global Search (Find in Files)
  vim.keymap.set(
    "n",
    "<leader>/",
    [[<cmd>call VSCodeNotify('workbench.action.findInFiles')<CR>]]
  )

  -- Quick Open (Find Files)
  vim.keymap.set(
    "n",
    "<leader>ff",
    [[<cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>]]
  )

  -- Find in Current File
  vim.keymap.set(
    "n",
    "<leader>f",
    [[<cmd>call VSCodeNotify('actions.find')<CR>]]
  )

  -- Navigation between Sidebar and Editor (Matches your Ctrl+H/L request)
  vim.keymap.set(
    "n",
    "<C-h>",
    [[<cmd>call VSCodeNotify('workbench.action.focusSideBar')<CR>]]
  )
  vim.keymap.set(
    "n",
    "<C-l>",
    [[<cmd>call VSCodeNotify('workbench.action.focusActiveEditorGroup')<CR>]]
  )

  -- Clear search highlights
  vim.keymap.set("n", "<esc>", "<cmd>noh<cr>")

-- 5. TERMINAL ONLY Configuration (Fixes 'gd' and 'Ctrl+/')
else
  -- Map Ctrl + / to comment in Terminal (recognized as <C-_>)
  vim.keymap.set("n", "<C-_>", "gcc", { remap = true })
  vim.keymap.set("v", "<C-_>", "gc", { remap = true })
end
