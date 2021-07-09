local utils = require('utils')
local cmd = vim.cmd
local g = vim.g

utils.opt('o', 'termguicolors', true)
-- cmd 'colorscheme gruvbox-material'
cmd 'colorscheme solarized8'

-- Clear vertical split character
-- set fillchars+=vert:

cmd 'autocmd! VimEnter,ColorScheme * highlight VertSplit guibg=None'

g['airline_powerline_fonts'] = 1
g['airline_theme'] = 'cool'
g['nightshift'] = 1

-- cmd 'colorscheme doom-one'
-- g.doom_one_termina_colors = true
