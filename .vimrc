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
