local utils = require('utils')

utils.opt('o', 'completeopt', 'menuone,noinsert,noselect')
vim.cmd [[set shortmess+=c]]
vim.g.completion_confirm_key = ""
vim.g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy'}
vim.g.diagnostic_enable_virtual_text = 1
vim.g.completion_enable_snippet = 'UltiSnips'
vim.g.completion_enable_auto_popup = 1

vim.g.completion_chain_complete_list = {
  default = {
    { complete_items = { 'lsp' } },
    { complete_items = { 'snippet' } },
    { complete_items = { 'path' } },
    { complete_items = { 'buffers' } },
    { mode = { '<c-p>' } },
    { mode = { '<c-n>' } }
  },
}

-- <Tab> to navigate the completion menu
utils.map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
utils.map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})

-- Ultisnips hot keys
vim.g.UltiSnipsExpandTrigger="<c-e>"
vim.g.UltiSnipsJumpForwardTrigger="<c-j>"
vim.g.UltiSnipsJumpBackwardTrigger="<c-k>"
