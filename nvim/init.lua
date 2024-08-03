local opt = vim.opt
local g = vim.g
local map = vim.api.nvim_set_keymap

g.mapleader = ' '

opt.number = true
opt.showmatch = true

opt.swapfile = false
opt.hidden = true
opt.history = 100
opt.lazyredraw = true

opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

opt.spelllang = 'en_us'

map('n', ';', ':', { noremap = true, silent = true });
map('n', '<leader>;', ':Explore<CR>', { noremap = true, silent = true })
map('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
map('', 'j', 'gj', { silent = true })
map('', 'k', 'gk', { silent = true })
map('n', '<leader>sp', ':setlocal spell!<CR>', { silent = true })
map('n', '<leader>t', ':Term<CR>', { noremap = true })

require("config.lazy")

