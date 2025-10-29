return {
  {
    'folke/tokyonight.nvim',
    name = 'tokyonight',
    priority = 1000,
    opts = {

      styles = {
        comments = { italic = false },
        keywords = { italic = false },
      },
      on_colors = function(colors)
        colors.bg = '#16161e'
      end,
    },
    config = function(_, opts)
      -- vim.g.tokyonight_italic_keywords = false
      -- vim.g.tokyonight_italic_comments = false
      -- vim.g.tokyonight_italic_functions = false
      --
      -- vim.g.tokyonight_italic_variables = false
      require('tokyonight').setup(opts)
      vim.cmd [[colorscheme tokyonight-night]]
    end,
  },
}
