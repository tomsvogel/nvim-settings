" ============ DEOPLETE ============
" " Omnicomplete on CTRL space
" Since iterm will inevitably send a <Nul> on CTRL-Space (because it's not a
" GUI app), we need to make sure that those <Nul> will be mapped to <C-Space>
" instead
inoremap <C-Space> <C-x><C-o>
imap <buffer> <Nul> <C-Space>
smap <buffer> <Nul> <C-Space>

augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=flowcomplete#Complete
  autocmd FileType php setlocal omnifunc=phpactor#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

" Enable auto-completion by default
let g:deoplete#enable_at_startup = 1

let g:deoplete#omni_patterns = {}
"let g:deoplete#omni_patterns.ocaml = '[^. *\t]\.\w*'

if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

" let g:deoplete#disable_auto_complete = 1
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" deoplete tab-complete
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
