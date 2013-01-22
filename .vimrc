call pathogen#infect()

syntax enable

if has('gui_running')
	" set guioptions=egmrt
	colorscheme solarized
    " set background=light
	set background=dark
    set guifont=Droid\ Sans\ Mono:h16
else
    " colorscheme torte
    " set t_Co=256
    colorscheme 256-jungle-hack
    " set background=dark
    set background=light
    " colorscheme adrian
endif


set nocompatible        " not compatible with the old-fashion vi mode
set bs=2        " allow backspacing over everything in insert mode
set history=100     " keep 50 lines of command line history
set ruler       " show the cursor position all the time
set autoread        " auto read when file is changed from outside
set noerrorbells
set hidden              " Allow "hidden" buffers.
set nobomb              " remove UTF-8 bomb
set nocp
set cursorline

set nu
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ai

autocmd BufNewFile,BufRead *.R map <F5> <Esc>:w!<CR>:!R --no-save < %<CR>
autocmd BufNewFile,BufRead *.groovy map <F5> <Esc>:w!<CR>:!groovy %<CR>
autocmd BufNewFile,BufRead *.gradle map <F5> <Esc>:w!<CR>:!gradle -b %<CR>
autocmd BufNewFile,BufRead *.rst map <F5> <Esc>:w!<CR>:!make latex<CR>

nnoremap <silent> <F1> <Esc>:NERDTreeToggle<CR>
nnoremap <silent> <F2> <Esc>:w!<CR>
nnoremap <silent> <F3> <Esc>:tabp<CR>
nnoremap <silent> <F4> <Esc>:tabn<CR>
nnoremap <silent> <C-Left> <Esc>:tabp<CR>
nnoremap <silent> <C-Right> <Esc>:tabn<CR>
nnoremap <silent> <F7> <Esc><C-B>
nnoremap <silent> <F8> <Esc><C-D>


" use TAB for Makefile

autocmd FileType make setlocal noexpandtab

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...
" " let Vundle manage Vundle
Bundle 'gmarik/vundle'
" " origin repos on github
Bundle 'Townk/vim-autoclose'
Bundle 'vim-scripts/OmniCppComplete'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'ervandew/supertab'
Bundle 'majutsushi/tagbar'
"Bundle 'vim-scripts/YankRing.vim'
Bundle 'vim-scripts/VisIncr'
Bundle 'wincent/Command-T'
Bundle 'shawncplus/phpcomplete.vim'
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/snipmate-snippets'
Bundle 'pangloss/vim-javascript'
Bundle 'vim-scripts/nginx.vim'
Bundle 'guns/xterm-color-table.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'kchmck/vim-coffee-script'
Bundle 'othree/html5.vim'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'wookiehangover/jshint.vim'

" " origin repos on vim scripts
"Bundle 'showcolor'
"Bundle 'skammer/vim-css-color'


filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
"

" --- NERDTree ---
" \n toggles NERDTree 
nmap <leader>n :NERDTreeToggle<CR>
"let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeShowBookmarks=1
