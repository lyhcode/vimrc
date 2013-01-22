" call pathogen#infect()

set nocompatible        " not compatible with the old-fashion vi mode
set bs=2                " allow backspacing over everything in insert mode
set history=100         " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set autoread             " auto read when file is changed from outside
set noerrorbells
set hidden              " Allow "hidden" buffers.
set nobomb              " remove UTF-8 bomb
set nocp
set cursorline
set nu                  " show line numbers
set ai
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'

" origin repos on github
" Bundle 'Townk/vim-autoclose'
" Bundle 'vim-scripts/OmniCppComplete'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'Lokaltog/vim-powerline'
Bundle 'ervandew/supertab'
Bundle 'mbbill/code_complete'
" Bundle 'vim-scripts/YankRing.vim'
" Bundle 'vim-scripts/VisIncr'
Bundle 'wincent/Command-T'
" Bundle 'shawncplus/phpcomplete.vim'
" Bundle 'tomtom/tlib_vim'
" Bundle 'MarcWeber/vim-addon-mw-utils'
" Bundle 'garbas/vim-snipmate'
" Bundle 'honza/snipmate-snippets'
" Bundle 'pangloss/vim-javascript'
" Bundle 'vim-scripts/nginx.vim'
" Bundle 'guns/xterm-color-table.vim'
" Bundle 'tpope/vim-fugitive'
" Bundle 'tpope/vim-rails'
" Bundle 'kchmck/vim-coffee-script'
" Bundle 'othree/html5.vim'
" Bundle 'wookiehangover/jshint.vim'

" origin repos on vim scripts
" Bundle 'showcolor'
" Bundle 'skammer/vim-css-color'

" Bundle 'taglist.vim'
" let s:tlist_def_groovy_settings = 'groovy;p:package;c:class;i:interface;f:function;v:variables'
let g:tagbar_type_groovy = {
\ 'ctagstype' : 'groovy',
\ 'kinds' : [
\ 'p:package',
\ 'c:class',
\ 'i:interface',
\ 'f:function',
\ 'v:variables',
\ ]
\ }
let g:tagbar_left=1
let g:tagbar_autofocus=1
let g:tagbar_autoclose=1

" tagbar, please install ctags first before use
Bundle 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>


if !has('gui_running')
    Bundle 'scrooloose/nerdtree'
    Bundle 'jistr/vim-nerdtree-tabs'
endif

" Colors Solarized
Bundle 'altercation/vim-colors-solarized'

" VimRoom
" Bundle 'mikewest/vimroom'

syntax enable

if has('gui_running')
	colorscheme solarized
    set background=light
	" set background=dark
	"set guioptions=egmrt
	set guioptions-=M
	set guioptions-=T
    set guifont=Droid\ Sans\ Mono:h16
else
    " set t_Co=256
    colorscheme 256-jungle-black
    " set background=dark
    set background=light

    hi CursorLine guibg=#003853 ctermbg=17 gui=none cterm=none
    hi Comment ctermfg=darkcyan
    hi ColorColumn ctermbg=darkgray
    hi StatusLine ctermbg=19 ctermfg=white
    hi LineNr ctermfg=236 ctermbg=232

    set cc=80               " corlorcolumn
    set foldcolumn=2        " increase left margin 
    set numberwidth=6
endif

"---------- Preferences ----------

set clipboard=unnamed	" yank to the system register (*) by default
set showmatch		" Cursor shows matching ) and }
set showmode		" Show current mode
set wildchar=<TAB>	" start wild expansion in the command line using <TAB>
set wildmenu            " wild char completion menu

" ignore these files while expanding wild chars
set wildignore=*.o,*.class,*.pyc

set autoindent		" auto indentation ' set ai
set incsearch		" incremental search
set nobackup		" no *~ backup files
set copyindent		" copy the previous indentation on autoindenting
set ignorecase		" ignore case when searching
set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise
set smarttab		" insert tabs on the start of a line according to context

" TAB Page setting{
   set switchbuf=usetab
   "nmap <C-Tab> :tabn<CR>
   nmap <C-n> :tabn<CR>
   "nmap <C-S-Tab> :tabp<CR>
   nmap <C-p> :tabp<CR>
   nmap <C-t> :tabnew<CR>
"}

" TAB setting{
   set expandtab        "replace <TAB> with spaces
   set softtabstop=4 
   set shiftwidth=4 
   set tabstop=4
   set smarttab

   au FileType Makefile set noexpandtab
"}      							

" status line {
"set laststatus=2
"set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \
"set statusline+=\ \ \ [%{&ff}/%Y]
"set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\
"set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L

function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return '[PASTE]'
    else
        return ''
    endif
endfunction
"}

autocmd BufNewFile,BufRead *.R map <F5> <Esc>:w!<CR>:!R --no-save < %<CR>
autocmd BufNewFile,BufRead *.groovy map <F5> <Esc>:w!<CR>:!groovy %<CR>
autocmd BufNewFile,BufRead *.gradle map <F5> <Esc>:w!<CR>:!gradle -b %<CR>
autocmd BufNewFile,BufRead *.rst map <F5> <Esc>:w!<CR>:!make latex<CR>

" nnoremap <silent> <F1> <Esc>:NERDTreeToggle<CR>
nnoremap <silent> <F2> <Esc>:w!<CR>
nnoremap <silent> <F3> <Esc>:tabp<CR>
nnoremap <silent> <F4> <Esc>:tabn<CR>
nnoremap <silent> <C-Left> <Esc>:tabp<CR>
nnoremap <silent> <C-Right> <Esc>:tabn<CR>
nnoremap <silent> <F7> <Esc><C-B>
nnoremap <silent> <F8> <Esc><C-D>


" use TAB for Makefile

autocmd FileType make setlocal noexpandtab

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

"---------- NERDTree ----------
" \n toggles NERDTree 
" nmap <leader>n :NERDTreeToggle<CR>
" let g:nerdtree_tabs_open_on_console_startup=1
" let NERDTreeShowBookmarks=1

fun! BIG5_UTF8()
	set encoding=utf-8                                  
	set termencoding=big5
endfun

fun! UTF8()
	set encoding=utf-8                                  
	set termencoding=big5
	set fileencoding=utf-8
	set fileencodings=ucs-bom,big5,utf-8,latin1
endfun

fun! BIG5()
	set encoding=big5
	set fileencoding=big5
endfun

" 回到最後一次編輯時游標的位置
if has("autocmd")
    autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
endif

