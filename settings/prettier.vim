" let g:neoformat_try_formatprg = 1

function! neoformat#formatters#javascript#prettiereslint() abort
    return {
        \ 'exe': 'prettier-eslint',
        \ 'args': ['--stdin', '--print-width 120', '--single-quote', '--no-bracket-spacing','--jsx-bracket-same-line','--trailing-comma es5'],
        \ 'stdin': 1,
        \ }
endfunction

function! neoformat#formatters#javascript#prettier() abort
    return {
        \ 'exe': 'prettier',
        \ 'args': ['--stdin', '--print-width 120', '--single-quote', '--no-bracket-spacing','--jsx-bracket-same-line','--trailing-comma es5'],
        \ 'stdin': 1,
        \ }
endfunction

let g:neoformat_enabled_javascript = ['eslint', 'prettiereslint', 'prettier']

" augroup fmt
"   autocmd!
"   autocmd BufWritePre * undojoin | Neoformat
" augroup END

" let g:neoformat_verbose = 1

nmap <Leader>tt :Neoformat<CR>
