nnoremap <leader>dd :TestNearest -strategy=jest<CR>
function! JestStrategy(cmd)
  let testName = matchlist(a:cmd, '\v -t ''(.*)''')[1]
  let fileName = matchlist(a:cmd, '\v'' -- (.*)$')[1]
  call luaeval("require'dbg.node'.debugJest([[" . testName . "]], [[" . "]])")
endfunction
let g:test#custom_strategies = {'jest': function('JestStrategy')}
