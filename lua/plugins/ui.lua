return {
  {
    'nvim-tree/nvim-web-devicons',
    opts = {
      override_by_filename = {
        -- Custom file extension for .env.testing
        ['.env.testing'] = {
          icon = '', -- Same as .env icon (or define a custom one)
          color = '#ebd517', -- Same color (or choose a new one)
          name = 'Env',
        },
        ['.env.template'] = {
          icon = '', -- Same as .env icon (or define a custom one)
          color = '#ebd517', -- Same color (or choose a new one)
          name = 'Env',
        },
        ['alembic.ini'] = {
          ['icon'] = '󱉋',
        },
      },
      override_by_extension = {
        ['gpx'] = {
          icon = '󰗀',
          color = '#898dd9',
          name = 'GPX',
        },
        ['proto'] = {
          icon = '',
          color = '#ffffff',
        },
      },
    },
  },
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    keys = {
      {
        '<C-e>',
        '<cmd>NvimTreeToggle<cr>',
        desc = '[E]xplorer NeoTree (cwd)',
      },
    },
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    opts = {
      view = {
        side = 'right',
        width = 30,
        preserve_window_proportions = true,
      },
      disable_netrw = true,
      -- hijack_cursor = true,
      -- sync_root_with_cwd = true,
      -- update_focused_file = {
      --   enable = true,
      --   update_root = false,
      -- },
      filters = { git_ignored = false, custom = { '__pycache__' } },
      renderer = {
        root_folder_label = false,
        indent_markers = { enable = true },
        highlight_git = true,
        icons = {
          show = { hidden = false },
          git_placement = 'after',
          glyphs = {
            git = {
              untracked = '',
              unstaged = '',
            },
          },
        },
      },
    },
  },
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      { 'tpope/vim-dadbod', lazy = true },
      { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
    },
    cmd = {
      'DBUI',
      'DBUIToggle',
      'DBUIAddConnection',
      'DBUIFindBuffer',
    },
    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
    end,
    keys = {
      -- {
      --
      --   '<leader>d',
      --   '<cmd>NvimTreeClose<cr><cmd>tabnew<cr><bar><bar><cmd>DBUI<cr>',
      --   desc = 'DBUI',
      -- },
    },
  },
}
