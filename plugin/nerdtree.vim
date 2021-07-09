" *****************************************************************************
" " NERDTree
" " https://github.com/scrooloose/nerdtree
" "
" *****************************************************************************
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
" let g:NERDTreeDirArrowExpandable = ""
" let g:NERDTreeDirArrowCollapsible = ""

" Open a NERDTree automatically when vim starts up if no files were specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | end

" let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize=40

function! NERDTreeToggleInCurDir()
    if exists("g:NERDTree") && g:NERDTree.IsOpen()
        exe ":NERDTreeClose"
    else
        exe ":NERDTreeCWD"
    endif

  " " If NERDTree is open in the current buffer
  " if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
  "   " exe ":NERDTreeClose"
  " else
  "   exe ":NERDTreeCWD"
  "   if (expand("%:t") != '')
  "     exe ":NERDTreeFind"
  "   endif
  " endif
endfunction

map <F2> :call NERDTreeToggleInCurDir()<CR>
nmap ,n :NERDTreeFind<CR>

" Exclude this directories from tree view
let NERDTreeIgnore = ['node_modules', 'bower_components']

