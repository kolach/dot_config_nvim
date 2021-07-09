vim.g.bubbly_palette = {
    background = "#34343c",
    foreground = "#c5cdd9",
    black = "#3e4249",
    red = "#ec7279",
    green = "#a0c980",
    yellow = "#deb974",
    blue = "#6cb6eb",
    purple = "#d38aea",
    cyan = "#5dbbc1",
    white = "#c5cdd9",
    lightgrey = "#57595e",
    darkgrey = "#404247",
}
-- 
-- vim.g.bubbly_filter = {
--   branch = {
--     'fern',
--   },
--   total_buffer_number = {
--     'fern',
--   },
--   path = {
--     'fern',
--   },
--   filetype = {
--     'fern',
--   },
-- }

vim.g.bubbly_statusline = {
    'mode',
    'branch',
    -- 'truncate',
    'path',
    'signify',
    'divisor',
    'builtinlsp.diagnostic_count',
    'builtinlsp.current_function',
    -- 'lsp_status.diagnostics',
    'lsp_status.messages',
    'total_buffer_number',
    'filetype',
    'progress'
}

vim.g.bubbly_symbols = {
    default = 'PANIC!',

    path = {
        readonly = 'RO',
        unmodifiable = '',
        modified = '+',
    },
    signify = {
        added = '+%s', -- requires 1 '%s'
        modified = '~%s', -- requires 1 '%s'
        removed = '-%s', -- requires 1 '%s'
    },
    coc = {
        error = 'E%s', -- requires 1 '%s'
        warning = 'W%s', -- requires 1 '%s'
    },
    builtinlsp = {
        diagnostic_count = {
            error = 'E%s', -- requires 1 '%s'
            warning = 'W%s', --requires 1 '%s'
        },
    },
    branch = ' %s', -- requires 1 '%s'
    total_buffer_number = '﬘ %s', --requires 1 '%d'
    lsp_status = {
        diagnostics = {
            error = 'E%d',
            warning = 'W%d',
            hint = 'H%d',
            info = 'I%d',
        },
    },
}
