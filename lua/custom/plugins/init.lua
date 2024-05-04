-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Set foldmethod to 'expr' and foldexpr to 'nvim_treesitter#foldexpr()' for code folding using TreeSitter
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldcolumn = '0'
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

return {
  -- Buffer Navigation
  vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', { silent = true, noremap = true }),
  vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', { silent = true, noremap = true }),
  vim.api.nvim_set_keymap('n', '<leader>x', ':bd<CR>', { silent = true, noremap = true }),
}
