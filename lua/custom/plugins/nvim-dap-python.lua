return {
  'mfussenegger/nvim-dap-python',
  ft = 'python',
  dependencies = {
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',
  },
  config = function()
    local path = '~/.local/share/nvim/mason/packages/debugpy/venv/bin/python'
    -- local path = require('mason-registry').get_package('debugpy'):get_install_path()
    require('dap-python').setup(path)
    -- require('dap-python').test_runner = 'pytest'
  end,
}
