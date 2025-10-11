return {
  {
    'ellisonleao/gruvbox.nvim',
    name = 'gruvbox',
    lazy = false,
    config = function()
      require("gruvbox").setup ({
        terminal_colors = true,
        --transparent_mode = false,
        --undercurl = true,
        underline = false,
        bold = false,
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          folds = false,
          operators = false,
        },
        palette_overrides = {
          dark0 = '#151515',
          dark0_hard = '#151515',
          dark1 = '#151515',
        --  --bright_orange = '#fbf1c7',
        },
        overrides = {
          CursorLine = { bg = '#2a2a2a' },
          Cursor = { bg = '#00ff33', fg = '#303030'},
          --Pmenu = { bg = '#252525' },
          --PmenuThumb = { bg = '#252525' },
          --PmenuSel = { bg = '#252525' },
          --PmenuSbar = { bg = '#252525' },
        },
      })
      --vim.cmd'colorscheme gruvbox'
    end,
  }
}
