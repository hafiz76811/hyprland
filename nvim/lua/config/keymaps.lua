
vim.keymap.set('n', '<leader>w', '<cmd>w<cr>', { noremap = true }) -- saving files
vim.keymap.set('n', '<leader>q', '<cmd>q<cr>', { noremap = true }) -- exit without saving
vim.keymap.set('n', '<leader>wq', '<cmd>wq<cr>', { noremap = true }) -- save and exit

vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true }) -- exit from insert mode

vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true }) -- jump to the previous buffer
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true }) -- jump to the next buffer
vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { noremap = true, silent = true }) -- close the active buffer
