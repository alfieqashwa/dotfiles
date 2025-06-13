return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    name = "solarized-osaka",
    -- priority = 1000,
    opts = {
      transparent = true,
    },
  },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    -- priority = 1000,
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        fzf = true,
        grug_far = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        snacks = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
    specs = {
      {
        "akinsho/bufferline.nvim",
        optional = true,
        opts = function(_, opts)
          if (vim.g.colors_name or ""):find("catppuccin") then
            opts.highlights =
              require("catppuccin.groups.integrations.bufferline").get()
          end
        end,
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      transparent = true,
      style = "moon",
      -- styles = {
      --   sidebars = "transparent",
      --   floats = "transparent",
      -- },
    },
  },
  {
    "tiagovla/tokyodark.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      -- custom options here
      name = "tokyodark",
    },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine-moon",
    lazy = true, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,
    opts = {
      disable_background = true,
      disable_float_background = true,
      disable_italics = true,
      dim_inactive = {
        enabled = true,
        shade = "dark",
        percentage = 0.15,
        variant = "auto", -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,
        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },
        styles = {
          bold = true,
          italic = true,
          transparency = false,
        },
        groups = {
          border = "muted",
          link = "iris",
          panel = "surface",

          error = "love",
          hint = "iris",
          info = "foam",
          note = "pine",
          todo = "rose",
          warn = "gold",

          git_add = "foam",
          git_change = "rose",
          git_delete = "love",
          git_dirty = "rose",
          git_ignore = "muted",
          git_merge = "iris",
          git_rename = "pine",
          git_stage = "iris",
          git_text = "rose",
          git_untracked = "subtle",

          h1 = "iris",
          h2 = "foam",
          h3 = "rose",
          h4 = "gold",
          h5 = "pine",
          h6 = "foam",
        },
        palette = {
          -- Override the builtin palette per variant
          -- moon = {
          --     base = '#18191a',
          --     overlay = '#363738',
          -- },
        },

        -- NOTE: Highlight groups are extended (merged) by default. Disable this
        -- per group via `inherit = false`
        highlight_groups = {
          -- Comment = { fg = "foam" },
          -- StatusLine = { fg = "love", bg = "love", blend = 15 },
          -- VertSplit = { fg = "muted", bg = "muted" },
          -- Visual = { fg = "base", bg = "text", inherit = false },
        },
      },
      config = function()
        vim.cmd("colorscheme rose-pine")
      end,
    },
    {
      "projekt0n/github-nvim-theme",
      name = "github-theme",
      lazy = true, -- make sure we load this during startup if it is your main colorscheme
      priority = 1000, -- make sure to load this before all the other start plugins
      config = function()
        require("github-theme").setup({
          -- ...
        })
        vim.cmd("colorscheme github_dark")
      end,
    },
  },
}
