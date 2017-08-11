" ============ NeoMake ============

" Run Neomake at save and when reading a file
if has("autocmd")
  au bufwritepost * Neomake
  au bufread * Neomake
endif


"let g:neomake_scss_stylelint_maker= {
""            \ 'args': ['--no-color', '--format'],
""            \ 'errorformat': '%f: line %l\, col %c\, %m'
""            \ }

"let g:neomake_javascript_eslint_maker = {
""            \ 'args': ['--no-color', '--format'],
""            \ 'errorformat': '%f: line %l\, col %c\, %m'
""            \ }

let g:neomake_scss_enabled_makers = ['stylelint']
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']
let g:neomake_logfile = '/tmp/neomake.log'

