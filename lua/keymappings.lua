local utils = require('utils')

utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jk', '<Esc>')           -- jk to escape

utils.map('n', 'Q', ':q<CR>') -- Q to quit window

utils.map('n', '<C-w>-', ':split<CR>') -- Clear highlights
utils.map('n', '<C-w>\\', ':vsplit<CR>') -- Clear highlights


utils.map('n', '<C-x>1', ':only<CR>')
utils.map('n', '<C-x>2', ':vsplit<CR>')
utils.map('n', '<C-x>3', ':split<CR>')

--  kaymapping works but inlay hints don't
utils.map('n', '<Leader>T', ':lua require\'lsp_extensions\'.inlay_hints()<CR>')

-- nvim-tree.lua keys
utils.map('n', '<f2>', ':NvimTreeToggle<CR>')

utils.map('n', '<Leader>pp', ':lua require\'telescope\'.extensions.project.project{}<CR>')
