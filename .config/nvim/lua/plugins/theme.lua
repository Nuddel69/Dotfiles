return {
  -- add themes
  {
    "keremimo/noctalia.nvim",
    main = "noctalia",
    lazy = false,
    priority = 1000,
    opts = {
      palette_path = vim.fn.expand("~/.config/noctalia/colors.json"),
      transparent = true,
      auto_reload = true,
    },
  },
  {
    "shatur/neovim-ayu",
    setup = {
      overrides = {
        Normal = { bg = "None" },
        NormalFloat = { bg = "none" },
        ColorColumn = { bg = "None" },
        SignColumn = { bg = "None" },
        Folded = { bg = "None" },
        FoldColumn = { bg = "None" },
        CursorLine = { bg = "None" },
        CursorColumn = { bg = "None" },
        VertSplit = { bg = "None" },
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      transparent_mode = true,
    },
  },

  -- Configure LazyVim to load default
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "noctalia",
    },
  },
}
