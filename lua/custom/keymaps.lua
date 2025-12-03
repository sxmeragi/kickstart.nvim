vim.g.mapleader = ' '

-- normal mode save by pressing C-s
vim.keymap.set('n', '<C-s>', ':w<CR>', { silent = true })
-- Same but in insert mode(do i need this?)
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { silent = true })

-- Moving lines up and down in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Scroll with centred cursor
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
-- Find with centred cursor
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

--Copy in system buffer
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

--Delete without updating yank
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

--Replace text without buffer update
vim.keymap.set('x', '<leader>p', [["_dP]])

-- ESC in insert mode
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Turn off Q
vim.keymap.set('n', 'Q', '<nop>')

-- JAVA keymaps
vim.keymap.set('n', '<leader>rj', function()
  local file = vim.fn.expand '%:t'

  local classname = vim.fn.expand '%:r'

  vim.cmd 'w'
  vim.cmd('!javac ' .. file)
  vim.cmd('!java ' .. classname)
end, { desc = 'Run current Java file' })

--SO config
vim.keymap.set('n', '<leader><leader>', ':so<CR>')
