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
      transparent_background = false,
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
    lazy = false,
    priority = 1000,
    opts = {
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
    -- priority = 1000,
    opts = {
      -- custom options here
      transparent_background = false, -- set background to transparent
      gamma = 1.00, -- adjust the brightness of the theme
      styles = {
        comments = { italic = true }, -- style for comments
        keywords = { italic = true }, -- style for keywords
        identifiers = { italic = true }, -- style for identifiers
        functions = {}, -- style for functions
        variables = {}, -- style for variables
      },
      terminal_colors = true, -- enable terminal colors
    },
    config = function(_, opts)
      require("tokyodark").setup(opts) -- calling setup is optional
      vim.cmd([[colorscheme tokyodark]])
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine-moon",
    lazy = true, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,
    opts = {
      disable_background = false,
      disable_float_background = false,
      disable_italics = false,
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
          options = {
            -- Compiled file's destination location
            compile_path = vim.fn.stdpath("cache") .. "/github-theme",
            compile_file_suffix = "_compiled", -- Compiled file suffix
            hide_end_of_buffer = true, -- Hide the '~' character at the end of the buffer for a cleaner look
            hide_nc_statusline = true, -- Override the underline style for non-active statuslines
            transparent = false, -- Disable setting bg (make neovim's background transparent)
            terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
            dim_inactive = false, -- Non focused panes set to alternative background
            module_default = true, -- Default enable value for modules
            styles = { -- Style to be applied to different syntax groups
              comments = "italic",
              keywords = "bold",
              types = "italic,bold",
              functions = "NONE",
              variables = "NONE",
              conditionals = "NONE",
              constants = "NONE",
              numbers = "NONE",
              operators = "NONE",
              strings = "NONE",
            },
            inverse = { -- Inverse highlight for different types
              match_paren = false,
              visual = false,
              search = false,
            },
            darken = { -- Darken floating windows and sidebar-like windows
              floats = true,
              sidebars = {
                enable = true,
                list = {}, -- Apply dark background to specific windows
              },
            },
            modules = { -- List of various plugins and additional options
              -- ...
            },
          },
          palettes = {
            -- Everything defined under `all` will be applied to each style.
            all = {
              -- Each palette defines these colors:
              --   black, gray, blue, green, magenta, pink, red, white, yellow, cyan
              --
              -- These colors have 2 shades: base, and bright

              -- Passing a string sets the base
              red = "#ff0000",
            },
            github_dark = {
              -- Defining multiple shades is done by passing a table
              red = {
                base = "#8e1519",
                bright = "#ee0000",
              },
            },
            github_dark_dimmed = {
              -- A palette also defines the following:
              --   bg0, bg1, bg2, bg3, bg4, fg0, fg1, fg2, fg3, sel0, sel1, comment
              --
              -- These are the different foreground and background shades used by the theme.
              -- The base bg and fg is 1, 0 is normally the dark alternative. The others are
              -- incrementally lighter versions.
              bg1 = "#444c56",

              -- sel is different types of selection colors.
              sel0 = "#adbac7", -- Popup bg, visual selection bg
              sel1 = "#22272e", -- Popup sel bg, search bg

              -- comment is the definition of the comment color.
              comment = "#636e7b",
            },
          },
          specs = {
            -- As with palettes, the values defined under `all` will be applied to every style.
            all = {
              syntax = {
                -- Specs allow you to define a value using either a color or template. If the string does
                -- start with `#` the string will be used as the path of the palette table. Defining just
                -- a color uses the base version of that color.

                -- Adding either `.bright` will change the value
                -- conditional = "magenta.bright",
                number = "orange",
              },
              git = {
                -- A color define can also be used
                changed = "#ffa261",
              },
            },
            github_dark = {
              syntax = {
                -- As with palettes, a specific style's value will be used over the `all`'s value.
                operator = "orange",
              },
            },
          },
          groups = {
            -- As with specs and palettes, the values defined under `all` will be applied to every style.
            all = {
              -- If `link` is defined it will be applied over any other values defined
              Whitespace = { link = "Comment" },

              -- Specs are used for the template. Specs have their palette's as a field that can be accessed
              IncSearch = { bg = "palette.cyan" },
            },
            github_dark = {
              -- As with specs and palettes, a specific style's value will be used over the `all`'s value.
              PmenuSel = { bg = "#73daca", fg = "bg0" },
            },
          },
        })
        vim.cmd("colorscheme github_dark")
      end,
    },
  },
  {
    "thesimonho/kanagawa-paper.nvim",
    lazy = true,
    priority = 1000,
    init = function()
      vim.cmd.colorscheme("kanagawa-paper-ink")
    end,
    opts = { ... },
  },
}
