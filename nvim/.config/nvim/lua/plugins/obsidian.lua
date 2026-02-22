return {
  "epwalsh/obsidian.nvim",
  version = "*", -- pakai versi terbaru
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "brain",
        path = "~/Code/personal/obsidian/brain",
      },
    },
    -- Atur agar saat bikin catatan baru, judulnya otomatis jadi nama file
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },
    -- WikiLinks [[ ]] tetap berfungsi
    preferred_link_style = "wiki",
  },
}
