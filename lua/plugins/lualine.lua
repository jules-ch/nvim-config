return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = "VeryLazy",
  opts = {
    options = {
      theme = 'auto',
      icons_enabled = true,
      disabled_filetypes = {
        'NvimTree',
      },
    },
    sections = {
      lualine_z = { 'location', { 'datetime', style = '%H:%M', icon = '󱑁', color = 'lualine_c_incactive' } },
    },
  },
}
