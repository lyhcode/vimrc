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
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'

" origin repos on github
" Bundle 'vim-scripts/OmniCppComplete'
" Bundle 'mbbill/code_complete'
" Bundle 'vim-scripts/YankRing.vim'
" Bundle 'vim-scripts/VisIncr'
" Bundle 'shawncplus/phpcomplete.vim'
" Bundle 'pangloss/vim-javascript'
" Bundle 'vim-scripts/nginx.vim'
" Bundle 'guns/xterm-color-table.vim'
" Bundle 'tpope/vim-fugitive'
" Bundle 'tpope/vim-rails'
" Bundle 'kchmck/vim-coffee-script'
" Bundle 'wookiehangover/jshint.vim'

" origin repos on vim scripts
" Bundle 'showcolor'
" Bundle 'skammer/vim-css-color'


" " Color
"
" Bundle 'desert256.vim'
" Bundle 'Impact'
" Bundle 'matrix.vim'
" Bundle 'vibrantink'
" Bundle 'vividchalk.vim'
"
" " Ftplugin
" Bundle 'python_fold'
"
" " Plugin
" Bundle 'The-NERD-tree'
" Bundle 'AutoClose--Alves'
" Bundle 'auto_mkdir'
" Bundle 'cecutil'
" Bundle 'fcitx.vim'
" Bundle 'FencView.vim'
" "Bundle 'FuzzyFinder'
" Bundle 'jsbeautify'
" Bundle 'L9'
" Bundle 'Mark'
" Bundle 'matrix.vim'
" Bundle 'mru.vim'
" Bundle 'The-NERD-Commenter'
" "Bundle 'project.vim'
" Bundle 'restart.vim'
" Bundle 'taglist.vim'
" "Bundle 'templates.vim'
" "Bundle 'vimim.vim'
" Bundle 'css_color.vim'
" Bundle 'hallettj/jslint.vim'

" <TAB>
Bundle 'ervandew/supertab'

" The IndentAnything plugin is intended to make it easier to write new
" indentation scripts and/or supplement existing ones.  It makes the
" assumption that all indentable languages have similar characteristics: 
" - blocks of code or text over multiple lines 
" - continuation lines 
" - comments 
Bundle 'IndentAnything'

" Indent, Syntax support
"Bundle 'indent/html.vim'
Bundle 'Javascript-Indentation'
Bundle 'JavaScript-syntax'
"Bundle 'mako.vim'
"Bundle 'mako.vim--Torborg'
"Bundle 'python.vim--Vasiliev'
"Bundle 'gg/python.vim'
"Bundle 'asciidoc.vim'
"Bundle 'confluencewiki.vim'
"Bundle 'moin.vim'


" snipMate
" snipMate.vim aims to be an unobtrusive, concise vim script that implements
" some of TextMate's snippets features in Vim. A snippet is a piece of
" often-typed text that you can insert into your document using a trigger word
" followed by a <tab>. 
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/snipmate-snippets'
Bundle 'garbas/vim-snipmate'

" Modern Web Development
"Bundle 'html5.vim'
Bundle 'othree/html5.vim'
Bundle 'othree/html5-syntax.vim'
Bundle 'xml.vim'
"Bundle 'json.vim'
"Bundle 'css.vim'
"Bundle 'actionscript.vim'

" Command-T
" doc refet http://git.wincent.com/command-t.git/blob_plain/HEAD:/doc/command-t.txt
" use \ + t to seach a file
" after BundleInstall, install C extension first
" cd ~/.vim/bundle/command-t/ruby/command-t
" ruby extconf.rb
" make
" !!!done, if no compiler error
Bundle 'wincent/Command-T'
set wildignore+=*.class,.git,.hg,.svn,target/**

" ZenCoding
Bundle 'ZenCoding.vim'

" groovy, grails, grale support
au BufNewFile,BufRead *.gradle setf groovy

" Use tagbar instead of taglist
"Bundle 'taglist.vim'
"let s:tlist_def_groovy_settings = 'groovy;p:package;c:class;i:interface;f:function;v:variables'

" Tagbar, the Vim class outline viewer
Bundle 'majutsushi/tagbar'
" F8 hotkey to toggle tagbar window
nmap <F8> :TagbarToggle<CR>
let g:tagbar_left=1
let g:tagbar_autofocus=1
let g:tagbar_autoclose=1
" let tagbar support groovy, required ~/.ctags for groovy syntax
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

" an  auto-complete for  open-close pair  of  characters feature
Bundle 'Townk/vim-autoclose'

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

" ---------- EasyMotion ----------
Bundle 'Lokaltog/vim-easymotion'
"let g:EasyMotion_leader_key = '<Leader>m' " default is <Leader>w
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

" ---------- Powerline Statusbar ----------

" status line {
set laststatus=2
"set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \
"set statusline+=\ \ \ [%{&ff}/%Y]
"set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\
"set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L

" The ultimate statusline/prompt utility.
"Bundle 'Lokaltog/vim-powerline'
" Download patched fonts from
" - https://github.com/Lokaltog/powerline-fonts
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
let g:Powerline_theme="skwp"
let g:Powerline_colorscheme="skwp"
let g:Powerline_symbols = 'fancy'
let Powerline_theme="skwp"
let Powerline_colorscheme="skwp"
let Powerline_symbols = 'fancy'

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
" nnoremap <silent> <F7> <Esc><C-B>
" nnoremap <silent> <F8> <Esc><C-D>


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

