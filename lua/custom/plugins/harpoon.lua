return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    -- Keymaps
    -- Adds file to the harpoon mode
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)
    -- Opens harpoon list
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)
    --Selects 1st file
    vim.keymap.set('n', '<leader>1', function()
      harpoon:list():select(1)
    end)
    --selects 2nd file
    vim.keymap.set('n', '<leader>2', function()
      harpoon:list():select(2)
    end)
    --selects 3rd file
    vim.keymap.set('n', '<leader>3', function()
      harpoon:list():select(3)
    end)
    --selects 4th file
    vim.keymap.set('n', '<leader>4', function()
      harpoon:list():select(4)
    end)
  end,
}
