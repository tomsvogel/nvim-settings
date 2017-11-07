" Starting from https://github.com/skwp/dotfiles/blob/master/vimrc and
" Tim Pope Vim Sensible https://github.com/tpope/vim-sensible the new
" setting file is more readable and more usable.

call plug#begin('~/.config/nvim/plugged')

" Languages and libraries
Plug 'JulesWang/css.vim'
Plug 'genoma/vim-less'
Plug 'othree/html5.vim'
" Plug 'leafgarland/typescript-vim'
" Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'ternjs/tern_for_vim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'ervandew/supertab'
Plug 'plasticboy/vim-markdown'
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'tpope/vim-haml'
Plug 'phpactor/phpactor'
Plug 'roxma/ncm-phpactor'
Plug 'mustache/vim-mustache-handlebars'
Plug 'evidens/vim-twig'
Plug 'Galooshi/vim-import-js'

" Utilities
" Plug 'Lokaltog/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
" Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-gtfo'
Plug 'icymind/NeoSolarized'
Plug 'Chiel92/vim-autoformat'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-repeat'
Plug 'brooth/far.vim'
Plug 'sbdchd/neoformat'
Plug 'Shougo/neocomplcache'
Plug 'Shougo/neosnippet'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'eugen0329/vim-esearch'
Plug 'saltstack/salt-vim'
Plug 'fatih/vim-go'
Plug 'jodosha/vim-godebug'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/neosnippet-snippets'
Plug 'jiangmiao/auto-pairs'
" Autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Deoplete addons
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neoinclude.vim'

" Linters
Plug 'neomake/neomake'
Plug 'benjie/neomake-local-eslint.vim'
" Sensible settings
Plug 'rstacruz/vim-opinion'

" color 
Plug 'rafi/awesome-vim-colorschemes'

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
