" Starting from https://github.com/skwp/dotfiles/blob/master/vimrc and
" Tim Pope Vim Sensible https://github.com/tpope/vim-sensible the new
" setting file is more readable and more usable.

call plug#begin('~/.config/nvim/plugged')

" Languages and libraries
Plug 'JulesWang/css.vim'
Plug 'genoma/vim-less'
Plug 'kchmck/vim-coffee-script'
Plug 'othree/html5.vim'
Plug 'leafgarland/typescript-vim'
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'plasticboy/vim-markdown'
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-liquid'
Plug 'digitaltoad/vim-pug'
Plug 'dNitro/vim-pug-complete', { 'for': ['jade', 'pug'] }
Plug 'phpactor/phpactor'

" Utilities
Plug 'Lokaltog/vim-easymotion'
Plug 'Raimondi/delimitMate'
Plug 'mhinz/vim-signify'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'gcmt/wildfire.vim'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-gtfo'
Plug 'mattn/emmet-vim'
Plug 'icymind/NeoSolarized'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Chiel92/vim-autoformat'
Plug 'gabesoft/vim-ags'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-obsession'
Plug 'brooth/far.vim'
Plug 'sbdchd/neoformat'
Plug 'manasthakur/vim-commentor'

" Autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Deoplete addons
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neoinclude.vim'

" Linters
Plug 'neomake/neomake'

" Sensible settings
Plug 'rstacruz/vim-opinion'

" File navigation
Plug 'cloudhead/neovim-fuzzy'

call plug#end()

" ========================================

" Prepare sensible/opinion overrides
" runtime! plugin/sensible.vim
runtime! plugin/opinion.vim

for fpath in split(globpath('~/.config/nvim/settings/overrides', '*.vim'), '\n')
  exe 'source' fpath
endfor

" =============== Personalized Settings =============
for fpath in split(globpath('~/.config/nvim/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor
set clipboard=unnamed