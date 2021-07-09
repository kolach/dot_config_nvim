" *****************************************************************************
" Toggle cursor column/line
" *****************************************************************************
nmap <C-C> :set cursorcolumn!<Bar>set cursorline!<CR>

" *****************************************************************************
" Line number toggler
" *****************************************************************************
" Set line numbers
nmap <C-L> :call ToggleNumber()<CR>

" toggle between number and relativenumber
function! ToggleNumber()
	if (&number == 1)
		if (&relativenumber != 1)
			set relativenumber
		else
			set norelativenumber
			set nonumber
		endif
	else
		set number
	endif
endfunc

