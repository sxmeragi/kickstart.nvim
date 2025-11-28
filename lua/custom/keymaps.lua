vim.g.mapleader = ' '

vim.keymap.set('n', '<C-s>', ':w<CR>', { silent = true })

vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { silent = true })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<leader><leader>', function()
  vim.cmd 'so'
end)
