return {
  'andythigpen/nvim-coverage',
  config = function()
    local coverage = require 'coverage'
    coverage.setup {
      vim.api.nvim_set_keymap('n', '<leader>cc', ':CoverageToggle<CR>', { noremap = true, silent = true }),
    }
  end,
}
