return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-neotest/neotest-python',
  },

  config = function()
    local neotest = require 'neotest'
    neotest.setup {
      adapters = {
        require 'neotest-python' {
          dap = { justMyCode = false },
        },
      },
    }

    vim.keymap.set('n', 'tr', neotest.run.run, { desc = 'Neotest: Run nearest test' })
    vim.keymap.set('n', 'to', neotest.summary.open, { desc = 'Neotest: Open summary window' })
    vim.keymap.set('n', 'tf', function()
      neotest.run.run(vim.fn.expand '%')
    end, { desc = 'Neotest: Run entire file' })
    vim.keymap.set('n', 'td', function()
      neotest.run.run { strategy = 'dap' }
    end, { desc = 'Neotest: Debug nearest test' })
    -- vim.keymap.set('n', 'tf', neotest.run.run{ desc = 'Neotest: Run file' })
  end,
}
