local map = vim.keymap.set

local LazyVim = require 'lazyvim.util'

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
--
-- Move Lines
map('n', '<A-j>', '<cmd>m .+1<cr>==', { desc = 'Move Down' })
map('n', '<A-k>', '<cmd>m .-2<cr>==', { desc = 'Move Up' })
map('i', '<A-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move Down' })
map('i', '<A-k>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move Up' })
map('v', '<A-j>', ":m '>+1<cr>gv=gv", { desc = 'Move Down' })
map('v', '<A-k>', ":m '<-2<cr>gv=gv", { desc = 'Move Up' })

-- Select All
map('n', '<C-a>', 'gg<S-v>G')

-- Git
map('n', '<leader>gg', function()
  LazyVim.lazygit { cwd = LazyVim.root.git() }
end, { desc = 'Lazygit (Root Dir)' })

map('n', '<leader>gB', LazyVim.lazygit.browse, { desc = 'Git Browse' })
map('n', '<leader>gf', function()
  local git_path = vim.api.nvim_buf_get_name(0)
  LazyVim.lazygit { args = { '-f', vim.trim(git_path) } }
end, { desc = 'Lazygit Current File History' })

map('n', '<leader>gl', function()
  LazyVim.lazygit { args = { 'log' }, cwd = LazyVim.root.git() }
end, { desc = 'Lazygit Log' })

-- Terminal
local lazyterm = function()
  LazyVim.terminal(nil, { cwd = LazyVim.root() })
end

map('n', '<leader>ft', function()
  vim.fn.system 'zellij action toggle-floating-panes'
end, { desc = 'Terminal (Root Dir)' })
-- map('n', '<leader>ft', lazyterm, { desc = 'Terminal (Root Dir)' })
