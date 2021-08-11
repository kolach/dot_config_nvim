local utils = require('utils')

local cmd = vim.cmd
local indent = 4

cmd 'syntax enable'
cmd 'filetype plugin indent on'
utils.opt('b', 'expandtab', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'tabstop', indent)
utils.opt('o', 'hidden', true)
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'scrolloff', 4 )
utils.opt('o', 'shiftround', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'showcmd', true) -- show command in bottom bar
utils.opt('o', 'cursorline', true) -- highlight current line
utils.opt('o', 'wildmenu', true) -- visual autocomplete for command menu
utils.opt('o', 'wildmode', 'list:longest')
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('o', 'clipboard','unnamed,unnamedplus')
utils.opt('o', 'signcolumn','yes')
-- utils.opt('o', 'guifont', 'FiraCode Nerd Font:h16')
utils.opt('o', 'guifont', 'JetbrainsMono Nerd Font:h16,FiraCode Nerd Font:h16')
utils.opt('o', 'mouse', 'nicr')
utils.opt('o', 'mouse', 'a')
utils.opt('o', 'wrap', false)

-- This option forces vim to source .vimrc file if it present in working directory,
-- thus providing a place to store project-specific configuration
utils.opt('o', 'exrc', true)

-- This option will restrict usage of some commands in non-default .vimrc files;
-- commands that write to file or execute shell commands are not allowed and
-- map commands are displayed.
utils.opt('o', 'secure', true)

-- Highlight on yank
vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'
