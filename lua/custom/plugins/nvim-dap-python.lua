return {
  'mfussenegger/nvim-dap-python',
  ft = 'python',
  dependencies = {
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',
  },
  config = function()
    local path = '~/.local/share/nvim/mason/packages/debugpy/venv/bin/python'
    local dap_python = require 'dap-python'
    dap_python.setup(path)
    dap_python.test_runner = 'pytest'
    vim.keymap.set('n', '<leader>dt', function()
      dap_python.test_method()
    end, { desc = 'DAP-Python: Test Method' })
  end,
}
