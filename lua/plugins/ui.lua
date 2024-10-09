return {
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

  -- {
  --   'akinsho/bufferline.nvim',
  --   event = 'VeryLazy',
  --   keys = {
  --     { '<Tab>', '<Cmd>BufferLineCycleNext<CR>', desc = 'Next tab' },
  --     { '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', desc = 'Prev tab' },
  --   },
  --   opts = {
  --     options = {
  --       mode = 'buffers',
  --       -- always_show_bufferline = true,
  --       diagnostics = false,
  --       show_buffer_close_icons = true,
  --       show_close_icon = true,
  --
  --       offsets = {
  --         {
  --           filetype = 'NvimTree',
  --           -- highlight = 'Directory',
  --           text = 'File Explorer',
  --           text_align = 'left',
  --           separator = true,
  --         },
  --       },
  --       config = function(_, opts)
  --         require('bufferline').setup(opts)
  --         -- Fix bufferline when restoring a session
  --         vim.api.nvim_create_autocmd('BufAdd', {
  --           callback = function()
  --             vim.schedule(function()
  --               pcall(nvim_bufferline)
  --             end)
  --           end,
  --         })
  --       end,
  --     },
  --   },
  -- },
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
      {

        '<leader>d',
        '<cmd>NvimTreeClose<cr><cmd>tabnew<cr><bar><bar><cmd>DBUI<cr>',
        desc = 'DBUI',
      },
    },
  },
}
