set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
if has('win32')
  set rtp+=$HOME/vimfiles/bundle/Vundle.vim
  call vundle#begin('$HOME/vimfiles/bundle/')
else
  set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
endif

Plugin 'VundleVim/Vundle.vim'
Plugin 'Blevs/vim-dzo'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

"config YouCompleteMe
if has('win32')
  let g:ycm_python_binary_path = 'C:\python36\python.exe'
else
  let g:ycm_python_binary_path = '/usr/bin/python3'
endif

let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
if has('win32')
  "let g:ycm_global_ycm_extra_conf = 'C:\Users\sven.langer.FOEHRENBACH\vimfiles\.ycm_extra_conf.py'
  let g:ycm_global_ycm_extra_conf = '~\vimfiles\.ycm_extra_conf.py'
else
  let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
endif
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

"config airline
"let g:airline_powerline_fonts = 1
"let g:Powerline_symbols = 'fancy'

autocmd BufNewFile, BufRead *.cc setfiletype cpp
set number
set autochdir
set ic
set backspace=2
set background=dark

let mapleader = "\\"

"Tabs default
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

"Tabs Python
autocmd BufNewFile,BufRead *.py set tabstop=4
autocmd BufNewFile,BufRead *.py set softtabstop=4
autocmd BufNewFile,BufRead *.py set shiftwidth=4

if has('gui_running')
  " GUI colors
  colorscheme dzo
else
  colorscheme evening
endif

syntax on
set foldmethod=syntax
set foldlevel=2
filetype indent plugin on
"set hlsearch
set ignorecase
set smartcase
set autoindent
set ruler
set splitright


"toolbar
set guioptions-=T
"menue
set guioptions-=m
"scrollbar right
set guioptions-=r
"scrollbar left
set guioptions-=L

"font
if has('win32')
  set guifont=Monaco:h11
else
  set guifont=Monaco\ 11
endif

"command! -nargs=0 -range=% Number <line1>,<line2>s/^\s*\zs/\=(line('.') - <line1>+1).'. '
"example: :Number "N%04d "
command! -nargs=1 -range=% Number <line1>,<line2>s/^/\=printf(<args>, line('.') - <line1>+1)
command! -nargs=0 -range=% Nonumber <line1>,<line2>s/^\s*\d*\s*/

if has('win32')
  autocmd BufNewFile,BufRead *.py nnoremap <F5> :w \| !python % 5<CR>
else
  autocmd BufNewFile,BufRead *.py nnoremap <F5> :w \| !python3 % 5<CR>
endif
nnoremap <F9> :YcmCompleter GetDoc<CR>

"Doxygen
command! Doxygen !doxygen ..\docu\doxyfile

