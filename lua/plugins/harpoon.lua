return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' },

  branch = 'harpoon2',
  opts = {
    menu = {
      width = vim.api.nvim_win_get_width(0) - 4,
    },
    settings = {
      save_on_toggle = true,
    },
  },
  keys = function()
    local harpoon = require 'harpoon'
    local keys = {
      {
        '<leader>a',
        function()
          require('harpoon'):list():add()
        end,
        desc = 'Harpoon add File',
      },
      {
        '<leader>h',
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'Harpoon Quick Menu',
      },
      {
        '<C-h>',
        function()
          harpoon:list():select(1)
        end,
        mode = { 'n' },
      },
      {
        '<C-j>',
        function()
          harpoon:list():select(2)
        end,
        mode = { 'n' },
      },
      {
        '<C-k>',
        function()
          harpoon:list():select(3)
        end,

        mode = { 'n' },
      },
      {
        '<C-l>',
        function()
          harpoon:list():select(4)
        end,
        mode = { 'n' },
      },
    }

    -- for i = 1, 5 do
    --   table.insert(keys, {
    --     '<leader>' .. i,
    --     function()
    --       require('harpoon'):list():select(i)
    --     end,
    --     desc = 'Harpoon to File ' .. i,
    --   })
    -- end
    return keys
  end,
}
