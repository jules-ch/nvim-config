return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'nvim-neotest/neotest-python',
      'nvim-neotest/neotest-plenary',
    },
    keys = {
      { '<leader>t', '', desc = '+test' },
      {
        '<leader>tt',
        function()
          require('neotest').run.run(vim.fn.expand '%')
        end,
        desc = 'Run File',
      },

      {
        '<leader>tT',
        function()
          require('neotest').run.run(vim.uv.cwd())
        end,
        desc = 'Run All Test Files',
      },
      {
        '<leader>tO',
        function()
          require('neotest').output_panel.toggle()
        end,
        desc = 'Toggle Output Panel',
      },
      {
        '<leader>ts',
        function()
          require('neotest').summary.toggle()
        end,
        desc = 'Toggle Summary',
      },
      {
        '<leader>tl',
        function()
          require('neotest').run.run_last()
        end,
        desc = 'Run Last',
      },
    },
    opts = {
      adapters = {},

      status = { virtual_text = true },
    },
    config = function(_, opts)
      local neotest = require 'neotest'
      opts.adapters = {
        require 'neotest-python' {

          dap = { justMyCode = false },
        },
        require 'neotest-plenary',
      }
      require('neotest').setup(opts)
      neotest.setup(opts)
    end,
  },
}
